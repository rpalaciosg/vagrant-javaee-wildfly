# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version.
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # General virtualbox settings.
  config.vm.provider :virtualbox do |vb|
    vb.name = "JavaeeWildflyDev"
  end

  # General server configuration.
  #config.vm.box = "debian/jessie64"
  config.vm.box = "ubuntu/xenial64"
  #config.vm.box_url = "https://atlas.hashicorp.com/debian/boxes/jessie64"
  config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/xenial64"
  config.vm.host_name = "javaee-wildfly-dev"

  # Use vagrant-cachier plugin to cache downloaded files.
  # Installation: vagrant plugin install vagrant-cachier
  if Vagrant.has_plugin?("vagrant-cachier")
    # Cache downloads between the same base box
    config.cache.scope = :box
    config.cache.enable :apt #Cache de apt
    config.cache.enable :composer
  end

  # Adjust box memory size
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end


  # Define port forwarding for the application service, ...
  #config.vm.network :forwarded_port, host: 9994, guest: 9994
  #config.vm.network :forwarded_port, host: 9990, guest: 9990, autocorrect: true
 config.vm.network :forwarded_port, host: 9990, guest: 9991

  # ... the wildfly server ...
  config.vm.network :forwarded_port, host: 8080, guest: 8080, autocorrect: true

  # ... and the PostgreSQL Server.
  #config.vm.network :forwarded_port, host: 5432, guest: 15432
  config.vm.network :forwarded_port, host: 5432, guest: 5432

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  #config.vm.network :private_network, ip: "192.168.56.128", auto_config:true
  #Create private network using dhcp y auto_config
  #config.vm.network  "private_network", type: "dhcp"

  # Execute server setup scripts
  config.vm.provision "shell", path: "vagrant/boxUpdate.sh"
  config.vm.provision :reload
  config.vm.provision "shell", path: "vagrant/oracleJdk.sh"
  config.vm.provision "shell", path: "vagrant/postgreSql.sh"
  config.vm.provision "shell", path: "vagrant/wildfly.sh"
  #config.vm.provision "shell", path: "vagrant/boxCleanup.sh"
  config.vm.provision "shell", path: "vagrant/conclusion.sh"
end
