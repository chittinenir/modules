class wordpress::permissions inherits wordpress {
file  {'/var/www/html/wordpress':
    owner   =>  'www-data',
    group   =>  'root',
    ensure  =>  directory,
    recurse => true,
    mode    => '0775',
}
}
