# Defines the default firewall settings
class profile::firewall(
  $portnum = hiera('apacheport'),
){
   firewall { '101 allow access to http, https and, puppet services':
     dport   => [80, 443, 61613, 8140, $portnum],
     proto  => tcp,
     action => accept,
  }
}
