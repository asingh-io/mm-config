#!/bin/sh

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


pm2 restart mm
