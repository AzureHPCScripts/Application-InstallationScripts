#Installation script for Ansys CFX
#------------------------------------------------------------------

set -e


#declaring the package downloaded and installation directory for the application installation

whoami > username

set DOWNLOAD_DIR="C:\Users\%username%\Desktop\FLUIDS"

set INSTALL_DIR="C:\Program Files\Ansys_cfx"

set PACKAGE=FLUIDS_2022R2_WINX64.zip

echo "Package: %PACKAGE%"


echo "Package directory: %DOWNLOAD_DIR%"


echo "Target installation directory: %INSTALL_DIR%"


#creating the installation directory
mkdir %INSTALL_DIR%

cd %DOWNLOAD_DIR%


#unzip of the zip package downloaded or stored"

echo "Unzip %PACKAGE%"

powershell -Command Expand-Archive -LiteralPath C:\Users\%username%\Desktop\FLUIDS\FLUIDS_2022R2_WINX64.zip -DestinationPath C:\Users\%username%\Desktop\FLUIDS\

echo "unzip is done"


echo "Installing cfx Apllication"

.\setup.exe -silent -install_dir %INSTALL_DIR% -cfx

echo "cfx application installed successfully"



echo "Installing License Manager"

.\setup.exe -silent -install_dir %INSTALL_DIR% -LM

echo "License Manager Installed"
