<h1 align="center">Lab-Vagrant-VMs-OpenSSHServer-SSH-Putty-Winscp</h1>
<p align="center">
  <a href="#sobre">Sobre</a> •
  <a href="#tecnologias-utilizadas">Tecnologias Utilizadas</a> •
  <a href="#instalação-e-execução">Instalação e Execução</a> •
  <a href="#licença">Licença</a>
</p>
<br>
Tecnologias Utilizadas
Vagrant
VirtualBox
Makefile
Ubuntu
Debian
Windows
<br>
<p align="center">
  <img src="https://img.shields.io/badge/OS-Windows-informational?style=flat&logo=windows&logoColor=white&color=0078D6">
  <img src="https://img.shields.io/badge/OS-Ubuntu-informational?style=flat&logo=ubuntu&logoColor=white&color=E95420">
  <img src="https://img.shields.io/badge/OS-Debian-informational?style=flat&logo=debian&logoColor=white&color=A81D33">
  <img src="https://img.shields.io/badge/OS-CentOS-informational?style=flat&logo=centos&logoColor=white&color=262577">
  <img src="https://img.shields.io/badge/Tecnologia-Vagrant-informational?style=flat&logo=vagrant&logoColor=white&color=1868F2">
  <img src="https://img.shields.io/badge/Tecnologia-VirtualBox-informational?style=flat&logo=virtualbox&logoColor=white&color=183A61">
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
<br>
O projeto utiliza o Vagrant como gerenciador de máquinas virtuais e o VirtualBox como provedor. Além disso, é utilizado o Makefile para automatizar o processo de criação e destruição das máquinas virtuais.

<br>
Vagrant
O Vagrant é uma ferramenta open-source para construir e gerenciar ambientes de desenvolvimento virtualizados. Ele permite que você configure uma infraestrutura de máquinas virtuais em segundos, com configuração simples em um único arquivo.

Para instalar o Vagrant em seu sistema operacional, siga as instruções oficiais:
<br>


<h1>Instalação do Vagrant</h1>
<p>Para instalar o Vagrant em seu sistema operacional, siga os seguintes passos:</p>
<ol>
	<li>Acesse o site oficial do Vagrant em <a href="https://www.vagrantup.com/downloads">https://www.vagrantup.com/downloads</a></li>
	<li>Selecione o instalador adequado para o seu sistema operacional</li>
	<li>Execute o instalador e siga as instruções</li>
</ol>
<p>Para sistemas operacionais Windows e macOS, baixe o instalador do Vagrant em https://www.vagrantup.com/downloads. Depois, siga o assistente de instalação para concluir a instalação.</p>
<p>Para sistemas operacionais baseados em Linux, verifique as instruções específicas de sua distribuição em https://www.vagrantup.com/docs/installation.</p>
Observação: O passo "Clique no botão 'Download' no topo da página" foi removido porque o link https://www.vagrantup.com/downloads já direciona para a página de downloads.


<h1>Instalação do VirtualBox</h1>
<p>O VirtualBox é uma ferramenta open-source de virtualização, que permite a criação de máquinas virtuais em seu computador. Ele é amplamente utilizado em ambientes de desenvolvimento, testes e produção.</p>
<p>Para instalar o VirtualBox em seu sistema operacional, siga os seguintes passos:</p>
<ol>
	<li>Acesse o site oficial do VirtualBox em <a href="https://www.virtualbox.org/wiki/Downloads">https://www.virtualbox.org/wiki/Downloads</a></li>
	<li>Selecione o instalador adequado para o seu sistema operacional</li>
	<li>Execute o instalador e siga as instruções</li>
</ol>
<p>Para sistemas operacionais Windows e macOS, baixe o instalador do VirtualBox em https://www.virtualbox.org/wiki/Downloads. Depois, siga o assistente de instalação para concluir a instalação.</p>
<p>Para sistemas operacionais baseados em Linux, verifique as instruções específicas de sua distribuição em https://www.virtualbox.org/manual/ch02.html#idm703.</p>
Observação: O passo "Clique no botão 'Download' no topo da página" foi removido porque o link https://www.virtualbox.org/wiki/Downloads já direciona para a página de downloads. Além disso, a explicação sobre o VirtualBox foi mantida e a tag <br> foi removida para uma melhor organização do texto.
<br>


