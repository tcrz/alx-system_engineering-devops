#!/usr/bin/env ruby
# Find the regular expression that will match the given case: https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/e7db3c377d46453588fc84f3a975661d142fee91.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220118T122219Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=9e066d3a4f135e6f35b7ea673d0469b1d548b374a554b7fb9b58b188b12f1a57
 


ARGV[0].scan(/hbt{2,5}n/) { |match| print match}
puts "\n"
