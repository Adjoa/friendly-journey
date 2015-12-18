class role::masterproxy {
  include profile::firewall
  include profile::haproxy
  include profile::masterkeepalived
}
