% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/re-export.R
\name{style_pkg}
\alias{style_pkg}
\title{Like \code{\link[styler:style_pkg]{styler::style_pkg()}}, but \code{style} defaulting to \code{putyourstyleguidehere_style}}
\usage{
style_pkg(
  pkg = ".",
  ...,
  style = putyourstyleguidehere_style,
  transformers = style(...),
  filetype = c("R", "Rprofile"),
  exclude_files = "R/RcppExports.R",
  exclude_dirs = c("packrat", "renv"),
  include_roxygen_examples = TRUE,
  base_indention = 0,
  dry = "off"
)
}
\arguments{
\item{pkg}{Path to a (subdirectory of an) R package.}

\item{...}{Arguments passed on to the \code{style} function,
see \code{\link[styler:tidyverse_style]{tidyverse_style()}} for the default argument.}

\item{style}{A function that creates a style guide to use, by default
\code{\link[styler]{tidyverse_style}}. Not used
further except to construct the argument \code{transformers}. See
\code{\link[styler:style_guides]{style_guides()}} for details.}

\item{transformers}{A set of transformer functions. This argument is most
conveniently constructed via the \code{style} argument and \code{...}. See
'Examples'.}

\item{filetype}{Vector of file extensions indicating which file types should
be styled. Case is ignored, and the \code{.} is optional, e.g. \code{c(".R",".Rmd")},
or \code{c("r", "rmd")}. Supported values (after standardization) are:
"qmd", "r", "rmd", "rmarkdown", "rnw", and "rprofile".
Rmarkdown is treated as Rmd.}

\item{exclude_files}{Character vector with regular expressions to files
that should be excluded from styling.}

\item{exclude_dirs}{Character vector with directories to exclude
(recursively). Note that the default values were set for consistency with
\code{\link[styler:style_dir]{style_dir()}} and as these directories are anyways not styled.}

\item{include_roxygen_examples}{Whether or not to style code in roxygen
examples.}

\item{base_indention}{Integer scalar indicating by how many spaces the whole
output text should be indented. Note that this is not the same as splitting
by line and add a \code{base_indention} spaces before the code in the case
multi-line strings are present. See 'Examples'.}

\item{dry}{To indicate whether styler should run in \emph{dry} mode, i.e. refrain
from writing back to files .\code{"on"} and \code{"fail"} both don't write back, the
latter returns an error if the input code is not identical to the result
of styling. "off", the default, writes back if the input and output of
styling are not identical.}
}
\description{
See \code{\link[styler:style_pkg]{styler::style_pkg()}} for details, examples and more.
}
