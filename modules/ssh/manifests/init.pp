class ssh {
	package {
		"openssh-server": ensure => installed;
	}

	file { "/etc/ssh/sshd_config":
		source  => [
			# from modules/ssh/files/sshd_config
			"puppet:///modules/ssh/files/sshd_config",
		],
		mode    => 444,
		owner   => root,
		group   => root,
		# package must be installed before configuration file
		require => Package["openssh-server"],
	}

	service { "ssh":
		# automatically start at boot time
		enable     => true,
		# restart service if it is not running
		ensure     => running,
		# "service sshd status" returns useful service status info
		hasstatus  => true,
		# "service sshd restart" can restart service
		hasrestart => true,
		# package and configuration must be present for service
		require    => [ Package["openssh-server"],
			        File["/etc/ssh/sshd_config"] ],
		# changes to configuration cause service restart
		subscribe  => File["/etc/ssh/sshd_config"],
	}
	
	ssh_authorized_key { "alajaji":
    	user => "ubuntu",
		key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCrFq80b0ptexNiI6KP4hxww5d5RFm8djIpsdJqRZDyoyD5vaf7d30bTLef8su6stHuBBjKccMcUjNyu4BliJBXIy7bKVDllVB5oeLFizDahQcgqjYfzyqj16uEa7NLBW5/3ljLpPX8XEI7YFM/hg65JFgpQIAiBi2N6bGj9mQrh/51SpCO6FruQH8KVjDl/CLgbnFq9cDwRDAo4tvPO1b0MRVrvM8BbZbBUHqV/093jVXkwY+BxsU6cgOnHrSmoTnH4MqMXUI/ok31JORVbWW5NAz28Ag7V/NbDvRBIYicJOd9aqEST/L812+tmnE8iQzn3bZvv7v0E7FHneCS5Qpz",
		}
	ssh_authorized_key{ "ashears_keypair":
    	user => "ubuntu",
		key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCS3/p12kyu5NX33GmzGRScz6iNbeOAw3ipgXH2hMEVNNWjzwM+kTU2J8iEZs2haLnxIHBjU1uGMcC3zH7VZjK4ZVy+Nn8SWoCrqRupo3LMVHtd3Feh6Ke/cQuGRdpYdaCx8KHzaTKFLaeKJdXnCmEzIwhsfhGwitdECgt6VNpWNdGtiG95z2260sZsG74+BQPkAQzjVJ6ijWCkm+ir0pxU3UcyuSq5hKJNDO576mrA0QRSpFdxTzfr7o2Ab8Qa2erqQdx70IbN50EwejnlC2XvxMnK/mEbZCkzHcrOxAwjXsKpegSwP/otKYmGmIJ2HIodMrtJda8UAToPPS8DT1T/",
	}
}
