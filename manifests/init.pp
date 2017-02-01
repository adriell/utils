class utils{
	include utils::user
	
	package{"mailutils":
		ensure	 => present,
	}
	
	package{"postfix":
		ensure  => present,
	}
	package{["libsasl2-2", "libsasl2-modules"]:
		ensure  => present,
	}
	package{"ca-certificates":
		ensure => present,
	}
	file{"/opt/jobreport.sh":
		ensure 	=> file,
		mode 	=> '0755',
		owner 	=> 'root',
		group	=> 'root',
		source  => 'puppet:///modules/utils/jobreport.sh'
	}
	file{"/opt/schedule.sh":
                ensure  => file,
                mode    => '0755',
                owner   => 'root',
                group   => 'root',
                source  => 'puppet:///modules/utils/schedule.sh'
        } 
}
