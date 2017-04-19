#Regex password validation :
#At least six characters long
#contains a lowercase letter
#contains an uppercase letter
#contains a number
#only alphanumeric characters

from re import search
regex=r"(?=^[a-zA-Z0-9]{6,}$)(?=.*[a-z]+)(?=.*[A-Z]+)(?=.*\d+)"

print bool(search(regex, 'Password123')) #True
print bool(search(regex, 'JHD5FJ53')) #False
print bool(search(regex, 'fjd3IR9.;')) #False

#\w : [a-zA-Z0-9_]
#\d : [0-9]

#best (more readable):
regex = compile("""
^              # begin word
(?=.*?[a-z])   # at least one lowercase letter
(?=.*?[A-Z])   # at least one uppercase letter
(?=.*?[0-9])   # at least one number
[A-Za-z\d]     # only alphanumeric
{6,}           # at least 6 characters long
$              # end word
""", VERBOSE)
