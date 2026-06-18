# 🐧 Windows 11 & 10: WSL Kurulum Rehberi
**Windows üzerinde dual-boot ile uğraşmadan Linux çalıştırmanın en kolay yolu!**

[![Video Rehber](https://img.shields.io/badge/YouTube-Videolu_Anlatımı_İzle-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://youtube.com/@AyascellArchive)

🌍 **[Türkçe Sürüm](#-türkçe-kurulum-adımları)  |  [English Version](#-english-installation-guide)**

</div>

---

## 🇹🇷 Türkçe Kurulum Adımları

Windows üzerinde üçüncü parti sanallaştırma araçlarına (VirtualBox, VMware vb.) veya dual-boot (çift işletim sistemi) kurulumlarına ihtiyaç duymadan, doğrudan Windows çekirdeği üzerinde yerel olarak Linux çalıştırmanın en kararlı ve kolay yolu **WSL (Windows Subsystem for Linux)** teknolojisidir.

### 📌 Sistem Gereksinimleri
* **Windows 10** **Windows 11** sürümü.
* BIOS üzerinden **İşlemci Sanallaştırma (Virtualization / Intel VT-x / AMD-V)** açık olmalıdır.

### 🛠️ Adım Adım Kurulum

**1.** Başlat menüsüne sağ tıklayıp **Terminal (Yönetici)** veya **PowerShell (Yönetici)** seçeneğini çalıştırın.

**2.** Aşağıdaki komutu kopyalayıp terminale yapıştırın ve `Enter`'a basın:
```bash
wsl --install --no-distribution

```

> 💡 **Not:** *Bu komut gerekli tüm Windows alt bileşenlerini aktif edip en son WSL sürümünü herhangi bir işletim sistemi indirmeden kuracaktır.*

**3.** İşlem bitince terminaldeki uyarıyı dikkate alarak bilgisayarınızı **yeniden başlatın**.




**4.** Sistem açıldığında otomatik gelen terminal ekranında ilk yapılandırmayı yapın:

* `Enter new UNIX username:` Linux içinde kullanmak istediğiniz kullanıcı adını yazın.
* `New password:` Şifrenizi belirleyin (Güvenlik gereği yazarken ekranda görünmez, yazıp Enter'a basın).
* `Retype new password:` Şifrenizi tekrar girin.

🎉 **Tebrikler, Linux ortamınız hazır!**

---

### 🚀 Farklı Dağıtımlar Kurmak (Opsiyonel)

Eğer Ubuntu yerine veya Ubuntu'nun yanına başka bir Linux dağıtımı (örneğin Arch Linux, Debian veya Kali) kurmak isterseniz:

Kurulabilecek resmi dağıtımların listesini görmek için:

```bash
wsl --list --online

```

Listeden seçtiğiniz spesifik bir dağıtımı doğrudan kurmak için (Örnek: Arch Linux):

```bash
wsl --install -d Arch

```

### ⚙️ Temel WSL Komutları

Sık sık kullanacağınız bazı temel yönetim komutları:

* **Çalışan Dağıtımları Listeleme:** ```bash
wsl --list --verbose

```
* **WSL Sürümünü Kontrol Etme:** ```bash
wsl --status

```

* **Belirli Bir Dağıtımı Kapatma:** ```bash
wsl --terminate <Dağıtım-Adı>

```
* **WSL Çekirdeğini Tamamen Kapatma:** ```bash
wsl --shutdown

```

* **WSL Çekirdeğini Güncelleme:** ```bash
wsl --update

```

---
---

## 🇬🇧 English Installation Guide

**WSL (Windows Subsystem for Linux)** is the most stable and easiest way to run Linux natively on the Windows kernel without needing third-party virtualization tools (like VirtualBox, VMware) or a dual-boot setup.

### 📌 System Requirements
* **Windows 10:** Version 2004 and higher (Build 19041+) or any **Windows 11** version.
* **CPU Virtualization (Intel VT-x / AMD-V)** must be enabled in your BIOS.

### 🛠️ Step-by-Step Installation

**1.** Right-click the Start menu and open **Terminal (Admin)** or **Windows PowerShell (Admin)**.

**2.** Paste the following command into the terminal and press `Enter`:
```bash
wsl --install

```

> 💡 **Note:** *This command enables all required Windows features, downloads the latest WSL kernel, and installs Ubuntu by default.*

**3.** Once the process is complete, you will see a prompt in the terminal. **Restart your computer**.

**4.** A terminal window will open automatically after the reboot to configure your system:

* `Enter new UNIX username:` Type your desired Linux username.
* `New password:` Set your password (it will be invisible as you type, just type and press Enter).
* `Retype new password:` Enter your password again.

🎉 **Congratulations, your Linux environment is ready!**

---

### 🚀 Installing Different Distributions (Optional)

If you want to install a different Linux distribution (e.g., Arch Linux, Debian) instead of or alongside Ubuntu:

To see a list of valid distributions:

```bash
wsl --list --online

```

To directly install a specific distribution (Example: Arch Linux):

```bash
wsl --install -d Arch

```

### ⚙️ Basic WSL Commands

Some basic management commands you will frequently use:

* **List Running Distributions:** ```bash
wsl --list --verbose

```
* **Check WSL Status:** ```bash
wsl --status

```

* **Terminate a Specific Distro:** ```bash
wsl --terminate 

```
* **Shut Down WSL Completely:** ```bash
wsl --shutdown

```

* **Update WSL Kernel:** ```bash
wsl --update

```

---
<div align="center">
  <i>Developed and maintained by Ayascell Archive.</i>
</div>

```
