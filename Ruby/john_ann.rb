def john(n)
    j(n-1)
end

def j(n)
    n==0 ? [0] : j(n-1).push(n-a(j(n-1)[-1])[-1])
end

def ann(n)
    a(n-1)
end

def a(n)
    n==0 ? [1] : a(n-1).push(n-j(a(n-1)[-1])[-1])
end

def sum_john(n)
    john(n).reduce(:+)
end
def sum_ann(n)
    ann(n).reduce(:+)
end
