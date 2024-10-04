@echo off

REM Set the output directory
set OUTPUT_DIR=\log

REM Create output directory if it doesn't exist
if not exist "%OUTPUT_DIR%" (
    mkdir "%OUTPUT_DIR%"
)

REM Define the master script name
set MASTER_SCRIPT=Master_Tests.robot

REM Run the Robot Framework master script
robot --outputdir "%OUTPUT_DIR%" --loglevel DEBUG "%MASTER_SCRIPT%"

REM Check the exit status of the Robot Framework command
if %ERRORLEVEL% equ 0 (
    echo Test execution completed successfully.
) else (
    echo Test execution failed.
)
