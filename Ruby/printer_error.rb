def printer_error(s)
	s.chars.select{|i| i>"m"}.count.to_s + "/" + s.chars.count.to_s
end

puts printer_error("aaaxbbbbyyhwawiwjjjwwm")

#better :

def printer_error(s)
  "#{s.count('n-z')}/#{s.length}"
end

#tip: .count('n-z')
