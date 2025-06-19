<h1 align="center">📱 DistroLab-Termux</h1>
<p align="center">Run 40+ Linux distributions in Termux using PRoot - No Root Required 🚀</p>

<div align="center">
  
<details>
<summary><strong>📦 What is PRoot Distro?</strong></summary>
  
**PROOT-DISTRO** allows users to run full Linux distributions inside Termux without root access using pre-built root filesystems (rootfs).

> Think of it as a lightweight container for Android users who want Linux at their fingertips.

### ✅ Key Features:
- 🔓 **No Root Required**  
- 📦 **Prebuilt RootFS Images**  
- 📱 **Works in Termux (Android)**  
- 🧠 **Easy Install/Uninstall**  
- 🧩 **Isolated Environment**  
- 🌐 **Run Multiple Distros Simultaneously**

</details>
</div>

---

## 🔧 Requirements

- 📱 Android device (Arm64)
- 📲 [Termux](https://play.google.com/store/apps/details?id=com.termux)
- 🖥️ [VNC Viewer (Optional)](https://store.nethunter.com/packages/com.offsec.nethunter.kex/)

---

## ⚙️ Installation

### ▶️ PROOT-DISTRO (Recommended)
```bash
pkg update && pkg upgrade -y && pkg install wget -y && \
wget -O $PREFIX/bin/PROOT-DISTRO https://raw.githubusercontent.com/KIRAN-KUMAR-K3/DistroLab-Termux/main/Install/PROOT-DISTRO && \
chmod 755 $PREFIX/bin/PROOT-DISTRO && PROOT-DISTRO
````

<details>
<summary>⚡ CHROOT-DISTRO (Optional)</summary>

```bash
pkg update && pkg upgrade -y && pkg install wget -y && \
wget -O $PREFIX/bin/CHROOT-DISTRO https://raw.githubusercontent.com/KIRAN-KUMAR-K3/DistroLab-Termux/main/Install/CHROOT-DISTRO && \
chmod 755 $PREFIX/bin/CHROOT-DISTRO && CHROOT-DISTRO
```

</details>

---

## 🐧 Distro Installation

### PROOT Method:

```bash
PROOT-DISTRO
```

<details>
<summary>CHROOT Method</summary>

```bash
CHROOT-DISTRO
```

</details>

---

## 💻 Usage Guide

| Command                  | Description         |
| ------------------------ | ------------------- |
| `kali`                   | Login to Kali Linux |
| `exit`                   | Logout              |
| `uninstall-kali`         | Uninstall Kali      |
| `pd reinstall kali`      | Reinstall Distro    |
| `pd rename kali newname` | Rename a distro     |
| `pd restore kali`        | Restore backup      |
| `pd reset kali`          | Reset configuration |
| `pd backup kali`         | Backup distro       |

---

## 📜 Available Commands

```bash
pd help         # Show help menu
pd list         # List supported distros
pd login        # Enter a distro shell
pd remove       # Delete a distro
pd rename       # Rename a distro
pd reset        # Reinstall a distro
pd backup       # Backup a distro
restore         # Restore a backup
clear-cache     # Clear downloaded files
```

---

## 🛡️ Featured Distro: Kali Nethunter Full

```bash
pkg update && pkg install wget -y && clear && \
wget -qO- https://raw.githubusercontent.com/KIRAN-KUMAR-K3/DistroLab-Termux/main/KaliLinux/Chroot/kali-full | bash && kali
```

```bash
kali vnc password
kali vnc &
```

> Connect via VNC at `127.0.0.1:5901`

<img src="https://github.com/KIRAN-KUMAR-K3/DistroLab-Termux/blob/main/KaliLinux/Chroot/vnc.jpg" width="800">

---

## 🐍 Kali Minimal

```bash
pkg update && pkg install wget -y && clear && \
wget -qO- https://raw.githubusercontent.com/KIRAN-KUMAR-K3/DistroLab-Termux/main/KaliLinux/Chroot/kali-minimal | bash && kali
```

<img src="https://github.com/KIRAN-KUMAR-K3/DistroLab-Termux/blob/main/KaliLinux/Chroot/kali-linux.png" width="800">

---

## 🐧 Other Supported Distros (Sample)

| Distro       | Install Command                                                                                           |
| ------------ | --------------------------------------------------------------------------------------------------------- |
| Adelie Linux | `bash <(wget -qO- https://raw.githubusercontent.com/KIRAN-KUMAR-K3/DistroLab-Termux/main/Adelie/install)` |
| Alma Linux   | `bash <(wget -qO- https://raw.githubusercontent.com/KIRAN-KUMAR-K3/DistroLab-Termux/main/Alma/install)`   |
| Alpine Linux | `bash <(wget -qO- https://raw.githubusercontent.com/KIRAN-KUMAR-K3/DistroLab-Termux/main/Alpine/install)` |

> View full list inside `DistroLab-Termux/` directory.

---

## 📂 Project Structure

```bash
DistroLab-Termux/
├── Install/
│   └── PROOT-DISTRO, CHROOT-DISTRO
├── Alpine/
├── KaliLinux/
├── Ubuntu/
├── Fedora/
├── ParrotSec/
├── ...
└── README.md
```

---

## 🤝 Contributing

Pull requests are welcome! Whether it's adding a new distro or improving the script, feel free to fork and contribute.

---

## ⚖️ License

This project is licensed under the [GNU License](https://github.com/KIRAN-KUMAR-K3/DistroLab-Termux/blob/main/LICENSE).

---

## 🙌 Credits

Made with ❤️ by [Kiran Kumar K](https://github.com/KIRAN-KUMAR-K3)
If you like this project, don't forget to ⭐ **star** the repo!

