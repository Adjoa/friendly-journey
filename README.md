# friendly-journey

### Description
Demonstrates the use of the role and profiles Puppet design pattern to 
<br> configure a pair of active-passive load balancers using HAProxy and 
<br> Keepalived to route traffic to a small cluster of webservers. 

### Requirements
This code was tested within the master-agent configuration of Puppet with
5 Vagrant virtual machines: 1 puppetmaster running Ubuntu 14.04, 2 webserver
nodes running Ubuntu 14.04 and 2 loadbalancer nodes running CentOS 6.6.
<br> Puppet version: 3.8.3

### Dependencies
To adopt these roles and profiles, the following Puppet modules must be installed
<br> using the `puppet module install` command:
<br> puppetlabs-apache
<br> puppetlabs-firewall
<br> puppetlabs-haproxy
<br> duritong-sysctl
<br> arioch-keepalived
