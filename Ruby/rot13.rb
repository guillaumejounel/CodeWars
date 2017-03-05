# ROT13 is a simple letter substitution cipher that replaces a letter with the
# letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

def rot13(string)
  string.each_char.collect { |c|
    (c>='a' && c<='z') || (c>='A' && c<='Z') ?
    (((c.ord+13).chr > 'z') && (c.ord.chr <= 'z')) || (((c.ord+13).chr > 'Z') &&  (c.ord.chr <= 'Z'))  ?
    (c.ord-13).chr : (c.ord+13).chr  : c
  }.join
end

#much better:

def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end
