#!/bin/bash

clear

DEBNAM=$(zenity --entry --title="Shadow v1.0" --text="Package Name")

mkdir ~/Desktop/$DEBNAM/

mkdir ~/Desktop/$DEBNAM/usr/

mkdir ~/Desktop/$DEBNAM/usr/share/

mkdir ~/Desktop/$DEBNAM/usr/share/$DEBNAM

mkdir ~/Desktop/$DEBNAM/usr/bin/

mkdir ~/Desktop/$DEBNAM/DEBIAN/

touch ~/Desktop/$DEBNAM/DEBIAN/control

echo "Package: $DEBNAM" > ~/Desktop/$DEBNAM/DEBIAN/control
echo "Priority: optional" >> ~/Desktop/$DEBNAM/DEBIAN/control
echo "Section: devel" >> ~/Desktop/$DEBNAM/DEBIAN/control
echo "Installed-Size: 45" >> ~/Desktop/$DEBNAM/DEBIAN/control
echo "Architecture: i386" >> ~/Desktop/$DEBNAM/DEBIAN/control
echo "Maintainer: YOUR NAME <yourusername@youremail.com>" >> ~/Desktop/$DEBNAM/DEBIAN/control
echo "Version: 1.3-16" >> ~/Desktop/$DEBNAM/DEBIAN/control
echo "Depends: libc6 (>= 2.1)" >> ~/Desktop/$DEBNAM/DEBIAN/control
echo "Description: APP SHORT DESCRIPTION" >> ~/Desktop/$DEBNAM/DEBIAN/control

touch ~/Desktop/$DEBNAM/usr/bin/$DEBNAM

echo "#!/bin/bash" > ~/Desktop/$DEBNAM/usr/bin/$DEBNAM
echo "clear" >> ~/Desktop/$DEBNAM/usr/bin/$DEBNAM
echo "exec /usr/share/$DEBNAM/$DEBNAM.sh" >> ~/Desktop/$DEBNAM/usr/bin/$DEBNAM
echo "clear" >> ~/Desktop/$DEBNAM/usr/bin/$DEBNAM

chmod 755 ~/Desktop/$DEBNAM/usr/bin/$DEBNAM

touch ~/Desktop/$DEBNAM/usr/share/$DEBNAM/$DEBNAM.sh

touch ~/Desktop/$DEBNAM/usr/share/$DEBNAM/$DEBNAM.desktop

echo "[Desktop Entry]" > ~/Desktop/$DEBNAM/usr/share/$DEBNAM/$DEBNAM.desktop
echo "Name=$DEBNAM" >> ~/Desktop/$DEBNAM/usr/share/$DEBNAM/$DEBNAM.desktop
echo "Type=Application" >> ~/Desktop/$DEBNAM/usr/share/$DEBNAM/$DEBNAM.desktop
echo "Exec=/usr/share/$DEBNAM/$DEBNAM.sh" >> ~/Desktop/$DEBNAM/usr/share/$DEBNAM/$DEBNAM.desktop
echo "Terminal=false" >> ~/Desktop/$DEBNAM/usr/share/$DEBNAM/$DEBNAM.desktop

echo "#!/bin/bash" > ~/Desktop/$DEBNAM/usr/share/$DEBNAM/$DEBNAM.sh
echo "# your code goes below this line.." >> ~/Desktop/$DEBNAM/usr/share/$DEBNAM/$DEBNAM.sh

chmod 755 ~/Desktop/$DEBNAM/usr/share/$DEBNAM/$DEBNAM.sh
chmod 755 ~/Desktop/$DEBNAM/usr/share/$DEBNAM/$DEBNAM.desktop

clear


