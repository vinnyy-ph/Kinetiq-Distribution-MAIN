@echo off
:loop
powershell.exe -Command "ssh -i 'C:\Users\Vincent\Downloads\kinetiq-rds.pem' -L 15432:kinetiq-postgresql.c30ww0i2ytkm.ap-southeast-1.rds.amazonaws.com:5432 ec2-user@3.1.102.192"
echo Connection terminated. Restarting in 5 seconds...
timeout /t 5 /nobreak >nul
goto loop