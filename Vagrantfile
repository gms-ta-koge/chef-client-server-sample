Vagrant.configure("2") do |config|
  config.vm.define :chef_server do |vb|
    vb.vm.box = "bento/ubuntu-16.04"
    vb.vm.hostname = "chef-server"
    vb.vm.network :private_network, ip: "192.168.33.10"
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  config.vm.define :chef_node do |vb|
    vb.vm.box = "bento/ubuntu-14.04"
    vb.vm.hostname = "node"
    vb.vm.network :private_network, ip: "192.168.33.11"
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
end
