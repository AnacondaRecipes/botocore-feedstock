@echo off
setlocal enabledelayedexpansion

rem Set the REQUESTS_CA_BUNDLE environment variable to the path of the cacert.pem file
rem Needed for the botocore package to use the correct CA bundle.
set "REQUESTS_CA_BUNDLE=%CONDA_PREFIX%\Library\ssl\cacert.pem"
if errorlevel 1 exit /b 1