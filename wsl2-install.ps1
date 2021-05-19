# https://docs.microsoft.com/en-us/windows/wsl/install-win10

$features = @()
$features += 'Microsoft-Windows-Subsystem-Linux'
$features += 'VirtualMachinePlatform'

foreach ($feature in $features) {
    Enable-WindowsOptionalFeature -Online -NoRestart -FeatureName "$feature" | Format-List
    Get-WindowsOptionalFeature -Online -NoRestart -FeatureName "$feature" | Format-List
}

wsl --set-default-version 2

# https://docs.microsoft.com/en-us/windows/wsl/interop

setx WSLENV USERPROFILE/up
