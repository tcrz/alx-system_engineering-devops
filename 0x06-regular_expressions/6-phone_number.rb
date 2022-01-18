#!/usr/bin/env ruby
# regular expression must match a 10-digit phone number

ARGV[0].scan(/^\d{10}$/) {|match| print match}
print "\n"
