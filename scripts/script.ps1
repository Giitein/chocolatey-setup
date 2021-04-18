# Install Chocolatey + a bunch of apps

ECHO Downloading Chocolatey...
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

ECHO Configuring chocolatey
choco feature enable -n allowGlobalConfirmation

ECHO Installing apps
#Essential apps
choco install ungoogled-chromium
choco install powertoys
choco install mediamonkey
choco install mpv
choco install youtube-dl
choco install notepadplusplus
choco install fzf
choco install fd

#Git stuff
choco install git
choco install sourcetree

#Utilities
choco install soulseek
choco install slack
choco install irfanview
choco install qbittorrent
choco install audacity
choco install obs-studio
choco install thunderbird
choco install blender
choco install avidemux
choco install cutepdf
choco install eartrumpet

ECHO Disabling Global Confirmation
choco feature disable -n allowGlobalConfirmation

ECHO Downloading With FZF
cd C:\Windows
curl https://raw.githubusercontent.com/Giitein/chocolatey-setup/master/with.bat -O with.bat