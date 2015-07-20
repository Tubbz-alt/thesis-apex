@ECHO OFF

SET APEX_BIN="C:\Program Files (x86)\apex\bin\apex.exe"
SET EXPERIMENTS_ROOT=..\experiment\
SET EXPERIMENTS_FILES=FM-fm.apx FM-fc.apx FM-df.apx FM-SPL.apx

SET /P SUBJECT="Please enter your name: "

ECHO Running training phase...
START /W "" %APEX_BIN% -an "..\experiment\training.apx"

FOR %%G IN (%EXPERIMENTS_FILES%) DO (
    ECHO Running experiment %%G...
    START /W "" %APEX_BIN% "%EXPERIMENTS_ROOT%%%G"
)

START /W "" move_results_files.bat %SUBJECT%

EXIT
