
<!-- README.md is generated from README.Rmd. Please edit that file -->

# styler.putyourstyleguidehere

This is a GitHub template to create your own style guide.

TODO:

-   search for `putyourstyleguidehere_style` and replace it with the
    name of your style guide.

-   search for `putyourname` and put your name / email.

-   In `create_style_guide()`, ensure the `style_guide_name` matches the
    expected format, e.g. styler has
    `"styler::tidyverse_style@https://github.com/r-lib"`. See
    help(create\_style\_guide, package = “styler”)\` for details.

-   adapt the function `putyourstyleguidehere_style()` (the drop-in for
    `styler::tidyverse_style`) such that it does what you want

-   add tests.

For more info, see the [{styler}
documentation](https://styler.r-lib.org/dev/articles/distribute_custom_style_guides.html).

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/putyourstyleguidehere/styler.putyourstyleguidehere/workflows/R-CMD-check/badge.svg)](https://github.com/putyourstyleguidehere/styler.putyourstyleguidehere/actions)
<!-- badges: end -->

The goal of {styler.putyourstyleguidehere} is… It is a third-party style
guide for [{styler}](https://styler.r-lib.org).

## Installation

You can install the released version of {styler.putyourstyleguidehere}
from [GitHub](https://github.com) with:

``` r
remotes::install_github("putyourstyleguidehere/styler.putyourstyleguidehere")
```

## Example

This is a basic example of how to style code with it.

``` r
library(styler.putyourstyleguidehere)
cache_deactivate()
text <- "x <- 4
y = 3
a;
"

style_text(text)
```
