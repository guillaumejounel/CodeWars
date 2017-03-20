#rgb to hex conversion

def limit(nb, mini=0, maxi=255):
    return max(min(maxi, nb), mini)

def rgb(r, g, b):
    return "{:02X}{:02X}{:02X}".format(limit(r), limit(g), limit(b))

#best solution:

def rgb(r, g, b):
    round = lambda x: min(255, max(x, 0))
    return ("{:02X}" * 3).format(round(r), round(g), round(b))

#it's the same as mine with a lambda function and a "format shortcut" (".." * x)
#I didn't know how to declare a lambda function in python:
# nameFunction = lambda var: <manipulate var here>
