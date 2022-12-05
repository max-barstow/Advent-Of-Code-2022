c,t,e=$<.to_io,0,0
c.each{a,b=_1.chop.split /(?<=\A.{#{_1.size/2}})/
t+=((?`..?z).to_a+(?A..?Z).to_a).index (a.chars&b.chars)[0]}
p t
c.seek(0)
c.each_slice(3){e+=((?`..?z).to_a+(?A..?Z).to_a).index _1.map(&:chars).reduce(:&)[0]}
p e