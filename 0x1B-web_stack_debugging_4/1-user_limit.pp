# sets user open files limit to higher value
exec { "sed -i -E '56s/[0-9]+/5000/;57s/[0-9]+/5000/' /etc/security/limits.conf":
path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ]
}

