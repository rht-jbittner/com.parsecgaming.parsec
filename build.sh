#!/bin/bash

# Build flatpak
flatpak-builder build-dir com.parsecgaming.parsec.json --force-clean

# Test build by running unbunded binary
# flatpak-builder --run build-dir com.parsecgaming.parsec.json parsecd

# Create repository and put app in it
flatpak-builder --repo=repo --force-clean build-dir com.parsecgaming.parsec.json

# Export flatpak bundle
flatpak build-bundle ./repo parsec.flatpak com.parsecgaming.parsec

# Install parsec.flatpak
# flatpak install ./parsec.flatpak
