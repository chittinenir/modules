# == Class: ntp::config
class ntp::config inherits ntp {

  file { '/etc/ntp.conf':
    content => template("${module_name}/ntp.conf"),
  }
}
