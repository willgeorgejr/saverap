!/bin/bash
read -p "Enter your email for Github: " email
git config --global user.email $email
cd "C:\Users\$whoami\Desktop"
read -p "Enter your repository's address (Shift + Ins to paste): " address
git clone $address master
git remote add WebServer $address
git pull WebServer
git push --set-upstream WebServer master
echo "Enter your github credentials or generate an SSH token if you want a bunch of work now for an easier time later."
echo "If you generate an SSH token, I will help you through the process of getting it synced to Github."

