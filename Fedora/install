#!/data/data/com.termux/files/usr/bin/bash

# Install required packages
apt install proot proot-distro bsdtar axel neofetch -y
clear

# Read FS value
FS=fedora

# Forward the value of FS to NM
NM=$FS

# Capitalize the first letter of NM
NM=$(echo $NM | awk '{print toupper(substr($0,1,1)) substr($0,2)}')

# Display neofetch with custom ASCII art
neofetch --ascii_distro $NM

# Output the selected value
echo "You selected $NM Linux"
echo " "

# Create necessary directories
mkdir -p $PREFIX/var/lib/proot-distro/installed-rootfs

# Change directory
cd $PREFIX/var/lib/proot-distro/installed-rootfs/

# Download the rootfs using axel
axel -a -o $FS.tar.xz https://github.com/xiv3r/Termux-Pentesting-Distro/releases/download/rootfs/$FS.tar.xz

# Check file integrity
echo " "
echo "Checking $NM Linux File Integrity...!!!"
echo " "
sleep 3s
echo "MD5"
md5sum $FS.tar.xz
sleep 3s
echo " "
echo "SHA256"
sha256sum $FS.tar.xz
sleep 3s
echo " "
echo "SHA512"
sha512sum $FS.tar.xz
sleep 3s

# Extract the rootfs
echo " "
echo "[*] Extracting ${NM} Linux Rootfs, Please wait...!!!"
proot --link2symlink bsdtar -xpJf $FS.tar.xz 2>/dev/null

# Create a proot-distro configuration file for the Kali minimal rootfs
cat > $PREFIX/etc/proot-distro/$FS.sh << EOF
DISTRO_NAME="$NM Linux"
TARBALL_URL['aarch64']="https://github.com/xiv3r/Termux-Pentesting-Distro/releases/download/rootfs/$FS.tar.xz"
TARBALL_SHA256['aarch64']="$(sha256sum $FS.tar.xz | awk '{print $1}')"
EOF

# Create a shortcut command to launch the distro
cat > $PREFIX/bin/$FS << EOF
#!/data/data/com.termux/files/usr/bin/bash

proot-distro login $FS
EOF
chmod 700 $PREFIX/bin/$FS

# Add start-up login notification
cat >> $PREFIX/etc/bash.bashrc << EOF
echo "Login $NM Linux: $FS"
EOF

# Add support for uninstallation
cat > $PREFIX/bin/uninstall-$FS << EOF
#!/data/data/com.termux/files/usr/bin/bash

proot-distro remove $FS
sed -i 's/echo "Login $NM Linux: $FS"//g' $PREFIX/etc/bash.bashrc
rm -rf $PREFIX/bin/uninstall-$FS
rm -rf $PREFIX/bin/$FS
rm -rf $PREFIX/var/lib/proot-distro/dlcache/$FS.tar.xz
EOF
chmod 700 $PREFIX/bin/uninstall-$FS

# Backup tarball to the cache
mkdir -p $PREFIX/var/lib/proot-distro/dlcache
mv $FS.tar.xz $PREFIX/var/lib/proot-distro/dlcache

# Display final instructions
echo " "
echo -e '\e[1;96mSuccessful Installation!'
echo -e '\e[0m'
cat <<- EOF
To login $NM Linux, Type: $FS
EOF
sleep 15s
echo " "
