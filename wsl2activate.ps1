# Enable the WSL2 without reboot 
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart 
# Enable the Virtual Machine Platform 
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
# Install WSL2
wsl --install
