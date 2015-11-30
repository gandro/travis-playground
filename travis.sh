set -ex

install() {
  sudo apt-get update
  sudo apt-get install -y $@
}

install libvirt-bin libxslt-dev libxml2-dev libvirt-dev zlib1g-dev
wget -nv https://releases.hashicorp.com/vagrant/1.7.4/vagrant_1.7.4_x86_64.deb
sudo dpkg -i vagrant_1.7.4_x86_64.deb
sudo vagrant plugin install vagrant-libvirt
sudo vagrant up --provider=libvirt
