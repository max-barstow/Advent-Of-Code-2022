a=[0];$<.each{_1==$/?a<<0:a[~0]+=_1.to_i}
p a.max
p a.max(3).sum