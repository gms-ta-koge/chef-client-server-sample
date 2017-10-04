sudo apt-get update -qq
sudo apt-get upgrade -y
sudo apt-get install -y ntp

# install
wget https://packages.chef.io/files/stable/chef-server/12.16.14/ubuntu/16.04/chef-server-core_12.16.14-1_amd64.deb
sudo dpkg -i chef-server-core_12.16.14-1_amd64.deb

# setup
sudo chef-server-ctl reconfigure

sudo chef-server-ctl install opscode-manage
sudo opscode-manage-ctl reconfigure
sudo chef-server-ctl reconfigure

# test
sudo chef-server-ctl test


# account
sudo chef-server-ctl user-create admin firstname lastname your@mail.address password --filename admin.pem
sudo chef-server-ctl org-create chef "Chef" --association admin --filename chef-validator.pem
