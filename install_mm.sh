#!/bin/sh

# install magic mirror 
bash -c  "$(curl -sL https://raw.githubusercontent.com/sdetweil/MagicMirror_scripts/master/raspberry.sh)"

# turn off screensave
bash -c "$(curl -sL https://raw.githubusercontent.com/sdetweil/MagicMirror_scripts/master/screensaveroff.sh)"


# install Modules 
cd ~/MagicMirror/modules
git clone https://github.com/balharrie/MMM-SugarValue.git
cd MMM-SugarValue
npm install 


cd ..
git clone https://github.com/cbrooker/MMM-Todoist.git
cd MMM-Todoist
npm install 

cd ..
git clone https://github.com/kolbyjack/MMM-Wallpaper.git
cd MMM-Wallpaper
npm install 

#Update config 
cp config.js ~/MagicMirro/config


# Add pm2 to start the magic mirror
bash -c "$(curl -sL https://raw.githubusercontent.com/sdetweil/MagicMirror_scripts/master/fixuppm2.sh)"

pm2 restart mm
