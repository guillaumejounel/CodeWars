def scramble(str1,str2)
    str2.chars.all?{|i| str1.sub!(/^([^#{i}]*)#{i}/, '\1')}
end

scramble("rkqodlw", "world")

#My solution is to iterate for each char of str2 for each char, trying to pick the same char in str1

#The difficulty is that .delete(i) would delete every occurences and not only the first
#A good solution I found is to use a regex expression.
#sub(x, y) is a function where x is a regex expression and y a string to remplace the matched pattern.

#In "/^([^#{i}]*)#{i}/" :
#  ^  identify the start of string
# ([^#{i}]*) is a 0+ group of chars other than #{i} (=a char)
# #{i} is the first occurrence we need to delete

#As we remplace this pattern with '\1' which is a reference to the group of characters
#matched before the first occurence of #{i}, we obtain the desired result.

#If there is no match, the sub function returns nil and the ?all function returns false.

#Best solution on Codewars:
def scramble(s1,s2)
  s2.chars.uniq.all?{|x| s2.count(x)<=s1.count(x)}
end

#This is another strategy, much simpler: .uniq deletes the duplicates.
#Then the function checks that each unique char from s2 is present as many times or less in s2 than s1.
