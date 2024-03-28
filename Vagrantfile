Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/focal64"
  # config.vm.box_url = "config.vm.box = "ubuntu/focal64""
#  config.vm.network "public_network", :bridge => 'eth0', :mac => "5CA1AB1E0001"
      config.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      end
  # config.vm.synced_folder "./", "/var/www/html"
  # config.hostsupdater.remove_on_suspend = true
  # config.vm.network :private_network, ip: "192.168.3.10"
  # config.vm.hostname = "launchpad6.dev"
  # config.hostsupdater.aliases = ["www.launchpad6.dev", "manager.launchpad6.dev"]

#####################################################################################################
#  config.vm.provision :shell, path: "bootstrap.sh"
# config.vm.provision :chef_solo do |chef|
    # This path will be expanded relative to the project directory
  #  chef.cookbooks_path = "cookbooks"
#    chef.cookbooks_path = ["./cookbooks","./site-cookbooks"]
#    chef.add_recipe("apache2")
#    chef.add_recipe("git")
#    chef.json = { :apache2 => { :default_site_enabled => true } }
#  end

######################################################################################################


config.vm.provision :chef_solo do |chef|
    chef.roles_path = "roles"
    chef.arguments = "--chef-license accept"
    chef.data_bags_path = "data_bags"
    chef.cookbooks_path = ["./site-cookbooks", "./cookbooks"]
    chef.add_role "vagrant-test-box"
end













end
  
