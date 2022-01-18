#!/usr/bin/env ruby
# case to match: https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/f8dbcb9cf5ae569a8645027dc46e81cb372ce28e.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220118T122219Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=cb513589f518e94663038f8e08bea5c4c3d402ed71b138cbb912f2e6b63bf7e5

ARGV[0].scan(/hbn|hbt{1,4}n/) {|match| print match}
print "\n"
