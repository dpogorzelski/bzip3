@echo off
setlocal enabledelayedexpansion

REM Try to get git describe, suppress error output
for /f "delims=" %%i in ('git --no-pager describe --always --dirty 2^>nul') do set GIT_DESCRIBE=%%i

REM Check if git command was successful
if defined GIT_DESCRIBE (
    echo STABLE_BUILD_GIT_DESCRIBE !GIT_DESCRIBE!
) else (
    echo STABLE_BUILD_GIT_DESCRIBE unknown
)