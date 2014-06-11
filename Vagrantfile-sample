# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Toda a configuração do Vagrant é feita aqui. Para uma referencia completa,
  # visite a documentação oficial em vagrantup.com

  config.vm.hostname = "arthurms.dev"

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
  
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.network "private_network", ip: "192.168.107.#{(10..254).to_a.sample}"

  config.ssh.forward_agent = true

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  
  config.vm.synced_folder "~/projects/arthurms", "/var/www", type: "nfs"

  config.librarian_chef.cheffile_dir = "chef/vendor/"
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = [
      "chef/cookbooks", 
      "#{config.librarian_chef.cheffile_dir}/cookbooks"
    ]

    chef.add_recipe "base"
  end

end
