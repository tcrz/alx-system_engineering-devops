#!/usr/bin/env ruby
# The regular expression must match School


ARGV[0].scan(/School/) {|match| print match }
puts "\n"
