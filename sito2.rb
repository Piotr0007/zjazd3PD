def sito(x=2,y)
n = x..y
o = []
p = []
  for i in n
    next if o.include? i
     ii = i *2
      while ii <= n.last do
	o << ii
	ii  = ii +i
      end	
 p << i unless o.include?(i)
puts i
  end
end

sito(50)


