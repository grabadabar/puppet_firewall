class proile::impala {
   include impala
   firewall { '001 accept tcp port 21000, 21050':
      port =>  [21000, 21050],
	  proto => tcp,
	  source => [195.238.163.135, 172.25.48.0/24],
	  action => accept,
	}->
	firewall { '002 drop other':
	port => [ 21000, 21050 ],
	proto => tcp,
	action => ' drop',
	}
}	
