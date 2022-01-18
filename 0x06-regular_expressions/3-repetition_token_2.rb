#!/usr/bin/env ruby
# case to match: https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/3b6bf4aeca6a0c2de584e7f5d68d11eef57ce205.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20220118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220118T122219Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=65877574bad5fcbafe8f2d8ead3d225d0108e87021ce5eb66b94a4617fd8acb3

ARGV[0].scan(/[h]bt*n/) { |match| print match }
puts "\n"
