#This puppet manifest install flask from pip3

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install Flask==2.1.0',
  path        => ['/usr/bin', '/usr/local/bin'],
  creates     => '/usr/local/lib/python3.*/dist-packages/Flask-2.1.0*',
  refreshonly => true,
}
