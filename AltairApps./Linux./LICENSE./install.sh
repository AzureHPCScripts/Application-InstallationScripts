

#!/bin/bash -v
set -e


#Setting the Local variables for installation

#PACKAGE means the name of the LM Executable package you have downloaded to install and the input for this is given as an 1st argument while running the script.

LM_PACKAGE="$1"

#PACKAGE_DIR refers to the directory where the LM Package is downloaded or stored and the input for this is given as an 2nd argument while running the script.

PACKAGE_DIR="$2"

#Property_Filename refers to name of the lm property file and the input for this is given as an 3rd argument while running the script.

LM_Property_Filename="$3"


#changing working directory to package directory

cd $PACKAGE_DIR


#Installing the Altair License Manager by using the property response file in silent mode

echo "Altair LM Installation has been started"

./$LM_PACKAGE -i silent -f "$PACKAGE_DIR/$LM_Property_Filename" -DACCEPT_EULA=YES

echo "Altair LM apllication has been installed succeessfully"


