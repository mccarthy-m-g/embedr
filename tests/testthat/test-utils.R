context("Source type")
library(embedr)

test_that("Character vector's elements have a URL scheme", {
  expect_true(is.url("https://github.com"))
  expect_false(is.url("Not a URL"))
  expect_equal(is.url(c("https://github.com", "https://github.com")),
               c(TRUE, TRUE))
  expect_equal(is.url(c("https://github.com", "Not a URL")),
               c(TRUE, FALSE))
})

test_that("Character vector points to an existing local file", {
  expect_true(is.local("dummy.R"))
  expect_error(is.local("Not a valid path"), "Please use a valid filepath")
  expect_error(is.local(c("Invalid", "dummy.R")), "Please use a valid filepath")
  expect_error(is.local(c("Invalid", "Invalid")), "Please use valid filepaths")
  expect_equal(is.local("www.xyz.com"), NULL)
})

test_that("Character vector points to URLs that respond without error", {
  expect_true(is.hosted("https://github.com"))
  expect_error(is.hosted("https://!.com"), "Please use a valid URL")
  expect_error(is.hosted(c("https://github.com", "https://!.com")),
               "Please use a valid URL")
  expect_error(is.hosted(c("https://!.com", "https://!.com")),
               "Please use valid URLs")
  expect_equal(is.hosted("dummy.R"), NULL)
})

test_that("Character vector ends with a valid audio extension", {
  expect_true(is.audio("file.mp3"))
  expect_error(is.audio("file.mp4"),
               "does not end with a valid audio file extension")
  expect_error(is.audio(c("file.mp3", "file.mp4")),
               "does not end with a valid audio file extension")
  expect_error(is.audio(c("file.mp4", "file.mp4")),
               "do not end with a valid audio file extension")
})

test_that("Character vector ends with a valid video extension", {
  expect_true(is.video("file.mp4"))
  expect_error(is.video("file.mp3"),
               "does not end with a valid video file extension")
  expect_error(is.video(c("file.mp4", "file.mp3")),
               "does not end with a valid video file extension")
  expect_error(is.video(c("file.mp3", "file.mp3")),
               "do not end with a valid video file extension")
})
