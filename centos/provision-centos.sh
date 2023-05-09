# Atualizando o cache de pacotes e instalando o OpenSSH Server
echo "Instalando OpenSSH Server..."
sudo yum update -y
sudo yum install -y openssh-server

# Configurando o SSH para permitir o login como root e com senha
echo "Configurando o SSH..."
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd

# Instalando o EPEL (Extra Packages for Enterprise Linux) para ter acesso a mais pacotes
echo "Instalando o EPEL..."
sudo yum install -y epel-release

# Instalando ferramentas de rede e desenvolvimento
echo "Instalando ferramentas de rede e desenvolvimento..."
sudo yum install -y net-tools wget curl git

# Instalando o editor de texto Vim
echo "Instalando Vim..."
sudo yum install -y vim

# Instalando o gerenciador de pacotes Yum Utils
echo "Instalando Yum Utils..."
sudo yum install -y yum-utils
