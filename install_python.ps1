#wget https://raw.githubusercontent.com/vfantin/python_portable_install/master/python-3.11.0-amd64.zip -o python-3.11.0-amd64.zip
#Expand-Archive python-3.11.0-amd64.zip -DestinationPath .
#rm python-3.11.0-amd64.zip
.\python-3.11.0-amd64\python.exe -m venv venv
.\venv\Scripts\Activate.ps1
python --version
pip --version
python.exe -m pip install --upgrade pip
pip install -r .\requirements.txt
deactivate
