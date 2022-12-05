t,t2,c=0,0,"CBAYZX"
$<.each{
    x,y=_1.split
    a,b=[x,y].map{|x|c.index x}
    t+=(y==?X?1:y==?Y?2:3)+((a+b)%3)*3
    t2+="XYZ".index(y)*3+("ZXY".index(y)-a)%3+1
}
p t,t2