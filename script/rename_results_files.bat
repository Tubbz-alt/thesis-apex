@ECHO OFF

ECHO "Renaming results files..."

SETLOCAL ENABLEDELAYEDEXPANSION

FOR %%G IN (..\result\*.apr) DO (
    SET EXPERIMENT_FILE=%%G
    MOVE %%G !EXPERIMENT_FILE:-results=!
)

EXIT
