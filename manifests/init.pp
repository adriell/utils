class utils{
	
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
}
