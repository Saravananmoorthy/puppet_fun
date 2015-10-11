class ntp ($package) inherits ntp::params {

	package { 'ntp':
		name   => $package,
		ensure => present,
		
	}


	include ntp::file
	include ntp::service

}
