wget https://raw.githubusercontent.com/vfantin/python_portable_install/master/requirements.txt -o requirements.txt
wget https://raw.githubusercontent.com/vfantin/python_portable_install/master/cdpq_report-0.0.1.tar.gz -o cdpq_report-0.0.1.tar.gz
wget https://raw.githubusercontent.com/vfantin/python_portable_install/master/cdpq_utils-0.0.7.tar.gz -o cdpq_utils-0.0.7.tar.gz
.\venv\Scripts\Activate.ps1
pip install -r .\requirements.txt
pip freeze
rm requirements.txt
rm cdpq_report-0.0.1.tar.gz
rm cdpq_utils-0.0.7.tar.gz
deactivate
