#kills a process named killmenow
exec { 'pkill killmenow':
  path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ]
}
