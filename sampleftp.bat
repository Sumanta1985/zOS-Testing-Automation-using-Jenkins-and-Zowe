cd C:\Users\bardh\OneDrive\Desktop\Zowe\zOS-Testing-Automation-using-Jenkins-and-Zowe
del REXEXC00.txt
del REXEXC01.txt
del REXEXC02.txt
del REXEXC03.txt
ftp -s:SampleFTP.txt
cd C:\Users\bardh\OneDrive\Desktop\Zowe\zOS-Testing-Automation-using-Jenkins-and-Zowe
echo ((((( Some sample text being entered here solely for testing purposes ))))) %DATE% %TIME%> README.md
git add .
git commit -m "Required files updated."
git config --global user.email "bardhan.sumanta.com"
git config --global user.name "sumanta1985"
git push -u origin master
