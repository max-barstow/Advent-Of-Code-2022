a=$<.read
b=->n{p n+a.index(a.chars.each_cons(n).find{_1.uniq.size>n-1}*'')}
b[4]
b[14]