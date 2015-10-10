class localusers{

	user { 'admin':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/adim',
		gid        => 'wheel',	
		managehome => true,
		password     => '$6$UQ1B46Zr$AY4Y4S8qPB7hT3aeSAr2IlkEdDGNhwka.bNGxVYDXQXIETymCVS35HHysvLeRmc4seWEGDRgpslTWUzVaxq.j1',
	}
	user { 'jeff':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/jeff',
		groups     => ['wheel', 'finance'],
		managehome => true,
	}
}
