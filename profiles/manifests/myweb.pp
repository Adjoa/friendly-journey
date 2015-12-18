class profiles::myweb ( $portnum = hiera('apacheport'), $docroot = $::apache::params::docroot, ) {

  # include apache
  class { 'apache':
    default_vhost => false,
    log_formats   => { combined => '%{X-Forwarded-For}i %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\"'},
  }

  # set the port and modify the logs
  apache::vhost { 'first.example.com':
    port               => $portnum,
    docroot            => '/var/www/first',
    access_log_format  => 'combined',
    setenvif           => ['Request_URI "^/check\.txt$" dontlog',],
    access_log_env_var => "!dontlog",

  }

  # create the file check.txt to put the logs in
  file { "${docroot}/check.txt":
     ensure => present,
}


   # disable the appropriate firewalls
   firewall { '100 allow http and https access':
    dport   => [80, 443, 61613, 8140, $portnum],
    proto  => tcp,
    action => accept,
  }
  

}
