@REM install python
@REM @echo off
@REM set installer_url=https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe
@REM set install_dir=C:\Python311
@REM echo Downloading Python installer...
@REM curl -o python_installer.exe %installer_url%
@REM echo Installing Python...
@REM start /wait python_installer.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
@REM echo Cleaning up...
@REM del python_installer.exe
@REM echo Python installation complete.

@REM install pip
@REM @echo off
@REM set installer_url=https://bootstrap.pypa.io/get-pip.py
@REM echo Downloading pip installer...
@REM curl -o get-pip.py %installer_url%
@REM echo Installing pip...
@REM python get-pip.py
@REM echo Cleaning up...
@REM del get-pip.py
@REM echo pip installation complete.

python --version

pip install -r requirements.txt
pytest test_file.py