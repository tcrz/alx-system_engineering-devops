#  create a file in /tmp with permission:0744, owner:www-data group:www-data content:'I love Puppet'
file { '/tmp/school':
  ensure  => present,
  mode    => '0744',
  owner   => www-data,
  group   => www-data,
  content => 'I love Puppet',
}
