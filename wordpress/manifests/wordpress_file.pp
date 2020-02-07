class wordpress::wordpress_file inherits wordpress {
file { '/var/www/html/wordpress/wp-config.php':
source       => '/tmp/wp-config-sample.php',
require => Class['wordpress::config'],
}
}
