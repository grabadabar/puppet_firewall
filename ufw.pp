file { 'ufw.sh':        
     #source => 'puppet:///modules/mymodule/ufw.sh',
     path  => '/usr/local/bin/ufw.sh',
     ensure => present,
     mode  =>0744,
     notify => Exec['ufw'],
}
exec { 'ufw':
command => '/usr/local/bin/ufw.sh',
refreshonly => true,
}
