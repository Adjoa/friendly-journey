class role::webserver {
  include profile::firewall
  include profile::vhost
}
