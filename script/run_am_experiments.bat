@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

SET EXPERIMENTS_FILES_1=AM-fm.apx AM-fc.apx AM-md.apx AM-fm.apx AM-SPL.apx
SET EXPERIMENTS_FILES_2=AM-fc.apx AM-md.apx AM-fm.apx AM-SPL.apx AM-fm.apx
SET EXPERIMENTS_FILES_3=AM-md.apx AM-fm.apx AM-SPL.apx AM-fm.apx AM-fc.apx
SET EXPERIMENTS_FILES_4=AM-SPL.apx AM-fm.apx AM-fc.apx AM-md.apx AM-fm.apx

SET /P CONDITION="Condition: "
SET /P ID="Id: "
CLS

START /W "" run_experiments.bat !EXPERIMENTS_FILES_%CONDITION%!
START /W "" move_results_files.bat %ID%
START /W "" rename_results_files.bat
START /W "" copy_results_files.bat

EXIT
