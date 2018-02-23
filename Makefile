all: up

up:

	vagrant destroy
	vagrant up --provider=hyperv