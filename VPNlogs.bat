@echo Starting with data collection.
@echo off
@echo Current machine time %time% >> %userprofile%\desktop\VPNstats.txt
@echo Current machine date %date% >> %userprofile%\desktop\VPNstats.txt

ipconfig /all >> %userprofile%\desktop\VPNstats.txt
ping 8.8.8.8 >> %userprofile%\desktop\VPNstats.txt
ping google.com >> %userprofile%\desktop\VPNstats.txt
route print >> %userprofile%\desktop\VPNstats.txt

@echo It is almost done...

tracert 8.8.8.8 >> %userprofile%\desktop\VPNstats.txt
ping slcw.ff.avast.com >> %userprofile%\desktop\VPNstats.txt
tracert slcw.ff.avast.com >> %userprofile%\desktop\VPNstats.txt

netsh wfp show filters file=- >> %userprofile%\desktop\VPNstats.txt

@echo Hooray, all data were saved to the file VPNstats.txt on your Desktop.
@echo Please collect the file.
pause
