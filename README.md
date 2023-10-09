# ClamAV, ClamTK ando Clam-daemon! 🛡
![MasterHead](https://blog.desdelinux.net/wp-content/uploads/2020/07/clamav.jpg.webp)

# ClamAV in GNU/Linux?
ClamAV is a popular and easy-to-use tool for detecting virus infections on Linux systems. It is open source and free, and runs on many Linux systems, including Ubuntu and Fedora.

## Steps before installing ClamAV
1. Have all packages installed according to your Debian Distribution:
```bash
sudo apt update && sudo apt upgrade -y
```
2. Update the system completely:
```bash
sudo apt full-upgrade
```

## Steps to install ClamAV
1. Clone the Github repository in terminal (CTRL+ALT+T):
```bash
git clone https://github.com/BRW080/ClamAV-ParrotSecurity.git
```
2. Access the newly created folder:
```bash
cd ClamAV-ParrotSecurity
```

3. Access the ProtonVPN folder:
```bash
cd ClamAV
```

## Installing ClamAV, ClamTK and Clam-daemon
1. Give execute permissions to the "install.sh" file:
```bash
chmod +x install.sh
```

2. Run the script once with execute permissions:
```bash
sudo bash install.sh
```

3. In case an error occurs when installing it (although it is very common), execute the following:
```bash
systemctl stop clamav-freshclam.service
```

4. Once the service is turned off, start the service again by executing:
```bash
systemctl start clamav-freshclam.service
```

5. Check if you installed it correctly:
```bash
sudo systemctl status clamav-freshclam
```

# APPLICATION TESTING
