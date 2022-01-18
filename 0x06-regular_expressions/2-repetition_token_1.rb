#!/usr/bin/env ruby
# case to match: https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/c59ff11db195d5cf17d1790a5141ae2f234786d2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220118T122219Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=f6cd33a0bb35426ded13682805d2e1e3c362be6fa1f93a8a312219a9333b25e3


ARGV[0].scan(/htn|hbtn/) {|match| print "#{match}"}
puts "\n"
