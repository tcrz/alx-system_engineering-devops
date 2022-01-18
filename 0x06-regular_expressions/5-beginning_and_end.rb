#!/usr/bin/env ruby
# Requirements: 1) The regular expression must be exactly matching a string that starts with h ends with n and can have any single character in between. 2) Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

ARGV[0].scan(/h.n/) {|match| print match}
print "\n"
