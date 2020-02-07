class wordpress::exec  inherits wordpress {
exec { "Set MySQL server root password":
path => "/bin:/usr/bin",
command => "mysqladmin -uroot password rootpassword && touch /var/file1",
creates => "/var/file1"
}
exec { "Executing mysqlcommands":
path => "/bin:/usr/bin",
command => "mysql -uroot -prootpassword < /tmp/mysqlcommands && touch /var/file2",
creates => "/var/file2"
}
exec { 'unzip':                                                                                                             
command     => 'unzip -o /tmp/latest.zip -d /var/www/html',                                                                 
cwd         => '/tmp/',                                                                                                     
path        => '/usr/bin/',                                                                                                 
creates     => '/var/www/html/wordpress/index.php'                                                                          
}
}
