#!/bin/bash

# Switching Proxmox repository to pve-no-subscription

# Backup the enterprise source list
cp /etc/apt/sources.list.d/pve-enterprise.list /etc/apt/sources.list.d/pve-enterprise.list.backup

# Comment out the enterprise repository line
sed -i 's/^deb/#deb/' /etc/apt/sources.list.d/pve-enterprise.list

# Add the no-subscription repository if it doesn't exist
if ! grep -q "download.proxmox.com/debian/pve" /etc/apt/sources.list; then
    echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" >> /etc/apt/sources.list
fi

# Move backup files to your home directory to avoid apt warnings
mv /etc/apt/sources.list.d/*.backup ~/ 

# Check if there are other Proxmox enterprise-related source lists and comment them out
for file in /etc/apt/sources.list.d/*.list; do
    sed -i 's/^deb.*enterprise.proxmox.com/#&/' "$file"
done

# Update package lists
apt update

if grep -q "download.proxmox.com/debian/pve" /etc/apt/sources.list; then
    echo "Proxmox repository switched to pve-no-subscription."
else
    echo "Something went wrong. Please check manually."
fi