<h1>Makefile</h1>
<p>O Makefile é um arquivo utilizado para automatizar a construção de programas e tarefas repetitivas em um projeto. Ele permite que você defina regras para a construção do projeto, que serão executadas de forma automática quando você executar o comando make.</p>
<p>Para executar o Makefile neste projeto, abra um terminal e navegue até a pasta raiz do projeto. Em seguida, execute o comando <code>make</code> para subir todas as máquinas virtuais, ou <code>make clean</code> para removê-las.</p>
<p>Exemplo:</p>
<pre>
$ cd ~/caminho/do/projeto
$ make          # subir todas as máquinas virtuais
$ make clean    # remover todas as máquinas virtuais
</pre>
<p>Observação: É importante lembrar que o comando <code>make</code> só funcionará se o arquivo Makefile estiver presente na pasta raiz do projeto.</p>



<h1>Tecnologias Utilizadas nas Máquinas Virtuais</h1>
<p>As máquinas virtuais criadas neste projeto utilizam os seguintes sistemas operacionais e tecnologias:</p>
<ul>
  <li>maquina-ssh-server: Ubuntu 20.04, OpenSSH Server</li>
  <li>windows: Windows Server 2019, Putty, interface gráfica</li>
  <li>ubuntu: Ubuntu 20.04, Docker</li>
  <li>debian: Debian 10, Apache HTTP Server</li>
  <li>centos: CentOS 8, MySQL Server</li>
</ul>
<p>Cada máquina virtual possui um arquivo Vagrantfile, que define as configurações da máquina virtual, como o sistema operacional, a quantidade de memória e CPU, e as configurações de rede. Além disso, cada máquina virtual possui um arquivo provision.sh, que define as configurações de provision. Ou seja, as tarefas que serão executadas após a criação da máquina virtual.</p>
<h2>Maquina SSH Server</h2>
<p>A máquina virtual maquina-ssh-server é uma máquina Ubuntu 20.04 que tem como objetivo ser um servidor SSH, permitindo conexões remotas por meio do protocolo SSH. Para iniciar a máquina virtual, execute o seguinte comando na raiz do projeto:</p>
<code>cd vms-ambiente-vagrant/maquina-ssh-server
vagrant up</code>

<p>Após a criação da máquina virtual, é possível acessá-la por meio do comando:</p>
<code>vagrant ssh</code>

<h2>Windows</h2>
<p>A máquina virtual windows é uma máquina Windows 10 que possui o PuTTY e o WinSCP instalados. Para iniciar a máquina virtual, execute o seguinte comando na raiz do projeto:</p>
<code>cd vms-ambiente-vagrant/windows
vagrant up</code>

<p>Após a criação da máquina virtual, é possível acessá-la por meio de um cliente SSH, como o PuTTY, e por meio de um cliente SCP, como o WinSCP.</p>
<h2>Ubuntu</h2>
<p>A máquina virtual ubuntu é uma máquina Ubuntu 20.04 que possui o Docker instalado. Para iniciar a máquina virtual, execute o seguinte comando na raiz do projeto:</p>
<code>cd vms-ambiente-vagrant/ubuntu
vagrant up</code>

<p>Após a criação da máquina virtual, é possível acessá-la por meio do comando:</p>
<code>vagrant ssh</code>

<h2>Debian</h2>
<p>A máquina virtual debian é uma máquina Debian 10 que possui o Apache HTTP Server instalado. Para iniciar a máquina virtual, execute o seguinte comando na raiz do projeto:</p>
<code>cd vms-ambiente-vagrant/debian
vagrant up</code>

<p>Após a criação da máquina virtual, é possível acessá-la por meio do comando:</p>
<code>vagrant ssh</code>

<h2>CentOS</h2>
<p>A máquina virtual centos é uma máquina CentOS 8 que possui o MySQL Server instalado. Para iniciar a máquina virtual, execute o seguinte comando na raiz do projeto:</p>
<code>cd vms-ambiente-vagrant/centos
vagrant up</code>

<p>Após a criação da máquina virtual, é possível acessá-la por meio do comando:</p>
<pre><code>vagrant ssh</code></pre>
<p>Para remover todas as máquinas virtuais criadas, execute o seguinte comando na raiz do projeto:</p>
<pre><code>make clean</code></pre>
<p>Isso irá destruir todas as máquinas virtuais criadas e apagar todos os arquivos temporários gerados pelo Vagrant.</p>
<h3>Conclusão</h3>
<p>Neste projeto, aprendemos como utilizar o Vagrant para criar e gerenciar máquinas virtuais de forma automatizada. Vimos como definir as configurações de cada máquina virtual por meio de arquivos Vagrantfile, como realizar a instalação e configuração de softwares por meio de arquivos de provisionamento, e como utilizar o Makefile para automatizar tarefas comuns do projeto. Esperamos que este projeto seja útil para você em seus estudos e projetos futuros.</p>
