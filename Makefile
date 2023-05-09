# Definir variáveis
VAGRANT = vagrant

# Definir regras
.PHONY: all
all: ssh-server windows ubuntu debian centos

.PHONY: ssh-server
ssh-server:
	cd vms-ambiente-vagrant/maquina-ssh-server && $(VAGRANT) up

.PHONY: windows
windows:
	cd vms-ambiente-vagrant/windows && $(VAGRANT) up

.PHONY: ubuntu
ubuntu:
	cd vms-ambiente-vagrant/ubuntu && $(VAGRANT) up

.PHONY: debian
debian:
	cd vms-ambiente-vagrant/debian && $(VAGRANT) up

.PHONY: centos
centos:
	cd vms-ambiente-vagrant/centos && $(VAGRANT) up

# Remover todas as máquinas virtuais
# .PHONY: clean
# clean:
# 	cd vms-ambiente-vagrant/maquina-ssh-server && $(VAGRANT) destroy -f
# 	cd vms-ambiente-vagrant/windows && $(VAGRANT) destroy -f
# 	cd vms-ambiente-vagrant/ubuntu && $(VAGRANT) destroy -f
# 	cd vms-ambiente-vagrant/debian && $(VAGRANT) destroy -f
# 	cd vms-ambiente-vagrant/centos && $(VAGRANT) destroy -f
