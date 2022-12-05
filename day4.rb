t,e=0,0;$<.each{a,b,c,d=_1.tr(?-,?,).split(?,).map &:to_i
t+=(a<=c&&b>=d)||(c<=a&&d>=b)? 1:0
e+=(a<=c&&c<=b)||(c<=a&&a<=d)? 1:0}
p t
p e