# ⚡ Windows Power Settings Unhider

Windows işletim sisteminde varsayılan olarak gizlenmiş olan "Gelişmiş Güç Ayarları" (Advanced Power Settings) menüsünü tamamen görünür hale getiren PowerShell otomasyonudur.

## 📝 Ne İşe Yarar?
Windows'taki güç planı ayarlarında bazı seçenekler varsayılan olarak "gizli" (hidden) durumdadır. Bu script, Kayıt Defteri (Registry) üzerinde `Attributes` değerini `1` (gizli) değerinden `2` (görünür) değerine değiştirerek, tüm gizli ayarları **Denetim Masası > Güç Seçenekleri** menüsüne getirir.

## 🚀 Nasıl Kullanılır?
Bu işlemi gerçekleştirmek için **Yönetici Hakları** gereklidir:

1. Script dosyasını (`script.ps1`) bilgisayarına indir.
2. Dosyaya sağ tıkla ve **"PowerShell ile Çalıştır"** seçeneğini kullan (veya PowerShell'i Yönetici olarak açıp dosya dizinine giderek çalıştır).
3. Script otomatik olarak `HKLM:\System\CurrentControlSet\Control\Power\PowerSettings` dizinini tarayacak ve gizli ayarları aktif edecektir.
4. İşlem bittikten sonra Denetim Masası'ndan güç ayarlarını kontrol edebilirsin.

## ⚠️ Dikkat Edilmesi Gerekenler
*   **Yönetici Yetkisi:** Scriptin Kayıt Defteri'nde değişiklik yapabilmesi için PowerShell'i mutlaka "Yönetici olarak çalıştır" modunda açmalısın.
*   **Güvenlik:** Bu script yalnızca Kayıt Defteri'ndeki görünürlük (`Attributes`) değerlerini değiştirir. Sistem dosyalarına zarar vermez.
*   **Yedek:** İşlem yapmadan önce her zaman sisteminizde bir geri yükleme noktası oluşturmanız önerilir.

---
*Bu çözüm AYASCELL tarafından test edilmiş ve doğrulanmıştır.*
