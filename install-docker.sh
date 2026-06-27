#!/bin/bash

# Update package
sudo dnf update -y

# Install Docker
sudo dnf install docker -y

# Enable & start Docker
sudo systemctl enable docker
sudo systemctl start docker

# Tambahkan user ec2-user ke grup docker
sudo usermod -aG docker ec2-user

# Cek versi Docker
docker --version

echo "Docker berhasil diinstall. Logout lalu login kembali agar usermod berlaku."
