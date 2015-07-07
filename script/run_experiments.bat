@ECHO OFF

SET APEX_BIN="C:\Program Files (x86)\apex\bin\apex.exe"

SET EXPERIMENTS_ROOT=..\experiment\
SET EXPERIMENTS_FILES=AM-fm.apx FM-fm.apx

SET /P SUBJECT="Please enter your name: "

ECHO Running training phase...
START /W "" %APEX_BIN% -an "..\experiment\training.apx"

FOR %%f IN (%EXPERIMENTS_FILES%) DO (
    ECHO Running experiment %%f...
    START /W "" %APEX_BIN% "%EXPERIMENTS_ROOT%%%f"
    PAUSE
)

START /W move_results_files.bat %SUBJECT%

EXIT

