Steps to execute the script
----------------------------
Prerequstes:User should download the Package file i.e structures package file or structures & fluids combined package file whichever is suitable to install from the Ansys customer portal.

1. Create a sh file in your terminal using "vim ansys_rocky_install.sh" and copy the script to that file and save it.
    or 
   Copy the ansys_rocky_install.sh file given to your terminal.

2. Give the user/group/others permission to execute the sh file by using the command "chmod +x ansys_rocky_install.sh"

3. Run the script file now by using the below command.
 
      "./scriptfilename.sh arg1 arg2 arg3 "

      Here user should input 3 arguments as per the correct order specified below
       arg1 = Name of the package downloaded or stored to install.
       arg2 = Directory where the Installation package is stored or downloaded.
       arg3 = Installation directory as per user choice about where to install the application.

Example-->  ./ansys_rocky_install.sh "ROCKY_2022R2_LINX64.tgz" "/home" "/usr/ansys_inc"

NOTE:   Rocky is an Add on Package, so Any other Ansys application is to be there before installing this.
	
	If the License manager is not required the user can remove or comment out the License manager install command in the script file.

