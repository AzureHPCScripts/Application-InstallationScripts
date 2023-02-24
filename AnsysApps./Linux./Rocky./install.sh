#Installation script for Ansys Rocky application
# --------------------------------------------------------------


#!/bin/bash -v
set -e


#Setting the Local variables for installation

#PACKAGE means the name of the Executable package you have downloaded to install and the input for this is given as an 1st argument while running the script.

PACKAGE="$1"

#PACKAGE_DIR refers to the directory where the Package is downloaded or stored and the input for this is given as an 2nd argument while running the script.

PACKAGE_DIR="$2"

#INSTALL_DIR refers to the directory where the user wants to install the application and the input for this is given as an 3rd argument while running the script

INSTALL_DIR="$3"


echo "Name of the Package: $PACKAGE"

echo "Package directory: $PACKAGE_DIR"

echo "Installation directory : $INSTALL_DIR"
  

#creating the directory for installation of the application.

echo "Creating the $INSTALL_DIR"

sudo mkdir -p "$INSTALL_DIR"

echo "Installation directory is created"

# changing the working directory to the package directory

cd "$PACKAGE_DIR"

pwd


#Uncompressing the downloaded package before installation 

echo "Untar $PACKAGE"

tar -xvf ${PACKAGE}

echo "untar of $PACKAGE is successful"


#These are the some prerequisites required for installing Rocky Applcation on centos 8.1

#Note:Dependencies may vary betweeen different operating systems,take care of them.

echo "Installing Package Dependencies"

sudo dnf -y install mesa-libGLU

sudo dnf -y install motif

echo "package dependencies are installed"


#installing Rocky application with silent mode in the specified INSTALL_DIR

echo " Instaling Rocky Application has been started in $INSTALL_DIR"

./INSTALL -silent -install_dir $INSTALL_DIR -rocky -nohelp

echo "Ansys Rocky application is successfully installed"



#Installing the Ansys License manager

echo "Installing License Manager"

#If the user doesn't need a licence manager then they can remove or comment out the below command

./INSTALL -silent -LM -install_dir $INSTALL_DIR

echo "Installing License Manager is done successfully"
