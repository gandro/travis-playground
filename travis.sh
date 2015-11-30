set -ex

sudo apt-get update -q
sudo apt-get install -q virtualbox --fix-missing
wget -nv https://releases.hashicorp.com/vagrant/1.7.4/vagrant_1.7.4_x86_64.deb
sudo dpkg -i vagrant_1.7.4_x86_64.deb
sudo vagrant up
