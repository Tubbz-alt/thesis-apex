@ECHO OFF

SET APEX_BIN="C:\Program Files (x86)\apex\bin\apex.exe"

ECHO "Running training phase..."
START /W "" %APEX_BIN% -an "..\experiment\training.apx"

ECHO "Running AM-fm experiment..."
START /W "" %APEX_BIN% "..\experiment\AM-fm.apx"

ECHO "Running FM-fm experiment..."
START /W "" %APEX_BIN% "..\experiment\AM-fm.apx"

START /W clean_experiment_dir.bat

