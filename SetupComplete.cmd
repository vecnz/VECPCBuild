@echo off

powershell Set-ExecutionPolicy RemoteSigned -y

powershell Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

powershell choco install googlechrome steam origin discord vlc 7zip.install -y