s=Array.new(9){[]}
$<.each{
    a=_1.scan(/((\[(\w)\])|(    ))/).map{|x|x[2]}
    a==[]?break: 0.upto(9){|i|a[i]? s[i].prepend(a[i]): 0}
}
x=0.upto(8).map{s[_1].dup}
gets
$<.each{
    a,b,c=_1.scan(/\d+/).map &:to_i
    s[c-1]+=s[b-1].pop(a).reverse
    x[c-1]+=x[b-1].pop(a)
}
puts s.map{_1[~0]}*''
puts x.map{_1[~0]}*''
