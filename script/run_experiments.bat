@ECHO OFF

SET APEX_BIN="C:\Program Files (x86)\apex\bin\apex.exe"
SET EXPERIMENTS_ROOT=..\experiment\

ECHO Running training phase...
START /W "" %APEX_BIN% -an "..\experiment\training-1.apx"
START /W "" %APEX_BIN% -n "..\experiment\training-2.apx"

FOR %%G IN (%*) DO (
    ECHO Running experiment %%G...
    START /W "" %APEX_BIN% "%EXPERIMENTS_ROOT%%%G"
)

EXIT
