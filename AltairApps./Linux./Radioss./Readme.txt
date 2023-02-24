Steps to execute the script
----------------------------
Prerequstes:i)User should download the Radioss Package file whichever is suitable to install from the Altair customer portal.
           ii)copy the installer.properties file to the directory where the Radioss executable package is downloaded.

1. Create a sh file in your terminal using "install.sh" and copy the script to that file and save it.
    or 
   Copy the install.sh file given to your terminal.

2. Give the user/group/others permission to execute the sh file by using the command "chmod +x install.sh"

3. Run the script file now by using the below command.
 
      "./scriptfilename.sh arg1 arg2 arg3 "

      Here user should input 3 arguments as per the correct order specified below
       arg1 = Name of the package downloaded or stored to install.
       arg2 = Directory where the Installation package is stored or downloaded along with property file.
       arg3 = Name of the property file

Example-->  ./install.sh "hwSolvers2022.1_linux64.bin" "/home" "installer.properties"

