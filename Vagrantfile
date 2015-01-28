# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
HOSTMANAGER_PLUGIN_INSTALLED = Vagrant.has_plugin?('vagrant-hostmanager')
CACHIER_PLUGIN_INSTALLED = Vagrant.has_plugin?('vagrant-cachier')
OMNIBUS_PLUGIN_INSTALLED = Vagrant.has_plugin?('vagrant-omnibus')
LIBRARIAN_CHEF_PLUGIN_INSTALLED = Vagrant.has_plugin?('vagrant-librarian-chef')

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Toda a configuração do Vagrant é feita aqui. Para uma referencia completa,

  config.vm.hostname = "stant.dev"

  config.vm.box = "precise64"

  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|      
    vb.customize [
      "modifyvm", :id,
      "--name", config.vm.hostname,
      "--memory", "1024",
      "--cpus", "2"
    ]
  end

  config.vm.network "private_network", ip: "192.168.107.49"

  config.vm.synced_folder "~/Documents/PROJETOS/RUBY/", "/var/www/projetos" 

  if CACHIER_PLUGIN_INSTALLED
    config.cache.scope = :box
  end

  if HOSTMANAGER_PLUGIN_INSTALLED
    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true
  end

  if LIBRARIAN_CHEF_PLUGIN_INSTALLED
    
    config.omnibus.chef_version = "11.16" if OMNIBUS_PLUGIN_INSTALLED

    config.librarian_chef.cheffile_dir = "chef/vendor/"
  
    config.vm.provision "chef_solo" do |chef|
      chef.cookbooks_path = [
        "chef/cookbooks",
        "#{config.librarian_chef.cheffile_dir}/cookbooks"
      ]

      chef.add_recipe "base"
      chef.add_recipe "rails-base"
    end

  end

end
