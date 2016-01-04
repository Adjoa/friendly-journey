# friendly-journey

### Description
The code in this repository demonstrates the use of the ‘role and profiles’ Puppet design pattern to configure a pair of active-passive load balancers (using HAProxy and Keepalived) to route traffic to a small cluster of webservers.

The ‘roles and profiles’ design pattern is an abstraction that is used to organise Puppet code. It enables users to glean the information that is most useful to them without a necessarily in-depth knowledge of the Puppet language. It is a bridge between business logic (roles) and the technology needed to deploy it (profiles). 

For the business logic level, the `loadbalancer_primary` and `loadbalancer_passive` roles were created to represent the active and passive load balancers. These roles grouped together the profiles for each of the following components: firewall, haproxy and keepalived.

The `firewall` profile ensures that the ports required for nodes to be accessible to the Puppet master and the web remain open. The `haproxy` profile describes the web server nodes, enables IP forwarding and binds the load balancer to a virtual IP address. The `keepalived` profiles distinguish between the active and passive load balancers.


### Requirements
This code was tested within the master-agent configuration of Puppet with 5 Vagrant virtual machines: 1 puppetmaster running Ubuntu 14.04, 2 webserver nodes running Ubuntu 14.04 and 2 loadbalancer nodes running CentOS 6.6.
<br> Puppet version: 3.8.3

### Dependencies
To adopt these roles and profiles, the following Puppet modules must be installed
<br> using the `puppet module install` command:
<br> puppetlabs-apache
<br> puppetlabs-firewall
<br> puppetlabs-haproxy
<br> duritong-sysctl
<br> arioch-keepalived
