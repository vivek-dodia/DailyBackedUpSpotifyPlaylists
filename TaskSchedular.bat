@echo off
:: Delete existing JSON files in the "playlists" subdirectory
del /Q playlists\22auvhdoqxfrv4t7stdgfxqha\*.json

:: Pull the main branch
git pull origin main

:: add all the folders that we want to push to git remote repo
git add .

:: just naming my commit for reference
git commit -m "delete old json"

:: pushing the changes with no old json files 
git push origin main

::directory for the python to generate the new json files for playlists
cd /d "C:\Users\Vivek\Documents\spotify-backup-to-git"
python script_json.py

:: Pull the main branch
git pull origin main

:: add all the folders that we want to push to git remote repo
git add .

:: just naming my commit for reference
git commit -m "Automated commit with updated playlists."

:: pushing the changes with new json files 
git push origin main
