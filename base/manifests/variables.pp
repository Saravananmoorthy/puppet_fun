class base::variables {

	$localvar = "local variable defined in class base/variables"
	$topscope = "new top scope value"

	notify { "${topscope} is your top scope variable": }
	notify { "${::topscope} this is your very top scope variable": }
	notify { "${nodescope} is your node scope variable": }
	notify { "${localvar} is your local scope variable": }
	notify { "${::operatingsystem} is your operating system": }

}
