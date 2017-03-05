def goodVsEvil(good, evil)
    sum = good.split.map(&:to_i).zip([1,2,3,3,4,10]).map{|x,y| x*y}.reduce(&:+) - evil.split.map(&:to_i).zip([1,2,2,2,3,5,10]).map{|x,y| x*y}.reduce(&:+)
    sum == 0 ? "Battle Result: No victor on this battle field" : sum > 0 ? "Battle Result: Good triumphs over Evil" : "Battle Result: Evil eradicates all trace of Good"
end

puts goodVsEvil('1 0 0 0 0 0', '1 0 0 0 0 0 0')
