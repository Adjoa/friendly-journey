# friendly-journey

### Description
Demonstrates the use of role and profiles to configure pair of active-passive 
load-balancers using HAProxy and Keepalived to route traffic to a small cluster 
of webservers. 

### Requirements
This code was tested within the master-agent configuration of Puppet with
5 Vagrant virtual machines: 1 puppetmaster running Ubuntu 14.04, 2 webserver
nodes running Ubuntu 14.04 and 2 loadbalancer nodes running CentOS 6.6.
<br> Puppet version: 3.8.3

### Dependencies
The following puppet modules are required for these roles and profiles to work:
<br> puppetlabs-apache
<br> puppetlabs-firewall
<br> puppetlabs-haproxy
<br> duritong-sysctl
<br> arioch-keepalived
