@ECHO OFF

SET APEX_BIN="C:\Program Files (x86)\apex\bin\apex.exe"
SET EXPERIMENTS_ROOT=..\experiment\
SET EXPERIMENTS_FILES=AM-fm.apx AM-fc.apx AM-md.apx AM-SPL.apx

SET /P SUBJECT="Please enter your name: "

ECHO Running training phase...
START /W "" %APEX_BIN% -an "..\experiment\AM-training.apx"
PAUSE

FOR %%G IN (%EXPERIMENTS_FILES%) DO (
    ECHO Running experiment %%G...
    START /W "" %APEX_BIN% "%EXPERIMENTS_ROOT%%%G"
    PAUSE
)

START /W "" move_results_files.bat %SUBJECT%

EXIT
