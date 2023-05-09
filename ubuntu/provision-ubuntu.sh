#!/usr/bin/env bash

# Atualizando o cache de pacotes e instalando o OpenSSH Server
echo "Instalando OpenSSH Server..."
sudo apt-get update
sudo apt-get install -y openssh-server

# Criando um usuário e definindo sua senha
echo "Criando usuário e definindo senha..."
sudo useradd -m usuario
echo "usuario:senha" | sudo chpasswd

# Configurando o SSH para permitir apenas o login com chave SSH
echo "Configurando o SSH..."
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sudo systemctl restart ssh
