<div align="center">
  
  <details><summary>

# Termux Proot Distros

Proot Distro uses pre-built root filesystems (rootfs) of Linux distributions. These are essentially the core files of a Linux OS.

PRoot is used to "fake" the root environment, allowing you to run the rootfs as if it were a full Linux system.
  </summary>
  
   `Proot Distro is a tool used in environments like Termux (a terminal emulator and Linux environment for Android) to manage and run Linux distributions (distros) in an isolated, containerized environment. It uses PRoot (a user-space implementation of chroot, mount --bind, and binfmt_misc) to run Linux distributions without requiring root access or complex setup.

Key Features of Proot Distro:
No Root Access Required: Proot Distro allows you to run Linux distributions on devices without root access.

Lightweight: It uses minimal resources compared to full virtualization or emulation.

Easy Management: You can install, remove, and manage multiple Linux distributions easily.

Isolation: Each distro runs in its own isolated environment, preventing conflicts with the host system.

Cross-Platform: Works on Android (via Termux) and other platforms where PRoot is supported.

How Proot Distro Works:
Rootfs (Root Filesystem): Proot Distro uses pre-built root filesystems (rootfs) of Linux distributions. These are essentially the core files of a Linux OS.

PRoot: PRoot is used to "fake" the root environment, allowing you to run the rootfs as if it were a full Linux system.

Proot-Distro Scripts: Each distro has a configuration script (e.g., kali.sh, ubuntu.sh) that defines how the rootfs is downloaded, installed, and managed.`

</details>
</div>

