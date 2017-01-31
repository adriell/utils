class utils{
	include utils::user
	
	package{"mailutils":
		ensure	 => present,
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
