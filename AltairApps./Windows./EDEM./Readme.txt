Steps to execute the bat file
--------------------------------------
Prerequisites:User should download the Package file whichever is suitable to install from the Altair customer portal(if License manager installation is required user should download that also).

1). Create a new file with extension bat or copy the provided file to the machine where you want to execute the file.
2). Edit the bat file and change the following variable arguments as per your requirement.
    i. (line-8)set DOWNLOAD_DIR-->the directory where the package or zip file is downloaded.
   ii. (line-10)set PACKAGE-->the name of the Executable file for the application.
  iii. (line-12)set PACKAGE_LM-->the name of the License manager executable or package downloaded (if license manager is not required user can remove this command).
  
3). After doing the changes save the bat file and just by clicking on the file user can execute the script.


Note: If license  manager is not required user can remove or comment out the License manager install command at the end of the file(line-34).
