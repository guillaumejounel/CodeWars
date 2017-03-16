#strips all text that follows any of a set of comment markers passed in.
#Any whitespace at the end of the line should also be stripped out.

def solution(input, markers)
    motif = Regexp.new("\s+["+markers.join+"].*?(\\n|$)")
    input.split(motif).join
end

#It looks easy but I need to practise with Regexp

#best:
def solution(input, markers)
  input.gsub(/\s+[#{markers.join}].*/, "")
end

#gsub remplaces the matched patterns with the second argument (sub remplaces the first pattern)
#It's approximately the same solution I have submitted, however I didn't need to use Regexp.new
#and the last part of my expression was useless as linebreaks are automatically detected
