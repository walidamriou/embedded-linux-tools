#!/bin/bash

# Set the desired kernel version
KERNEL_VERSION="6.6.56"

# Update the package list
echo "Updating package list..."
sudo apt-get update

# Remove the current kernel (optional)
#  echo "Removing current kernel..."
#  sudo apt-get remove --purge linux-image-$(uname -r) -y

# Download the specific kernel version if not already downloaded
# Adjust the URLs to match where you are downloading the kernel from
echo "Downloading kernel version $KERNEL_VERSION..."
wget -O linux-image-${KERNEL_VERSION}.deb "http://example.com/path/to/linux-image-${KERNEL_VERSION}.deb"
wget -O linux-headers-${KERNEL_VERSION}.deb "http://example.com/path/to/linux-headers-${KERNEL_VERSION}.deb"

# Install the downloaded kernel and headers
echo "Installing kernel version $KERNEL_VERSION..."
sudo dpkg -i linux-image-${KERNEL_VERSION}.deb linux-headers-${KERNEL_VERSION}.deb

# Update GRUB
echo "Updating GRUB..."
sudo update-grub

# Reboot the system
echo "Rebooting the system..."
sudo reboot

echo "Kernel change script completed."
