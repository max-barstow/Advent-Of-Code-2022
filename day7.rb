class DIR
    def initialize;@f=[]end
    def push n;@f<<n end
    def sum;@f.sum{_1.class==Integer ?_1:_1.sum}end
end
dirs,current_dirs={"/"=>DIR.new},[]
$<.each{
    a=_1.chop.split
    if a[0]==?$then a[2]==".."?current_dirs.pop: current_dirs<<a[2]if a[1]=="cd"
    elsif a.size==2 then dirs[current_dirs*?/].push a[0]=="dir"?dirs["#{current_dirs*?/}/#{a[1]}"]=DIR.new: a[0].to_i
    end
}
p dirs.values.sum{_1.sum<=1e5?_1.sum: 0}
p (dirs.values.map{dirs[?/].sum-_1.sum<4e7? _1.sum: p}-[p]).min