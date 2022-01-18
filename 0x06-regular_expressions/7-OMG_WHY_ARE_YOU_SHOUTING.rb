#!/usr/bin/env ruby
# regular expression must be only matching: capital letters

ARGV[0].scan(/[A-Z]/) {|match| print match}
print "\n"
