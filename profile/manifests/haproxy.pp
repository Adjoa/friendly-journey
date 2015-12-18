class profile::haproxy ( 
  $portnum = hiera('apacheport') 
){
  class { 'haproxy': }
  
  haproxy::listen { 'puppet00':
    collect_exported => false,
    ipaddress        => '10.80.15.109',
    ports            => "${portnum}",
    options          => { 'mode' => 'http', },
  }

  haproxy::balancermember { 'http1':
    listening_service => 'puppet00',
    server_names      => 'http1.example.haproxy',
    ipaddresses       => '10.80.15.101',
    ports             => $portnum,
    options           => 'check',
  }

  haproxy::balancermember { 'http2':
    listening_service => 'puppet00',
    server_names      => 'http2.example.haproxy',
    ipaddresses       => '10.90.15.102',
    ports             =>  $portnum,
    options           => 'check',
  }

 # Enable forwarding
  sysctl::value { "net.ipv4.ip_forward": 
    value => "1", 
  }
   
  sysctl::value { "net.ipv4.ip_nonlocal_bind": 
    value => "1", 
  }
}
