# https://docs.microsoft.com/en-us/windows/wsl/install-win10

# installs WSL 2 on Windows 10

# requirements:
# ARM64 systems: Version 2004 or higher, with Build 19041 or higher.
# x64 systems: Version 1903 or higher, with Build 18362 or higher.

# TODO: Add version/arch handling <2020-05-19>

# to verify version:
# (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ReleaseId

# to verify build:
# (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").CurrentBuildNumber

$features = @()
$features += 'Microsoft-Windows-Subsystem-Linux'
$features += 'VirtualMachinePlatform'

foreach ($feature in $features) {
    Enable-WindowsOptionalFeature -Online -NoRestart -FeatureName "$feature" | Format-List
    Get-WindowsOptionalFeature -Online -FeatureName "$feature" | Format-List
}

wsl --set-default-version 2

# https://docs.microsoft.com/en-us/windows/wsl/interop
setx WSLENV USERPROFILE/up
