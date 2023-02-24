#Installation script for Ansys Rocky
#------------------------------------------------------------------

set -e


#declaring the package downloaded and installation directory for the application installation

whoami > username

set DOWNLOAD_DIR="C:\Users\%username%\Desktop\STRUCTURES"

set INSTALL_DIR="C:\Program Files\Ansys_Rocky"

set PACKAGE1=STRUCTURES_2022R2_WINX64.zip

set PACKAGE2=ROCKY_2022R2_WINX64.zip

echo "Package1: %PACKAGE1%"
echo "Package2: %PACKAGE2%"


echo "Package directory: %DOWNLOAD_DIR%"


echo "Target installation directory: %INSTALL_DIR%"


#creating the installation directory
mkdir %INSTALL_DIR%

cd %DOWNLOAD_DIR%


#unzip of the zip package downloaded or stored"

echo "Unzip %PACKAGE1%"

powershell -Command Expand-Archive -LiteralPath C:\Users\%username%\Desktop\STRUCTURES\STRUCTURES_2022R2_WINX64.zip -DestinationPath C:\Users\%username%\Desktop\STRUCTURES\

echo "unzip is done"

echo "Unzip %PACKAGE2%"

powershell -Command Expand-Archive -LiteralPath C:\Users\%username%\Desktop\STRUCTURES\ROCKY_2022R2_WINX64.zip -DestinationPath C:\Users\%username%\Desktop\STRUCTURES\

echo "unzip is done"


echo "Installing Ls-Dyna Apllication"

.\setup.exe -silent -install_dir %INSTALL_DIR% -lsdyna

echo "Ls-Dyna application installed successfully"



echo "Installing Rocky Apllication"

.\setup.exe -silent -install_dir %INSTALL_DIR% -rocky

echo "Rocky application installed successfully"



echo "Installing License Manager"

.\setup.exe -silent -install_dir %INSTALL_DIR% -LM

echo "License Manager Installed"
