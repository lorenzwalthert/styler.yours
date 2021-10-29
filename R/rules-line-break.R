#' Force the assignment operator `=` when possible
#'
#' Because you can't determine from a nest with `<-` what the context is,
#' we need to do it from the parent.
#' @examplesIf rlang::is_installed("data.tree")
#' # identical
#' styler:::create_tree("x <- 2")
#' styler:::create_tree("c(x <- 2)")
#' @keywords internal
force_assignment_eq <- function(pd) {
  if (styler:::is_function_call(pd) ||
    isTRUE(pd$token[styler:::next_non_comment(pd, 0L)] == "'('")
  ) {
    return(pd)
  }
  pd$child[pd$token == "expr"] <- purrr::map(
    pd$child[pd$token == "expr"], function(pd_child) {
      to_replace <- pd_child$token == "LEFT_ASSIGN" & pd_child$text == "<-"
      if (any(to_replace)) {
        pd_child$token[to_replace] <- "EQ_ASSIGN"
        pd_child$text[to_replace] <- "="
      }
      pd_child
    }
  )
  pd
}
