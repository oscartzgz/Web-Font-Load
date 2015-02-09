#!/bin/bash
# For OS X-based systems.

clear
echo "Installing all Google Web Fonts onto your Mac"
echo "Downloading the fonts..."
cd ~/Documents/
curl -L https://github.com/w0ng/googlefontdirectory/tarball/master -o master.tar.gz
echo "Extracting the fonts..."
mkdir goog-fonts
tar -zxf master.tar.gz -C goog-fonts
cd goog-fonts
cd */
cd fonts
find . -mindepth 2 -type f -print -exec mv {} . \;
rm -R -- */
rm *.txt
rm *.json
cd ..
mv fonts/* /Library/Fonts/

echo "Fonts installed; Cleaning up files..."
cd ~/Documents/
rm -f master.tar.gz
rm -rf goog-fonts
echo "All done! All Google Fonts installed."
