class wordpress::config inherits wordpress {
file { "/tmp/wp-config-sample.php" :
source => "puppet:///modules/wordpress/wp-config-sample.php",
before => Class['wordpress::wordpress_file']
}
file { "/tmp/latest.zip" :
source => "puppet:///modules/wordpress/latest.zip"
}
file { "/tmp/mysqlcommands" :
source => "puppet:///modules/wordpress/mysqlcommands"
}
}                                    
