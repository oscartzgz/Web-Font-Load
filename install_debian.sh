#!/bin/bash
# For Debian-based systems.

clear
echo "Installing all Google Web Fonts onto your Debian system"
echo "Downloading the fonts..."
cd ~/Documents/
curl -L https://github.com/w0ng/googlefontdirectory/tarball/master -o master.tar.gz
echo "Extracting the fonts..."
mkdir goog-fonts
tar -zxf master.tar.gz -C goog-fonts
cd goog-fonts
find . -mindepth 2 -type f -print -exec mv {} . \;
rm -R -- */
rm *.txt
rm *.json
rm *.md
cd ..
sudo mv goog-fonts/* /usr/local/share/fonts/

echo "Fonts installed, cleaning up files.."
cd ~/Documents/
rm -f master.tar.gz
rm -rf goog-fonts
echo "All done! All Google Fonts installed."

