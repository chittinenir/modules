class wordpress {
include wordpress::install
include wordpress::config
include wordpress::wordpress_file
include wordpress::exec
include wordpress::service
include wordpress::permissions
}
