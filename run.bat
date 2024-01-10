@REM install python
@echo off
set installer_url=https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe
set install_dir=C:\Python311
echo Downloading Python installer...
curl -o python_installer.exe %installer_url%
echo Installing Python...
start /wait python_installer.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
echo Cleaning up...
del python_installer.exe
echo Python installation complete.

@REM install pip
@echo off
set installer_url=https://bootstrap.pypa.io/get-pip.py
echo Downloading pip installer...
curl -o get-pip.py %installer_url%
echo Installing pip...
python get-pip.py
echo Cleaning up...
del get-pip.py
echo pip installation complete.

pip install -r requirements.txt
pytest test_file.py