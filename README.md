<h1 align="center">Meu Projeto</h1>
<p align="center">
  <a href="#sobre">Sobre</a> •
  <a href="#tecnologias-utilizadas">Tecnologias Utilizadas</a> •
  <a href="#instalação-e-execução">Instalação e Execução</a> •
  <a href="#licença">Licença</a>
</p>
<p align="center">
  <img src="https://img.shields.io/badge/OS-Windows-informational?style=flat&logo=windows&logoColor=white&color=0078D6">
  <img src="https://img.shields.io/badge/OS-Ubuntu-informational?style=flat&logo=ubuntu&logoColor=white&color=E95420">
  <img src="https://img.shields.io/badge/OS-Debian-informational?style=flat&logo=debian&logoColor=white&color=A81D33">
  <img src="https://img.shields.io/badge/OS-CentOS-informational?style=flat&logo=centos&logoColor=white&color=262577">
  <img src="https://img.shields.io/badge/Tecnologia-Vagrant-informational?style=flat&logo=vagrant&logoColor=white&color=1868F2">
  <img src="https://img.shields.io/badge/Tecnologia-VirtualBox-informational?style=flat&logo=virtualbox&logoColor=white&color=183A61">
  <img src="https://img.shields.io/badge/Tecnologia-HTML5-informational?style=flat&logo=html5&logoColor=white&color=E34F26">
  <img src="https://img.shields.io/badge/Tecnologia-CSS3-informational?style=flat&logo=css3&logoColor=white&color=1572B6">
  <img src="https://img.shields.io/badge/Tecnologia-Makefile-informational?style=flat&logo=gnu-make&logoColor=white&color=FFA900">
</p>
Sobre
Este projeto é um ambiente Vagrant que provisiona máquinas virtuais com diferentes sistemas operacionais e configurações.

As seguintes máquinas virtuais são criadas:

maquina-ssh-server: Ubuntu 20.04 LTS com servidor SSH instalado
windows: Windows 10 com PuTTY e interface gráfica instalados
ubuntu: Ubuntu 20.04 LTS
debian: Debian 10
centos: CentOS 7
O projeto utiliza o Vagrant como gerenciador de máquinas virtuais e o VirtualBox como provedor. Além disso, é utilizado o Makefile para automatizar o processo de criação e destruição das máquinas virtuais.

Tecnologias Utilizadas
Vagrant
VirtualBox
Makefile

Instalação e Execução
Instale o Vagrant e o VirtualBox em sua máquina seguindo as instruções oficiais para o seu sistema operacional.
Vagrant
[VirtualBox}

Tecnologias Utilizadas
Vagrant
VirtualBox
Makefile

Instalação e Execução
Instale o Vagrant e o VirtualBox em sua máquina seguindo as instruções oficiais para o seu sistema operacional.

Vagrant
O Vagrant é uma ferramenta open-source para construir e gerenciar ambientes de desenvolvimento virtualizados. Ele permite que você configure uma infraestrutura de máquinas virtuais em segundos, com configuração simples em um único arquivo.

Para instalar o Vagrant em seu sistema operacional, siga as instruções oficiais:

Para sistemas operacionais Windows e macOS, baixe o instalador do Vagrant em https://www.vagrantup.com/downloads. Depois, siga o assistente de instalação para concluir a instalação.
Para sistemas operacionais baseados em Linux, verifique as instruções específicas de sua distribuição em https://www.vagrantup.com/docs/installation.
VirtualBox
O VirtualBox é uma ferramenta open-source de virtualização, que permite a criação de máquinas virtuais em seu computador. Ele é amplamente utilizado em ambientes de desenvolvimento, testes e produção.

Para instalar o VirtualBox em seu sistema operacional, siga as instruções oficiais:

Para sistemas operacionais Windows e macOS, baixe o instalador do VirtualBox em https://www.virtualbox.org/wiki/Downloads. Depois, siga o assistente de instalação para concluir a instalação.
Para sistemas operacionais baseados em Linux, verifique as instruções específicas de sua distribuição em https://www.virtualbox.org/manual/ch02.html#idm703.
Makefile
O Makefile é um arquivo utilizado para automatizar a construção de programas e tarefas repetitivas em um projeto. Ele permite que você defina regras para a construção do projeto, que serão executadas de forma automática quando você executar o comando make.

