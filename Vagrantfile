# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", 1024]
  end

  #StreamParse
  config.vm.define :streamparse, primary: true do |streamparse|
    streamparse.vm.hostname = 'streamparse'
    #provisioning
    streamparse.vm.provision :shell, :path => "streamparse-setup.sh"
  end
end
