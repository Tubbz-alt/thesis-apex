@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

SET EXPERIMENTS_FILES_1=AM-fm.apx AM-fc.apx AM-md.apx AM-SPL.apx
SET EXPERIMENTS_FILES_2=AM-fc.apx AM-md.apx AM-SPL.apx AM-fm.apx
SET EXPERIMENTS_FILES_3=AM-md.apx AM-SPL.apx AM-fm.apx AM-fc.apx
SET EXPERIMENTS_FILES_4=AM-SPL.apx AM-fm.apx AM-fc.apx AM-fm.apx

SET /P CONDITION="Enter condition: "
CLS

SET /P SUBJECT="Enter subject's name: "

START /W "" run_experiments.bat !EXPERIMENTS_FILES_%CONDITION%!
START /W "" move_results_files.bat %SUBJECT%

EXIT
