#list all the anagrams of word contained in the words list
def anagrams(word, words)
  words.select { |w|
    word.chars.sort.join == w.chars.sort.join
  }
end

#best :
def anagrams(word, words)
  words.select { |w| w.chars.sort == word.chars.sort }
end

#I thought that a table had no order but apparently not!
