class filedemo {

	File {
		owner => 'root',
		group => 'root',
		mode  => '0660',

	}

	
	$homedir = "/root"
	$content = "my file content"

	
	file { "${homedir}/myfile.txt":
		content => $content,

	}


	file { "${homedir}/myfile2.txt":
		content => "myfile2 content",


	}

	file { "${homedir}/myfile3.txt":
		content => "myfile 3",
		owner   => admin,
		group   => root,


	}


	file { '/root/motd':
		ensure  => present,
		source	=> 'puppet:///modules/filedemo/motd',
		owner   => root,
		group   => root,
		mode    => '0664',	
	}
	
	file { '/etc/motd':
		ensure => link,
		target => '/root/motd',
	}

}
