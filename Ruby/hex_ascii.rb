#Write a module Converter that can take ASCII text and convert it to hexadecimal.
#The class should also be able to take hexadecimal and convert it to ASCII text.

module Converter
  def self.to_ascii(hex)
    [hex].pack('H*')
  end

  def self.to_hex(ascii)
    ascii.chars.map{|i| i.ord.to_s(16)}.join
  end
end

#better for ascii: ascii.unpack("H*")[0]

#pack and unpack are particular convertion functions I had never used before
