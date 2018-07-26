node ip-10-0-2-32 {
	include sshd
	cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master",
	    user    => root,
	    minute  => "*/5",
	}
}

node ip-10-0-2-181 {
	include apache2
	include sshd
	include user
}

node ip-10-0-2-73 {
	include apache2
	include sshd
	include user
}