Para executar o Makefile neste projeto, abra um terminal e navegue até a pasta raiz do projeto. Em seguida, execute o comando make para subir todas as máquinas virtuais, ou make clean para removê-las.

HTML5 e CSS3
O HTML5 e CSS3 são linguagens de marcação e estilização utilizadas na construção de páginas web modernas. Elas permitem criar layouts responsivos e interativos, com recursos avançados como animações, vídeos e áudios.

Para visualizar a página HTML deste projeto, abra o arquivo index.html em um navegador web moderno como Google Chrome ou Mozilla Firefox.

Tecnologias Utilizadas nas Máquinas Virtuais
As máquinas virtuais criadas neste projeto utilizam os seguintes sistemas operacionais e tecnologias:

maquina-ssh-server: Ubuntu 20.04, OpenSSH Server
windows: Windows Server 2019, Putty, interface gráfica
ubuntu: Ubuntu 20.04, Docker
debian: Debian 10, Apache HTTP Server
centos: CentOS 8, MySQL Server
Cada máquina virtual possui um arquivo Vagrantfile, que define as configurações da máquina virtual, como o sistema operacional, a quantidade de memória e CPU, e as configurações de rede. Além disso, cada máquina virtual possui um arquivo provision.sh, que define as configurações de provision

Ou seja, as tarefas que serão executadas após a criação da máquina virtual.


Maquina SSH Server
A máquina virtual maquina-ssh-server é uma máquina Ubuntu 20.04 que tem como objetivo ser um servidor SSH, permitindo conexões remotas por meio do protocolo SSH. Para iniciar a máquina virtual, execute o seguinte comando na raiz do projeto:


cd vms-ambiente-vagrant/maquina-ssh-server
vagrant up
Após a criação da máquina virtual, é possível acessá-la por meio do comando:


vagrant ssh
Windows
A máquina virtual windows é uma máquina Windows 10 que possui o PuTTY e o WinSCP instalados. Para iniciar a máquina virtual, execute o seguinte comando na raiz do projeto:


cd vms-ambiente-vagrant/windows
vagrant up
Após a criação da máquina virtual, é possível acessá-la por meio de um cliente SSH, como o PuTTY, e por meio de um cliente SCP, como o WinSCP.

Ubuntu
A máquina virtual ubuntu é uma máquina Ubuntu 20.04 que possui o Docker instalado. Para iniciar a máquina virtual, execute o seguinte comando na raiz do projeto:


cd vms-ambiente-vagrant/ubuntu
vagrant up
Após a criação da máquina virtual, é possível acessá-la por meio do comando:


vagrant ssh
Debian
A máquina virtual debian é uma máquina Debian 10 que possui o Apache HTTP Server instalado. Para iniciar a máquina virtual, execute o seguinte comando na raiz do projeto:


cd vms-ambiente-vagrant/debian
vagrant up
Após a criação da máquina virtual, é possível acessá-la por meio do comando:


vagrant ssh
CentOS
A máquina virtual centos é uma máquina CentOS 8 que possui o MySQL Server instalado. Para iniciar a máquina virtual, execute o seguinte comando na raiz do projeto:


cd vms-ambiente-vagrant/centos
vagrant up
Após a criação da máquina virtual, é possível acessá-la por meio do comando:


vagrant ssh
Limpeza
Para remover todas as máquinas virtuais criadas, execute o seguinte comando na raiz do projeto:

make clean
Isso irá destruir todas as máquinas virtuais criadas e apagar todos os arquivos temporários gerados pelo Vagrant.

Conclusão
Neste projeto, aprendemos como utilizar o Vagrant para criar e gerenciar máquinas virtuais de forma automatizada. Vimos como definir as configurações de cada máquina virtual por meio de arquivos Vagrantfile, como realizar a instalação e configuração de softwares por meio de arquivos de provisionamento, e como utilizar o Makefile para automatizar tarefas comuns do projeto. Esperamos que este projeto seja útil para você em seus estudos e projetos futuros.