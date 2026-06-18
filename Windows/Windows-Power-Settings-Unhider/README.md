# ⚡ Windows Power Settings Unhider

* [![Video Rehber](https://img.shields.io/badge/YouTube-Videolu_Anlatımı_İzle-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://youtu.be/FyhZCc5JPjc?si=GsII0tRKk9Fkfvm6)

## 🇹🇷 Türkçe

Windows işletim sisteminde varsayılan olarak gizlenmiş olan "Gelişmiş Güç Ayarları" (Advanced Power Settings) menüsünü tamamen görünür hale getiren PowerShell otomasyonudur.

### 📝 Ne İşe Yarar?
Windows'taki güç planı ayarlarında bazı seçenekler varsayılan olarak "gizli" (hidden) durumdadır. Bu script, Kayıt Defteri (Registry) üzerinde `Attributes` değerini `1` (gizli) değerinden `2` (görünür) değerine değiştirerek, tüm gizli ayarları **Denetim Masası > Güç Seçenekleri** menüsüne getirir.

### 🚀 Nasıl Kullanılır?
Bu işlemi gerçekleştirmek için **Yönetici Hakları** gereklidir:

1. Script dosyasını (`script.ps1`) bilgisayarına indir.
2. Dosyaya sağ tıkla ve **"PowerShell ile Çalıştır"** seçeneğini kullan (veya PowerShell'i Yönetici olarak açıp dosya dizinine giderek çalıştır).
3. Script otomatik olarak `HKLM:\System\CurrentControlSet\Control\Power\PowerSettings` dizinini tarayacak ve gizli ayarları aktif edecektir.
4. İşlem bittikten sonra Denetim Masası'ndan güç ayarlarını kontrol edebilirsin.

### ⚠️ Dikkat Edilmesi Gerekenler
* **Yönetici Yetkisi:** Scriptin Kayıt Defteri'nde değişiklik yapabilmesi için PowerShell'i mutlaka "Yönetici olarak çalıştır" modunda açmalısın.
* **Güvenlik:** Bu script yalnızca Kayıt Defteri'ndeki görünürlük (`Attributes`) değerlerini değiştirir. Sistem dosyalarına zarar vermez.
* **Yedek:** İşlem yapmadan önce her zaman sisteminizde bir geri yükleme noktası oluşturmanız önerilir.

---

## 🇺🇸 English

A PowerShell automation that makes the hidden "Advanced Power Settings" menu fully visible in the Windows operating system.

### 📝 What Does It Do?
Some options in Windows power plan settings are hidden by default. This script changes the `Attributes` value in the Registry from `1` (hidden) to `2` (visible), bringing all hidden settings to the **Control Panel > Power Options** menu.

### 🚀 How to Use?
**Administrative privileges** are required to perform this action:

1. Download the script file (`script.ps1`) to your computer.
2. Right-click the file and select **"Run with PowerShell"** (or open PowerShell as Administrator, navigate to the file directory, and run it).
3. The script will automatically scan the `HKLM:\System\CurrentControlSet\Control\Power\PowerSettings` directory and activate the hidden settings.
4. Once completed, you can check the power options in the Control Panel.

### ⚠️ Important Notes
* **Administrative Privilege:** You must open PowerShell as "Administrator" so the script can modify the Registry.
* **Security:** This script only modifies the visibility (`Attributes`) value in the Registry. It does not harm system files.
* **Backup:** It is always recommended to create a system restore point before making changes.

---
*This solution has been tested and verified by AYASCELL.*
