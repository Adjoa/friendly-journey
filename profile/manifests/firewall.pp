class profile::firewall(
  $portnum = hiera('apacheport'),
){
   firewall { '100 allow http and https access':
     dport   => [80, 443, 61613, 8140, $portnum],
     proto  => tcp,
     action => accept,
  }
}
