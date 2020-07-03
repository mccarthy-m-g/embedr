#' Check if URL exists
#'
#' Given a character string, returns a logical vector indicating
#' whether a request for a specific URL responds without error.
#'
#' @param x A character vector.
#' @return `TRUE` if the URL responds without error, otherwise `FALSE`.
url.exists <- function(x) {
  tryCatch(!httr::http_error(x), error=function(e) FALSE)
}

url.exists("https://!.com")
url.exists("https://www.google.com")
url.exists("https://www.netlify.com")
