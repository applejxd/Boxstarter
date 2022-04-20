# Memo: Japanese comments cause new line error

#################
# Symbolic Link #
#################

$install_path = "$env:UserProfile\src\windows-setup"
if (-not (Test-Path $install_path)){
  winget install --silent --accept-package-agreements --accept-source-agreements Git.Git
  git clone https://github.com/applejxd/windows-setup.git $install_path
}

# PowerShell Config
# cf. https://qiita.com/smicle/items/0ca4e6ae14ea92000d18
# cf. https://docs.microsoft.com/ja-jp/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.2 
if (Test-Path $Profile.CurrentUserAllHosts) {
  Remove-Item $Profile.CurrentUserAllHosts
}
cmd /c mklink $Profile.CurrentUserAllHosts $env:UserProfile\src\windows-setup\config\profile.ps1

# Windows Terminal Config
winget install --silent --accept-package-agreements --accept-source-agreements Microsoft.WindowsTerminal
if (Test-Path $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json) {
  Remove-Item $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json 
}
cmd /c mklink $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json $env:UserProfile\src\windows-setup\config\settings.json
