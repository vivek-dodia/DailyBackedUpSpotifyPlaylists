@echo off
:: Delete existing JSON files in the "playlists" folder
del /Q playlists\22auvhdoqxfrv4t7stdgfxqha\.json
cd /d "C:\Users\Vivek\Documents\spotify-backup-to-git"
python script_json.py
git pull origin main
git add .
git commit -m "Automated commit"
git push origin main
