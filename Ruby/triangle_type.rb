# Should return ᐃ type:
#  0 : if ᐃ cannot be made with given sides
#  1 : acute ᐃ
#  2 : right ᐃ
#  3 : obtuse ᐃ

def triangle_type (a, b, c)
  s = [a, b, c].sort
  sqh, sqs = s[-1]**2, s[0]**2+s[1]**2
  if s[-1] >= s[0]+s[1] then 0
  elsif sqh > sqs then 3
  elsif sqh < sqs then 1
  else 2
  end
end

#better:
def triangle_type(a, b, c)
  x, y, z = [a, b, c].sort
  return 0 if x + y <= z
  cs = x**2 + y**2 - z**2
  cs == 0 ? 2 : (cs > 0 ? 1 : 3)
end
