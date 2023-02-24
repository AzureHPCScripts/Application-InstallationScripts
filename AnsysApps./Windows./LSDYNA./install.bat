#Installation script for Ansys Lsdyna
#------------------------------------------------------------------

set -e


#declaring the package downloaded and installation directory for the application installation

whoami > username

set DOWNLOAD_DIR="C:\Users\%username%\Desktop\STRUCTURES"

set INSTALL_DIR="C:\Program Files\Ansys_Lsdyna"

set PACKAGE=STRUCTURES_2022R2_WINX64.zip

echo "Package: %PACKAGE%"


echo "Package directory: %DOWNLOAD_DIR%"


echo "Target installation directory: %INSTALL_DIR%"


#creating the installation directory
mkdir %INSTALL_DIR%

cd %DOWNLOAD_DIR%


#unzip of the zip package downloaded or stored"

echo "Unzip %PACKAGE%"

powershell -Command Expand-Archive -LiteralPath C:\Users\%username%\Desktop\STRUCTURES\STRUCTURES_2022R2_WINX64.zip -DestinationPath C:\Users\%username%\Desktop\STRUCTURES\

echo "unzip is done"


echo "Installing Lsdyna Apllication"

.\setup.exe -silent -install_dir %INSTALL_DIR% -lsdyna

echo "lsdyna application installed successfully"



echo "Installing License Manager"

.\setup.exe -silent -install_dir %INSTALL_DIR% -LM

echo "License Manager Installed"
