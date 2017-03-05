#list numbers in [a, b] that have the following property:
#the number and its sum of digits raised to the consecutive powers are equal

def sum_dig_pow(a, b)
    (a..b).collect do |n|
        tab = n.to_s.chars
        sum = 0
        for i in 0...tab.length
            sum += tab[i].to_i**(i+1)
        end
        sum == n ? n : nil
    end.compact
end

puts sum_dig_pow(1,100).inspect


#Better solution :

def sum_dig_pow(a, b)
  (a...b).select { |n| n == n.to_s.chars.map.with_index(1) { |e, i| e.to_i ** i }.reduce(:+) }
end
#pour chacun, avec l'index à partir de 1 <=> .map.with_index(1) { |e, i| ... }

puts sum_dig_pow(1,100).inspect
