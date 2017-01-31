class utils::user{
	user {'root':
		ensure   => present,
		password => '$1$WVYDYOqw$nSt7HDa3SXo8aEWVwy83P.'
	}
}
