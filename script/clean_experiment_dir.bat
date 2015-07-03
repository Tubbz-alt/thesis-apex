@ECHO OFF
ECHO "Cleaning experiment directory..."

ECHO "Removing unneeded training results files..."
DEL "..\experiment\fluctuation_strength\training*.apr"

ECHO "Moving experiment results files..."
MOVE "..\experiment\fluctuation_strength\*.apr" "..\result"

EXIT