# Requirements
- Arm64
- [Termux](https://play.google.com/store/apps/details?id=com.termux)
- [VNC](https://store.nethunter.com/packages/com.offsec.nethunter.kex/)

<br>

# Installation
> PROOT-DISTRO
> recommended 
```
pkg update && pkg upgrade -y && pkg install wget -y && wget -O $PREFIX/bin/PROOT-DISTRO https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Install/PROOT-DISTRO && chmod 755 $PREFIX/bin/PROOT-DISTRO && PROOT-DISTRO
```
<details><summary>
</summary>
  
> CHROOT-DISTRO
> optional
```diff
pkg update && pkg upgrade -y && pkg install wget -y && wget -O $PREFIX/bin/CHROOT-DISTRO https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Install/CHROOT-DISTRO && chmod 755 $PREFIX/bin/CHROOT-DISTRO && CHROOT-DISTRO
```
</details>

# Install Distro
> For proot
```diff
PROOT-DISTRO
```
<details><summary>
  
</summary>

> For chroot
```diff
CHROOT-DISTRO
```
</details>

# Usage
## Login
> example 
```
kali
```
## Logout
```
exit
```
## Uninstall
> example 
```
uninstall-kali
```
## Reinstall
> example 
```
pd reinstall kali
```
## Rename
> example 
```
pd rename kali (new name)
```
## Restore
> example 
```
pd restore kali
```
## Reset 
> example 
```
pd reset kali
```
## Backup 
> example 
```
pd backup kali
```

## List of the available proot-distro commands:

- `pd help`         - Show this help information.
- `pd backup`       - Backup a specified distribution.
- `pd list`         - List supported distributions and their installation status.
- `pd login`        - Start login shell for the specified distribution.
- `pd remove`       - Delete a specified distribution.
- `pd rename`       - Rename installed distribution.
- `pd reset`        - Reinstall from scratch a specified distribution.
- `restore`         - Restore a specified distribution
- `clear-cache`     - Clear cache of downloaded files.

Example: `pd install ubuntu`

------------

# Kali Nethunter Full
- Support vnc service
- login:`kali`
- vnc:`(kali vnc) &`
- uninstall:`kali-uninstall`

- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/KaliLinux/Chroot/kali-full | bash && kali
```

- Start VNC
> Configure vnc
```
kali vnc password
```
```
kali vnc &
```
> 127.0.0.:5901
<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/KaliLinux/Chroot/vnc.jpg">

<br>
<br>
<br>
<br>

-------------
# Kali Nethunter Minimal
- login:`kali`
- uninstall:`kali-uninstall`

- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/KaliLinux/Chroot/kali-minimal | bash && kali
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/KaliLinux/Chroot/kali-linux.png">

<br>
<br>
<br>
<br>

-------------
# Adelie Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Adelie/install | bash && adelie
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Adelie/adelie.png">

<br>
<br>
<br>
<br>

-------------
# Alma Linux
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Alma/install | bash && alma
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Alma/alma.png">

<br>
<br>
<br>
<br>

-------------
# Alpine Linux
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Alpine/install | bash && alpine
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Alpine/alpine.png">

<br>
<br>
<br>
<br>


-------------
# Alt Linux
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Altlinux/install | bash && altlinux 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Altlinux/altlinux.png">

<br>
<br>
<br>
<br>

-------------
# Amazon Linux
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Amazon/install | bash && amazon
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Amazon/amazon.png">

<br>
<br>
<br>
<br>

-------------
# Arch Linux
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Archlinux/install | bash && archlinux
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Archlinux/archlinux.png">

<br>
<br>
<br>
<br>

-------------
# Artix Linux
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Artix/install | bash && artix
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Artix/artix.png">

<br>
<br>
<br>
<br>


----------
# BackBox Linux
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/BackBox/install | bash && clear && backbox
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/BackBox/backbox.png">

<br>
<br>
<br>
<br>

-----------
# BlackArch Linux
- Install 
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/BlackArch/install | bash && clear && blackarch
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/BlackArch/Blackarch.png">

<br>
<br>
<br>
<br>

-------------
# Centos Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Centos/install | bash && centos
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Centos/centos.png">

<br>
<br>
<br>
<br>

-------------
# Chimera Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Chimera/install | bash && chimera
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Chimera/chimera.png">

<br>
<br>
<br>
<br>

-------------
# Cirros Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Cirros/install | bash && cirros
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Cirros/cirros.png">

<br>
<br>
<br>
<br>

-------------
# Crux Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Crux/install | bash && crux
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Crux/crux.png">

<br>
<br>
<br>
<br>

-------------
# Debian Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Debian/install | bash && debian 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Debian/debian.png">

<br>
<br>
<br>
<br>

-------------
# Deepin Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Deepin/install | bash && deepin
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Deepin/deepin.png">

<br>
<br>
<br>
<br>

-------------
# Devuan Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Devuan/install | bash && devuan 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Devuan/devuan.png">

<br>
<br>
<br>
<br>

-------------
# Fedora Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/Fedora/artix/install | bash && fedora 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Fedora/fedora.png">

<br>
<br>
<br>
<br>

-------------
# Gentoo Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Gentoo/install | bash && gentoo 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Gentoo/gentoo.png">

<br>
<br>
<br>
<br>


---------------
# Kali Nethunter Full
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/KaliLinux/Proot/kali-full | bash && clear && kali-full
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/KaliLinux/Proot/NH.png">

<br>
<br>
<br>
<br>

----------------
# Kali Nethunter Minimal
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/KaliLinux/Proot/kali-minimal | bash && clear && kali
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/KaliLinux/Proot/NH.png">

<br>
<br>
<br>
<br>

-------------
# Manjaro Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Manjaro/install | bash && manjaro
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Manjaro/manjaro.png">

<br>
<br>
<br>
<br>

-------------
# Openkylin Linux 
- Install
```
apt update && apt install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Openkylin/install | bash && openkylin 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/OpenKylin/openkylin.png">

<br>
<br>
<br>
<br>

-------------
# Opensuse Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Opensuse/install | bash && opensuse 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Opensuse/opensuse.png">

<br>
<br>
<br>
<br>

-------------
# Oracle Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Oracle/install | bash && oracle 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Oracle/oracle.png">

<br>
<br>
<br>
<br>

-------------
# Openeuler Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/OpenEuler/install | bash && openeuler 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/OpenEuler/openeuler.png">

<br>
<br>
<br>
<br>

-------------
# Openwrt Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Openwrt/install | bash && openwrt
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Openwrt/openwrt.png">

<br>
<br>
<br>
<br>

-------------
# Pardus Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Pardus/install | bash && pardus 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Pardus/pardus.png">

<br>
<br>
<br>
<br>

-----------
# Parrot Linux 
- Install
```
apt update && apt install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/ParrotSec/install | bash && clear && parrot
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/ParrotSec/Parrot.png">

<br>
<br>
<br>
<br>

-------------
# Photon Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Photon/install | bash && photon 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Photon/photon.png">

<br>
<br>
<br>
<br>

-------------
# Rocky Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Rocky/install | bash && rocky 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Rocky/rocky.png">

<br>
<br>
<br>
<br>

-------------
# Slackware Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Slackware/install | bash && slackware 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Slackware/slackware.png">

<br>
<br>
<br>
<br>

-------------
# Termux Linux
- Install
```
pkg update && pkg install wget neofetch -y && wget -O $PREFIX/etc/bash.bashrc https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Termux/bash.bashrc && source $PREFIX/etc/bash.bashrc
```

<img width="800" height="500" src="https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Termux/term.png">

-------------
# Ubuntu Linux (Noble)
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Ubuntu/install | bash && ubuntu 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Ubuntu/ubuntu.png">

<br>
<br>
<br>
<br>

-------------
# Ubuntu Linux (Jammy)
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Ubuntu_jammy/install | bash && ujammy 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Ubuntu_jammy/ujammy.png">

<br>
<br>
<br>
<br>

-------------
# Ubuntu Linux (Focal Fossa)
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Ufocal/install | bash && ufocal
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Ufocal/ufocal.png">

<br>
<br>
<br>
<br>

-------------
# Ubuntu Linux (Oracular)
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Uoracular/install | bash && uoracular 
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Uoracular/uoracular.png">

<br>
<br>
<br>
<br>

-------------
# Void Linux 
- Install
```
pkg update && pkg install wget -y && clear && wget -qO- https://raw.githubusercontent.com/xiv3r/Termux-Pentesting-Distro/refs/heads/main/Void/install | bash && void
```

<img width="800" height="500" src="https://github.com/xiv3r/Termux-Pentesting-Distro/blob/main/Void/void.png">

<br>

