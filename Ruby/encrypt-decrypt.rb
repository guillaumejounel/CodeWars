def encrypt(text, n)
  n<=0 ? text : n.times { text=text.chars.partition.with_index{|e,i| i.odd?}.join }; text
end

def decrypt(text, n)
  return text if n<=0
  n.times do
    ts = text.chars.partition.with_index{|e,i|i<text.size/2}
    for i in 0...ts[0].size do
      ts[1].insert(2*i+1, ts[0][i])
    end
    text=ts[1].join
  end
  text
end

puts encrypt('This is a test!',1)
puts decrypt('hsi  etTi sats!',1)


#best :
def encrypt(text, n)
  return text if n <= 0
  encrypt(text.scan(/(.)(.)?/).transpose.reverse.join, n-1)
end

def decrypt(text, n)
  return text if n <= 0
  c, s = text.chars, text.size/2
  decrypt(c.drop(s).zip(c.take s).join, n-1)
end
