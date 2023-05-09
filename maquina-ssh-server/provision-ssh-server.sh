#!/usr/bin/env bash

# Atualizando o cache de pacotes e instalando o OpenSSH Server
echo "Instalando OpenSSH Server..."
sudo apt-get update
sudo apt-get install -y openssh-server

# Configurando o SSH para permitir o login como root e com senha
echo "Configurando o SSH..."
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart ssh

# Criando um novo usuário e definindo a senha
echo "Criando novo usuário..."
sudo useradd -m -p $(openssl passwd -1 "admin") -s /bin/bash root
