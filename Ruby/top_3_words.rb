#Returns the top 3 words from a string. Words should be lowercased and may contain a '

def top_3_words(text)
    rank = {}
    words = text.downcase.scan(/[a-z]+['[a-z]+]*/)
    words.uniq.map{|w| rank[w] = words.count(w)}
    rank.sort_by{|k,v| [-v, k]}[0..2].to_h.keys
end

#Really interesting challenge as I don't often use Hash.
#For each unique word, I create a hash entry with this format : "word" => <nb of use>
#Then I just need to sort this hash and extract the first 3 keys.

#best solution: (much more readable)

def top_3_words(text)
  text.scan(/[A-Za-z']+/)
      .select { |x| /[A-Za-z]+/ =~ x }
      .group_by { |x| x.downcase }
      .sort_by { |k,v| -v.count }
      .first(3)
      .map(&:first)
end

#I did not know "group_by", it avoids creating a Hash
