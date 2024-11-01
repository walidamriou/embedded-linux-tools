#!/bin/bash

# Check if the script is run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Update the package list
echo "Updating package list..."
apt update

# Install necessary packages for kernel installation
echo "Installing necessary packages..."
apt install -y wget curl

# Define the kernel version
KERNEL_VERSION="6.6.51"  # Desired kernel version
KERNEL_URL="https://kernel.ubuntu.com/mainline/v${KERNEL_VERSION}/amd64/"

# Download the .deb files for the kernel
echo "Downloading kernel packages..."
wget "${KERNEL_URL}linux-headers-${KERNEL_VERSION}-060651-generic_6.6.51-060651.202409121031_amd64.deb"
wget "${KERNEL_URL}linux-headers-${KERNEL_VERSION}-060651_6.6.51-060651.202409121031_all.deb"
wget "${KERNEL_URL}linux-image-unsigned-${KERNEL_VERSION}-060651-generic_6.6.51-060651.202409121031_amd64.deb"
wget "${KERNEL_URL}linux-modules-${KERNEL_VERSION}-060651-generic_6.6.51-060651.202409121031_amd64.deb"

# Install the downloaded packages
echo "Installing kernel packages..."
dpkg -i linux-headers-${KERNEL_VERSION}-060651-generic_6.6.51-060651.202409121031_amd64.deb
dpkg -i linux-headers-${KERNEL_VERSION}-060651_6.6.51-060651.202409121031_all.deb
dpkg -i linux-image-unsigned-${KERNEL_VERSION}-060651-generic_6.6.51-060651.202409121031_amd64.deb
dpkg -i linux-modules-${KERNEL_VERSION}-060651-generic_6.6.51-060651.202409121031_amd64.deb

# Update grub
echo "Updating GRUB..."
update-grub

# Clean up
echo "Cleaning up..."
rm linux-headers-${KERNEL_VERSION}-060651-generic_6.6.51-060651.202409121031_amd64.deb
rm linux-headers-${KERNEL_VERSION}-060651_6.6.51-060651.202409121031_all.deb
rm linux-image-unsigned-${KERNEL_VERSION}-060651-generic_6.6.51-060651.202409121031_amd64.deb
rm linux-modules-${KERNEL_VERSION}-060651-generic_6.6.51-060651.202409121031_amd64.deb

echo "Kernel upgrade to version ${KERNEL_VERSION} complete. Please reboot your system."
