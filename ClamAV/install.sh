#!/bin/bash

# Check if the script has execute permissions
if [ ! -x "$0" ]; then
    echo "The file does not have executable permissions, run the following: chmod +x install.sh"
    exit 1
fi

# Check if the user is root
if [ "$(whoami)" != "root" ]; then
    echo "You must be root (superuser) to run the following script in the directory: $(pwd)/"
    exit 1
fi

# Check if the user has sudo privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run with root privileges."
   exit 1
fi

# Check if ClamAV is already installed
if dpkg -l | grep -q clamav; then
    echo "ClamAV is already installed in your distribution"
    exit 0
fi

# Install ClamAV, ClamTK y el demonio de ClamAV
apt install -y clamav clamtk clamav-daemon

echo "ClamAV, ClamTK and the ClamAV daemon have been installed successfully."
