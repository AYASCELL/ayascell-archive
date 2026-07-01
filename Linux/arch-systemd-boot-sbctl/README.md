# Arch Linux: systemd-boot ve sbctl ile Otomatik Secure Boot Kurulumu

### 1. sbctl (Secure Boot Manager) aracını sisteme kuruyoruz
```shell
ayascell@ayascell-dell-g15-5530 ~> paru -S sbctl
```

### 2. Sistemin mevcut Secure Boot durumunu kontrol ediyoruz
> **DİKKAT:** İşleme başlamadan önce BIOS'tan eski Secure Boot key'lerini sildiğimiz için şu an Setup Mode açık ve Secure Boot kapalı görünüyor. Bu adım yeni anahtar yazabilmemiz için şarttır!
```shell
ayascell@ayascell-dell-g15-5530 ~> sbctl status
Installed:      ✘ Sbctl is not installed
Setup Mode:     ✘ Enabled
Secure Boot:    ✘ Disabled
```

### 3. EFI klasöründeki önyükleyici ve kernel dosyalarının imza durumuna bakıyoruz
> Görüldüğü gibi hepsi imzasız/Unsigned durumda.
```shell
ayascell@ayascell-dell-g15-5530 ~> sudo sbctl verify
✗ Unsigned /boot/efi/EFI/BOOT/BOOTX64.EFI
✗ Unsigned /boot/efi/EFI/systemd/systemd-boot-fallbackx64.efi
✗ Unsigned /boot/efi/EFI/systemd/systemd-bootx64.efi
✗ Unsigned /boot/efi/d8394091a4914dfd9210b19791b4b52d/7.0.14-zen1-1-zen/linux
```

### 4. Sisteme hükmedecek kendi özel Secure Boot anahtarlarımızı üretiyoruz
```shell
ayascell@ayascell-dell-g15-5530 ~> sudo sbctl create-keys
Created Owner UUID id
Creating secure boot keys...✔
Secure boot keys created!
```

### 5. Ürettiğimiz anahtarları Microsoft anahtarlarıyla birlikte anakartın BIOS'una (NVRAM) kaydediyoruz
```shell
ayascell@ayascell-dell-g15-5530 ~> sudo sbctl enroll-keys -m
Enrolling keys to EFI variables...✔
Enrolled keys to the EFI variables!
```

### 6. İmzasız olan systemd-boot ve Kernel dosyalarımızı kendi anahtarımızla imzalıyoruz
```shell
ayascell@ayascell-dell-g15-5530 ~> sudo sbctl sign-all
✓ Signed /boot/efi/EFI/BOOT/BOOTX64.EFI
✓ Signed /boot/efi/EFI/systemd/systemd-boot-fallbackx64.efi
✓ Signed /boot/efi/EFI/systemd/systemd-bootx64.efi
✓ Signed /boot/efi/d8394091a4914dfd9210b19791b4b52d/7.0.14-zen1-1-zen/linux
```

### 7. İşlem bitti! Son durumu kontrol ediyoruz
> Secure Boot artık devrede.
```shell
ayascell@ayascell-dell-g15-5530 ~> sbctl status
Installed:      ✓ sbctl is installed
Owner GUID:     id
Setup Mode:     ✓ Disabled
Secure Boot:    ✓ Enabled
Vendor Keys:    microsoft
```

# Arch Linux: Automated Secure Boot Setup with systemd-boot & sbctl

### 1. Installing the sbctl (Secure Boot Manager) tool
```shell
ayascell@ayascell-dell-g15-5530 ~> paru -S sbctl
```

### 2. Checking the current Secure Boot status of the system
> **NOTE:** Since we deleted the old Secure Boot keys from the BIOS before starting, Setup Mode is currently enabled and Secure Boot is disabled. This is required to enroll new keys!
```shell
ayascell@ayascell-dell-g15-5530 ~> sbctl status
Installed:      ✘ Sbctl is not installed
Setup Mode:     ✘ Enabled
Secure Boot:    ✘ Disabled
```

### 3. Checking the signature status of the bootloader and kernel files
> As you can see, they are all Unsigned.
```shell
ayascell@ayascell-dell-g15-5530 ~> sudo sbctl verify
✗ Unsigned /boot/efi/EFI/BOOT/BOOTX64.EFI
✗ Unsigned /boot/efi/EFI/systemd/systemd-boot-fallbackx64.efi
✗ Unsigned /boot/efi/EFI/systemd/systemd-bootx64.efi
✗ Unsigned /boot/efi/d8394091a4914dfd9210b19791b4b52d/7.0.14-zen1-1-zen/linux
```

### 4. Creating our own custom Secure Boot keys
```shell
ayascell@ayascell-dell-g15-5530 ~> sudo sbctl create-keys
Created Owner UUID id
Creating secure boot keys...✔
Secure boot keys created!
```

### 5. Enrolling the generated keys into the motherboard's BIOS
> We enroll them alongside the Microsoft keys using the `-m` flag.
```shell
ayascell@ayascell-dell-g15-5530 ~> sudo sbctl enroll-keys -m
Enrolling keys to EFI variables...✔
Enrolled keys to the EFI variables!
```

### 6. Signing our unsigned systemd-boot and Kernel files
```shell
ayascell@ayascell-dell-g15-5530 ~> sudo sbctl sign-all
✓ Signed /boot/efi/EFI/BOOT/BOOTX64.EFI
✓ Signed /boot/efi/EFI/systemd/systemd-boot-fallbackx64.efi
✓ Signed /boot/efi/EFI/systemd/systemd-bootx64.efi
✓ Signed /boot/efi/d8394091a4914dfd9210b19791b4b52d/7.0.14-zen1-1-zen/linux
```

### 7. All done! Checking the final status
> Secure Boot is now fully enabled.
```shell
ayascell@ayascell-dell-g15-5530 ~> sbctl status
Installed:      ✓ sbctl is installed
Owner GUID:     id
Setup Mode:     ✓ Disabled
Secure Boot:    ✓ Enabled
Vendor Keys:    microsoft
```
