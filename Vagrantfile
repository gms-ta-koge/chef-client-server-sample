Vagrant.configure("2") do |config|
  config.vm.define :chef_server do |host|
    host.vm.box = "bento/ubuntu-16.04"
    host.vm.hostname = "chef-server"
    host.vm.network :private_network, ip: "192.168.33.10"
    host.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    host.vm.provision :shell, privileged: false, path: "bootstrap-chef-server.sh"
  end

  config.vm.define :chef_node do |host|
    host.vm.box = "bento/ubuntu-14.04"
    host.vm.hostname = "chef-node"
    host.vm.network :private_network, ip: "192.168.33.11"
    host.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
    host.vm.provision :shell, privileged: false, path: "bootstrap-chef-node.sh"
  end
end
