@ECHO OFF

ECHO "Copying results files to personal folder..."

SETLOCAL ENABLEDELAYEDEXPANSION

FOR %%G IN (..\result\*.apr) DO (
    SET EXPERIMENT_FILE=%%G
    SET EXPERIMENT_FILENAME=!EXPERIMENT_FILE:~10!
    COPY %%G G:\docs\result\!EXPERIMENT_FILENAME!
)

EXIT
