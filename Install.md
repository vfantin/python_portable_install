# Install on NAS - Trials and errors

As a developper I want to execute and manage my developpment from the NAS without installing something on the windows application server or computer's user !

cmd is old :-) and doesn't work with UNC path, so I prefer to do it with powershell !
I prepare a zip with a standalone python version, unzip it and after that install and update pip.  

Unzip python311_witout_pip.7z inside python311  
There is no pip in this installation, it's a standalone installation of python for windows.

pushd \\lacaisse.com\cdpq\ta\DRM\python\prod\

## Install pip

### Try one :  doesn't work

```
Command : .\python311\python.exe -m venv venv  because there is no pip module in this install ?!
Generate an error   
Error: Command '['\\\\lacaisse.com\\cdpq\\ta\\DRM\\python\\prod\\venv\\Scripts\\python.exe', '-Im', 'ensurepip', '--upgrade', '--default-pip']' returned non-zero exit status 3221225478.
```

### Try two : seems to work ... but in fact work only if the python install have pip inside at the beginning ... 
```
.\python311\python.exe -m venv --without-pip venv
.\venv\Scripts\Activate.ps1
python.exe -m ensurepip --upgrade
python.exe -m pip install --upgrade pip
```

### Try three: Work !! No error, No warning !!

```
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
.\python311\python.exe -m venv --without-pip venv
.\venv\Scripts\Activate.ps1
Get-Command python
python get-pip.py
Get-Command pip  
```


## Install packages one by one

```
.\venv\Scripts\Activate.ps1
pip install pyodbc
pip install matplotlib
pip install jinja2
pip install file:C:\Users\fantv\AppData\Local\Programs\python_project\cdpq_utils\dist\cdpq_utils-0.0.7.tar.gz
pip install file:C:\Users\fantv\AppData\Local\Programs\python_project\cdpq_report\dist\cdpq_report-0.0.1.tar.gz
```

## Install all packages

To have the list of requirements
```
pip freeze > requirements.txt
```

To build from this list of requirements
```
pip install -r requirements.txt
```