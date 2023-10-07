@echo off
cd /d "C:\Users\Vivek\Documents\spotify-backup-to-git"
python script_json.py
git add .
git commit -m "Automated commit"
git push origin main
