directory_path="$PREFIX/Vrytec"

if [ -d "$directory_path" ]; then
    echo "#-------------Tweaks Generator---------------" >> /data/data/com.termux/files/usr/etc/bash.bashrc
    echo "alias Generate='bash \$PREFIX/Vrytec/.exe'" >> /data/data/com.termux/files/usr/etc/bash.bashrc
    echo "alias Generate='bash \$PREFIX/Vrytec/.exe'" >> /data/data/com.termux/files/usr/etc/bash.bashrc
    
    
    echo "echo -e '\033[1;37;42m>>> Type Generate And Press Enter To Open Tweak Generator \033[0m'" >> /data/data/com.termux/files/usr/etc/bash.bashrc
    echo "echo '' " >> /data/data/com.termux/files/usr/etc/bash.bashrc
    echo "#-------------------END-------------------" >> /data/data/com.termux/files/usr/etc/bash.bashrc


    
else
    echo "The directory '$directory_path' does not exist."
    pkg install git || cd $PREFIX || git clone https://github.com/solacexcv/Vrytec/ || cd Vrytec || chmod +x .exe || bash install.sh

fi
termux-reload-settings
echo -e '\033[1;37;42mTweaks Generator Installed <3 \033[0m'