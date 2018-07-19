class apache2 {
	package {
		"apache2": ensure => installed;
	}

	file { "/etc/apache2/apache2.conf":
		source  => "puppet:///modules/apache2/apache2.conf",
		mode    => 644,
		owner   => root,
		group   => root,
		# package must be installed before configuration file
		require => Package["apache2"],
	}

	file { "/var/www/html/index.html":
		source  => "puppet://modules/apache2/index.html",
		mode    => 644,
		owner   => ubuntu,
		group   => ubuntu,
		recurse => true,
		require => Package["apache2"],
	}	
	
	service { "apache2":
		# automatically start at boot time
		enable     => true,
		# restart service if it is not running
		ensure     => running,
		# "service sshd status" returns useful service status info
		hasstatus  => true,
		# "service sshd restart" can restart service
		hasrestart => true,
		# package and configuration must be present for service
		require    => [ Package["apache2"],
			        File["/etc/apache2/apache2.conf"], 
				File["/var/www/html/index.html"] ],
		# changes to configuration cause service restart
		subscribe  => File["/etc/apache2/apache2.conf"],
	}
}
