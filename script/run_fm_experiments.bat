@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

SET EXPERIMENTS_FILES_1=FM-fm.apx FM-fc.apx FM-df.apx FM-fm.apx FM-SPL.apx
SET EXPERIMENTS_FILES_2=FM-fc.apx FM-df.apx FM-fm.apx FM-SPL.apx FM-fm.apx
SET EXPERIMENTS_FILES_3=FM-df.apx FM-fm.apx FM-SPL.apx FM-fm.apx FM-fc.apx
SET EXPERIMENTS_FILES_4=FM-SPL.apx FM-fm.apx FM-fc.apx FM-df.apx FM-fm.apx

SET /P CONDITION="Condition: "
SET /P ID="Id: "
CLS

START /W "" run_experiments.bat !EXPERIMENTS_FILES_%CONDITION%!
START /W "" move_results_files.bat %ID%

EXIT
