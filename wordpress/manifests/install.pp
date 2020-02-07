class wordpress::install inherits wordpress {
package {"apache2":
ensure => present,
}
# To install packages needed
package {"mysql-server":
ensure => present,
}
package {"mysql-client":
ensure => present,
}
package {"php":
ensure => present,
}
package {"libapache2-mod-php":
ensure => present,
}
package {"php-mcrypt":
ensure => present,
}
package {"php-mysql":
ensure => present,
}
package {"unzip":
ensure => present,
}
}
