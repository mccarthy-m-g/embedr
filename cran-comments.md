## Resubmission
This is a resubmission. In this version I have:

- Fixed the invalid author URL in `vignettes/embed-media.Rmd`.

- Attempted to reproduce 2 errors and 1 warning from CRAN teams' auto-check service r-devel-windows-ix86+x86_64 (arch 'i386' and 'x64') machine that occurred in my previous submission. I could not reproduce them in any of the test environments below, and believe they were false positives. 

## Test environments
- local OS X install, R devel
- local OS X install, R 3.6.0
- OS X 10.15.5 (GitHub Actions Runner), R 4.0.2
- Windows 10.0.17763 (GitHub Actions Runner), R devel
- Windows 10.0.17763 (GitHub Actions Runner), R 4.0.2
- Ubuntu 16.04.6 (GitHub Actions Runner), R 4.0.2
- win-builder (devel and release)
- R-hub builder (devel and release)

## R CMD check results
There were no ERRORS, WARNINGS, or NOTES.

## Downstream dependencies
There are currently no downstream dependencies for this package.
