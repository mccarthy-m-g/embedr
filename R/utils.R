### MAYBE I SHOULD ADD NAMES() WITHIN THE is.url, is.audio,
# is.video functions; and add the stop() error inside the,; so that I can specify as
# a variable which src inputs triggered the error

#' Match string for URL prefix
#'
is.url <- function(x) {
  grepl("www.|http://|https://|ftp://|file://", x)
}

#' Return strings without a URL scheme
#'
is.local <- function(x) {
  # check if paths have a URL scheme
  paths <- is.url(x)
  # name paths
  names(paths) <- x
  # remove paths with a URL scheme
  paths <- paths[(paths %in% FALSE)]
  # return path names without a URL scheme
  if (length(paths) == 0) {
    TRUE
  } else all(file.exists(names(paths)))
}

#' Return strings with a URL scheme
#'
is.hosted <- function(x) {
  # check if paths have a URL scheme
  paths <- is.url(x)
  # name paths
  names(paths) <- x
  # remove paths without a URL scheme
  paths <- paths[!(paths %in% FALSE)]
  # return path names with a URL scheme
  if (length(paths) == 0) {
    TRUE
  } else all(RCurl::url.exists(names(paths)))
}

#' Match string for audio suffix
#'
is.audio <- function(x) {
  all(grepl(".mp3|.ogg|.wav", x))
}

#' Match string for video suffix
#'
is.video <- function(x) {
  all(grepl(".mp4|.webm|.ogg", x))
}
