def findNextSquare(n)
    if Math.sqrt(n)%1 == 0
        ((Math.sqrt(n)+1)**2).to_i
    else
        -1
    end
end

puts findNextSquare(9)

#.is_a? Integer
