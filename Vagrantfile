# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "centos/7"
  config.vm.network "public_network"
  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.


  (1..2).each do |i|

    config.vm.define "centos-#{i}" do |node|

        config.vm.provider "hyper-v" do |node|

            node.name = "centos-#{i}"

        end

    end

    config.vm.provision "shell", inline: <<-SHELL
        yum install -y nmap curl wget telnet net-tools bind-utils
        mkdir ~/.ssh
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCxVtzh+a20P8VcqHf++whuZP60epgkoEag3xhAfIrpm7R+4QE3zlNrUH65lJaKSQaQ+q5OdCIYtXl6N1rfDxYAzYK235ievV11bePpkLL1Aq57Drdjp4eed0hieJ3/bbwKrC/Y8iZc3KbEUrUua7ofZeLzk0swhjEpcm9LjgIRO+sj+Pc5gmxfNGa8OiiuSZS/wEO9oN0gu1N5cgoGMVNaY70nHLQtAlL3aYeIjtugNF/gETBiUzVaOsZlreCcbX2kTew6hiyl5C9PLrLBrUBw59A5ydrad4rhwVkFwl6YgRgFldGn1BNlQLs59n+MchYQo9bdWlOEsenPk518BfWkJ7ehcm4qs3Y9vt7lnFEIXVI4Xt5SFhw/Qo6dMOnSv7ZQL320W1+io68nI0NnfBq+GvzD52qcaBZj/xQTqtgK7naUzVGh77Myx0fauOGHynQDS5zdLEfrGkR8XatPw0Yw2+m2mKVm6qgd/tfhDRX46Txf1J0SuYpEn/f6kvNU/AU8ljhwgDZIYJGkTUmU/ccmDKZdJfJcmf5y/RJ1/+24L/zGGDjhQKPCzx7mRdOTO41yALGo+vtSH3ncyCyFy9Kebgdj3paCY2uHr0ohTcEfPUc+tfRBCXf1KOU0/k4odeWITMKcnCA0xV+kJNhns7NihPrAMzbRncyptXdcCFheoQ== yomateod@DESKTOP-SR72DSK" >> ~/.ssh/authorized_keys
    SHELL

  end

end
