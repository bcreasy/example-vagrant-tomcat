# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  
  config.vm.forward_port 8080, 8080
  
  ## For masterless, mount your salt file root
  config.vm.share_folder "salt_file_root", "/srv", "salt/roots/"

  ## Use all the defaults:
  config.vm.provision :salt do |salt|
    salt.run_highstate = true
    salt.minion_config = "salt/minion.conf"
  end  
end
