@echo off
:: Delete existing JSON files in the "playlists" subdirectory
del /Q playlists\22auvhdoqxfrv4t7stdgfxqha\*.json

cd /d "C:\Users\Vivek\Documents\spotify-backup-to-git"
python script_json.py

:: Stage all changes (including deleted and new files)
git add -A

:: Commit the changes with a commit message
git commit -m "Update playlists"

:: Push the changes to the remote repository
git push origin main
