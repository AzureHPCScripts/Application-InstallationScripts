Steps to execute the script
----------------------------
Prerequstes:i)User should download the Acusolve Package file whichever is suitable to install from the Altair customer portal.
           ii)copy the installer.properties file to the directory where the Acusolve executable package is downloaded.

1. Create a sh file in your terminal using "Altair_Application.sh" and copy the script to that file and save it.
    or 
   Copy the Altair_Application.sh file given to your terminal.

2. Give the user/group/others permission to execute the sh file by using the command "chmod +x Altair_Application.sh"

3. Run the script file now by using the below command.
 
      "./Altair_Application.sh arg1 arg2 arg3 "

      Here user should input 3 arguments as per the correct order specified below
       arg1 = Name of the package downloaded or stored to install.
       arg2 = Directory where the Installation package is stored or downloaded along with property file.
       arg3 = Name of the property file

Example-->  ./Altair_Acusolve.sh "hwCFDSolvers2022.1_linux64.bin" "/home" "installer.properties"

