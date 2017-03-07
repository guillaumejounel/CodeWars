#returns the number of special steps needed to obtain a palindrome.
#The special step is: "reverse the digits, and add to the original number"

def palindrome_chain_length(n)
    n.to_s == n.to_s.reverse ? 0 : 1 + palindrome_chain_length(n + n.to_s.reverse.to_i)
end

#best solution:
#Did exactly the same to the letter! Yay!
