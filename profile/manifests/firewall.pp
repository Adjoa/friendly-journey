# Submitted by: Adjoa Darien
# Last updated: Dec-22-2015
# Defines the default firewall settings
class profile::firewall(
  $portnum = hiera('apache_port'),
){
   firewall { '101 allow access to http, https and, puppet services':
     dport   => [80, 443, 61613, 8140, $portnum],
     proto  => tcp,
     action => accept,
  }
}
