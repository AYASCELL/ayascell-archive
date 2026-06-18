# 🐧 Windows 11 & 10 WSL Installation Guide

## 🇹🇷 Türkçe

Windows üzerinde üçüncü parti sanallaştırma araçlarına veya dual-boot kurulumlarına ihtiyaç duymadan, doğrudan Windows çekirdeği üzerinde yerel olarak Linux çalıştırmanın en kararlı ve kolay yolu olan WSL (Windows Subsystem for Linux) kurulum rehberidir.

### 📝 Ne İşe Yarar?
Bu rehber, Windows'un varsayılan olarak zorladığı Ubuntu kurulumunu atlayıp sadece saf WSL çekirdeğini kurmanızı ve ardından istediğiniz Linux dağıtımını (örneğin Arch Linux) manuel olarak sisteme entegre etmenizi sağlar.

### 🚀 Nasıl Kullanılır?
Bu işlemi gerçekleştirmek için komut satırını kullanacağız:

1. Başlat menüsüne sağ tıkla ve **"Terminal (Yönetici)"** veya **"PowerShell (Yönetici)"** seçeneğini çalıştır.
2. Sisteme zorla Ubuntu kurulmasını engellemek ve sadece WSL altyapısını kurmak için aşağıdaki komutu gir:
```bash
wsl --install --no-distribution
```


3. Kurulum bitince WSL altyapısının tam entegre olması için bilgisayarını **yeniden başlat**.
4. Sistem açılınca Terminali tekrar yönetici olarak aç ve kuruluma hazır dağıtımları listelemek için şu komutu gir:

```bash
wsl --list --online
```

5. Listeden istediğin dağıtımı kurmak için aşağıdaki komutu kullan (örnekte Arch Linux kurulmuştur, ismini listedekilerle değiştirebilirsin):

```bash
wsl --install -d archlinux

```

*(Kurulum bitince senden bir kullanıcı adı ve şifre belirlemen istenecek. Şifre yazarken güvenlik gereği ekranda görünmez, yazıp Enter'a basman yeterlidir.)*
6. Kurulumu ve sistem sürümünü doğrulamak için son olarak bu komutu gir:

```bash
wsl -l -v

```

### ⚠️ Dikkat Edilmesi Gerekenler

* **Sistem Gereksinimleri:** Windows 10 (Sürüm 2004/Derleme 19041 ve üzeri) veya herhangi bir Windows 11 sürümü kullanıyor olmalısın.
* **BIOS Ayarı:** Anakartının BIOS ayarlarından **İşlemci Sanallaştırma (Virtualization / AMD-V / Intel VT-x)** özelliğinin mutlaka açık (Enabled) olması gerekir.
* **Yönetici Yetkisi:** Komutların sorunsuz çalışması için Terminali mutlaka "Yönetici olarak çalıştır" modunda açmalısın.

---

## 🇺🇸 English

A guide to installing WSL (Windows Subsystem for Linux), the most stable and easiest way to run Linux natively on the Windows kernel without needing third-party virtualization tools or a dual-boot setup.

### 📝 What Does It Do?

This guide helps you skip the default Ubuntu installation forced by Windows. It allows you to install only the pure WSL core and then manually integrate your preferred Linux distribution (e.g., Arch Linux) into the system.

### 🚀 How to Use?

We will use the command line to perform this action:

1. Right-click the Start menu and select **"Terminal (Admin)"** or **"Windows PowerShell (Admin)"**.
2. To prevent Windows from forcing the default Ubuntu installation and install only the WSL infrastructure, enter the following command:

```bash
wsl --install --no-distribution

```

3. Once the installation is complete, **restart your computer** for the WSL infrastructure to fully integrate.
4. After rebooting, open the Terminal as administrator again and list the available distributions by entering:

```bash
wsl --list --online

```

5. To install your preferred distribution from the list, use the following command (Arch Linux is used in the example, you can replace it with any name from the list):

```bash
wsl --install -d archlinux

```

*(Once complete, you will be prompted to set a username and password. For security reasons, the password will be invisible as you type; just type it and press Enter.)*
6. Finally, to verify the installation and check the system version, enter this command:

```bash
wsl -l -v

```

### ⚠️ Important Notes

* **System Requirements:** You must be using Windows 10 (Version 2004/Build 19041 and higher) or any version of Windows 11.
* **BIOS Settings:** **CPU Virtualization (Intel VT-x / AMD-V)** must be strictly enabled in your motherboard's BIOS settings.
* **Administrative Privilege:** You must open the Terminal as "Administrator" for the commands to run smoothly.

---
*This solution has been tested and verified by AYASCELL.*

```
