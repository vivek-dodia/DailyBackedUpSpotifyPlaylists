@echo off
:: Directory for the Python script to generate the new JSON files for playlists
cd /d "C:\Users\Vivek\Documents\spotify-backup-to-git"
:: Delete existing JSON files in the "playlists" subdirectory
del /Q playlists\22auvhdoqxfrv4t7stdgfxqha\*.json

:: Pull the main branch
git pull origin main

:: Add all the folders that we want to push to the git remote repo
git add .

:: Just naming my commit for reference
git commit -m "delete old json"

:: Pushing the changes with no old JSON files 
git push origin main

:: Directory for the Python script to generate the new JSON files for playlists
cd /d "C:\Users\Vivek\Documents\spotify-backup-to-git"
python script_json.py

:: Pull the main branch
git pull origin main

:: Add all the folders that we want to push to the git remote repo
git add .

:: Just naming my commit for reference
git commit -m "Automated commit with updated playlists."

:: Pushing the changes with new JSON files 
git push origin main
