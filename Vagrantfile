# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.
  config.vm.box = "ubuntu/trusty32"

#  config.vm.network "forwarded_port", guest: 3000, host: 3000
#  config.vm.network "forwarded_port", guest: 4000, host: 4000

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.name = "Hubot"
    vb.cpus = 1
  end

  config.vm.provision "shell", path: "prereqs.sh", privileged: false

  # sync the "bot" folder so you can develop locally and test the results on the VM
  config.vm.synced_folder "./scripts", "/home/vagrant/bot/scripts"
#  config.vm.provision "shell", path: "autoDev.sh", privileged: false
end
