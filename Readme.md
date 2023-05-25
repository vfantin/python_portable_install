# Build a standalone zip file
Install from the file python-3.11.0-amd64.exe in four easy steps to have a no-trace installation :-):  

## Customize installation !  

<img src=".\.md\Install_1.png" alt="First step" style="height: 406px; width:653px;"/>

## Remove all options !  

<img src=".\.md\Install_2.png" alt="First step" style="height: 406px; width:653px;"/>

## Remove all Advanced options and choose a path : C:\Users\fantv\AppData\Local\Programs\python_install\python311  

<img src=".\.md\Install_3.png" alt="Third step" style="height: 406px; width:653px;"/>

## Made a zip from python311 directory and you could use it everywhere !  

<img src=".\.md\Install_4.png" alt="Third step" style="height: 626; width:738;"/>

To check there is no reference to the account:  
Get-ChildItem -Path C:\Users\fantv\AppData\Local\Programs\python_install\python311\ -Recurse | Select-String -Pattern 'fantv'

## Uninstall !  

<img src=".\.md\Install_5.png" alt="Third step" style="height: 406px; width:653px;"/>
