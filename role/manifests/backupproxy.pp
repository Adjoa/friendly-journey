class role::backupproxy {
  include profile::firewall
  include profile::haproxy
  include profile::backupkeepalived
}

