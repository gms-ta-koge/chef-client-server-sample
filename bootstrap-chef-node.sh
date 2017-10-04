echo "set grub-pc/install_devices /dev/sda" | sudo debconf-communicate
sudo apt-get update -qq
sudo apt-get upgrade -y
sudo apt-get install -y ntp

https://packages.chef.io/files/stable/chef/13.5.3/ubuntu/14.04/chef_13.5.3-1_amd64.deb
sudo dpkg -i chef_13.5.3-1_amd64.deb
