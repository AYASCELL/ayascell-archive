Get-ChildItem -Path "HKLM:\System\CurrentControlSet\Control\Power\PowerSettings" -Recurse | ForEach-Object {
    $path = $_.PSPath
    $attr = Get-ItemProperty -Path $path -Name "Attributes" -ErrorAction SilentlyContinue
    if ($null -ne $attr -and $attr.Attributes -eq 1) {
        Set-ItemProperty -Path $path -Name "Attributes" -Value 2
    }
}
