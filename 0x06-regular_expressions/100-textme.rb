#!/usr/bin/env ruby
# Requirements:1)Your script should output: [SENDER],[RECEIVER],[FLAGS]. 2)The sender phone number or name (including country code if present). 3)The receiver phone number or name (including country code if present). 4)The flags that were used

a = false
ARGV[0].scan(/(from|to|flags)(:)([\w+-:]+)/){
|match|
print "," if a==true
print "#{match[2]}"
a=true
}
print "\n"
