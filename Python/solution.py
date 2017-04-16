#returns the largest five digit number found within the number given (string)

def solution(digits):
    max = 0
    for i in range(0,len(digits)-4):
        number = int(digits[i:i+5])
        if number > max:
            max = number
    return max;

print solution("123123412")

#best:
def solution(dd):
    return max(int(dd[i:i+5]) for i in range(len(dd) - 4))
