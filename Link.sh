start ../ngrok.exe http 8069 > ../ngrok.log
timeout 5
for /f "tokens=2" %a in ('findstr "Forwarding" ngrok.log') do set URL=%a
echo %URL% > ngrok_url.txt
del ngrok.log
git add ngrok_url.txt
git commit -m "Updating ngrok URL"
git push
