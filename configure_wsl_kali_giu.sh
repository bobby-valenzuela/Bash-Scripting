# Update/upgrade
sudo apt update && sudo apt upgrade -y
# Install top 10 kali tolls (could also use katiloon)
sudo apt install kali-tools-top10 -y
# Install Kali Desltop Manager (xfce) 
sudo apt install kali-desktop-xfce -y
# Install kex gui
sudo apt install kali-win-kex -y

# Start Kex (automatically)
# Windows Terminal - edit profile cmd (add kex --wtstart -s)
# C:\Windows\system32\wsl.exe -d kali-linux kex --wtstart -s


# Start Kex (manually)
# kex --win -s

# This makes sure to start both server and client
# kex --win --wtstart
