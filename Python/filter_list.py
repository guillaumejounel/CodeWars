#create a function that takes a list of non-negative integers and strings
#and returns a new list with the strings filtered out

def filter_list(l):
  new=[]
  for i in l:
      if type(i) is int:
          new.append(i)
  return new
