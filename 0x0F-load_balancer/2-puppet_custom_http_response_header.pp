# creating a custom HTTP header response, but with Puppet
# Puppet manifest to install nginx
package { 'nginx':
  ensure => installed,
}

file_line { 'aaaaa':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
}

file_line { 'add custom header':
  ensure => 'present',
  path   => '/etc/nginx/sites-enabled/default',
  after  => ''listen 80 default_server;',
  line   => 'add_header X-Served-By $hostname;',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}

