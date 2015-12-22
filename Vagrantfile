# -*- mode: ruby -*-
# vi: set ft=ruby :

# the nodes will be called nodename.example.com
# you can change this here
DOMAIN="example.com"

# this will be the prefix to the subnet they use
SUBNET="10.80.15"

Vagrant.configure(2) do |config|
# Puppet Master
  config.vm.define "puppet" do |puppet|
    puppet.vm.box = "ubuntu/trusty64"
    puppet.vm.hostname = "puppet.#{DOMAIN}"
    puppet.vm.network "private_network", ip: "#{SUBNET}.200"

  end
  
# Web Servers  
  config.vm.define "http1" do |http1|
    http1.vm.box = "ubuntu/trusty64"
    http1.vm.hostname = "http1.#{DOMAIN}"
    http1.vm.network "private_network", ip: "#{SUBNET}.101"
  end

  config.vm.define "http2" do |http2|
    http2.vm.box = "ubuntu/trusty64"
    http2.vm.hostname = "http2.#{DOMAIN}"
    http2.vm.network "private_network", ip: "#{SUBNET}.102"
  end
  
# Load Balancers
  config.vm.define "lb1" do |lb1|
    lb1.vm.box = "puppetlabs/centos-6.6-64-nocm"
    lb1.vm.hostname = "lb1.#{DOMAIN}"
    lb1.vm.network "private_network", ip: "#{SUBNET}.103"
  end

  config.vm.define "lb2" do |lb2|
    lb2.vm.box = "puppetlabs/centos-6.6-64-nocm"
    lb2.vm.hostname = "lb2.#{DOMAIN}"
    lb2.vm.network "private_network", ip: "#{SUBNET}.104"
  end
end
