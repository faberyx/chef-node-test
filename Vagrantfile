# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.hostname = 'fdm-local-berkshelf'
  if Vagrant.has_plugin?("vagrant-omnibus")
    config.omnibus.chef_version = 'latest'
  end
  config.vm.box = "centos/7"
  config.vm.synced_folder ".", "/home/vagrant/sync", disabled: true
  config.vm.hostname = "fdm-development-centos"
  config.vm.network :private_network, type: 'dhcp'
  #config.vm.network(:public_network, {:bridge=>"eth1", :ip=>"10.226.12.98", :mac=>"000C296E471E"})
  config.vm.network "forwarded_port", guest: 5432, host: 5431 #postgres
  config.vm.network "forwarded_port", guest: 6379, host: 6378 #redis
  config.vm.network "forwarded_port", guest: 27017, host: 27016 #mongodb
  config.berkshelf.enabled = true
  config.vm.provision :chef_solo do |chef|
   
    
    chef.run_list = [
      'recipe[fdm-local::default]'
    ]
  end
end