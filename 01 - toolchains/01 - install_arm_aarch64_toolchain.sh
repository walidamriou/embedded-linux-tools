#!/bin/bash

# ******************************************************************************
# @title Command-line tool to Install an ARM aarch64 developer toolchain
# @brief This toolchain allows developers to build and debug applications for 
# the ARM AArch64 architecture on x86_64 host machines.
# @author Walid Amriou
# @date 24/11/2024
# ******************************************************************************

# Variables
# get the toolchain url from: https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads
TOOLCHAIN_URL="https://developer.arm.com/-/media/Files/downloads/gnu/13.3.rel1/binrel/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-linux-gnu.tar.xz"
INSTALL_DIR="$HOME/arm-cross-compiler"
BASHRC_PATH="$HOME/.bashrc"

# Create installation directory
mkdir -p "$INSTALL_DIR"

# Download the toolchain 
# note: the command to tell wget to save the downloaded file as toolchain.tar.xz in 
# the directory specified by the variable INSTALL_DIR.
echo "Downloading ARM GNU Toolchain..."
wget -O "$INSTALL_DIR/toolchain.tar.xz" "$TOOLCHAIN_URL"

# Extract the downloaded file
echo "Extracting the toolchain..."
tar -xf "$INSTALL_DIR/toolchain.tar.xz" -C "$INSTALL_DIR"

# Add toolchain to PATH in .bashrc
echo "Updating PATH in $BASHRC_PATH..."
echo "export PATH=\$PATH:$INSTALL_DIR/arm-gnu-toolchain-${TOOLCHAIN_VERSION}-x86_64-aarch64-none-linux-gnu/bin" >> "$BASHRC_PATH"

# Source the .bashrc to update the current session
source "$BASHRC_PATH"

# Clean up the downloaded tar file
rm "$INSTALL_DIR/toolchain.tar.xz"

# Display completion message
echo "ARM GNU Toolchain installation complete!"
echo "You can now use the toolchain. To make sure the changes take effect, either restart your terminal or run 'source $BASHRC_PATH'."
