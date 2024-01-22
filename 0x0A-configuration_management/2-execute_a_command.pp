#Puppet mainfest that creates a manifest that kills a process named killmenow

exec { 'killmenow_process':
  command     => 'pkill -f "killmenow"',
  refreshonly => true,
  onlyif      => '/usr/bin/pgrep -f "killmenow"',
}
