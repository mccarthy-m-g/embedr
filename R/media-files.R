#' Example Media Files
#'
#' Example media files included with embedr.
#'
#'  - `mp3`: MP3 audio
#'  - `mp4`: MP4 video
#'  - `png` : PNG thumbnail
#'
#' @rdname media-files
#' @name media-files
#' @aliases mp3 mp4 png
#' @export mp3 mp4 png
delayedAssign('mp3', system.file("media", "audio-vignette.mp3", package = "embedr"))
delayedAssign('mp4', system.file("media", "video-vignette.mp4", package = "embedr"))
delayedAssign('png', system.file("media", "thumbnail-vignette.png", package = "embedr"))
