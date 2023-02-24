#Installation script for Altair EDEM
#------------------------------------------------------------------

set -e

#declaring the package downloaded and installation directory for the application installation

set DOWNLOAD_DIR=C:\Users\keyshot\Downloads

set PACKAGE=AltairEDEM2022.1_win64.exe

set PACKAGE_LM=altair_licensing_15.1.win64_x64.exe

echo "Downloaded directory: %DOWNLOAD_DIR%"

echo "PACKAGE Name: %PACKAGE%"

echo "PACKAGE_LM Name: $PACKAGE_LM%"



cd %DOWNLOAD_DIR%


echo "Installing EDEM Application"

.\%PACKAGE% -i silent -DACCEPT_EULA=YES

echo "EDEM installed successfully"


echo "Installing  License Manager"

.\%PACKAGE_LM% -i silent -DACCEPT_EULA=YES

echo "License manager is completely installed"
