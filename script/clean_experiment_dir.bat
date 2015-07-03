@ECHO OFF
ECHO "Cleaning experiment directory..."

ECHO "Removing unneeded training results files..."
DEL "..\experiment\training*.apr"

ECHO "Moving experiment results files..."
MOVE "..\experiment\*.apr" "..\result"

EXIT

