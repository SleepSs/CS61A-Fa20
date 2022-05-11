def memory(n):
    def f(g):
        nonlocal n
        n = g(n)
        return n
    
    return f

def group_by(s, fn):
    grouped = {}
    for i in s:
        key = fn(i)
        if key in grouped:
            grouped[key].append(i)
        else:
            grouped[key] = [i]
    return grouped

def add_this_many(x, el, s):
    """ Adds el to the end of s the number of times x occurs
    in s.
    >>> s = [1, 2, 4, 2, 1]
    >>> add_this_many(1, 5, s)
    >>> s
    [1, 2, 4, 2, 1, 5, 5]
    >>> add_this_many(2, 2, s)
    >>> s
    [1, 2, 4, 2, 1, 5, 5, 2, 2]
    """
    t = s.count(x)
    for _ in range(t):
        s.append(el)
    return s

def filter(iterable, fn):
    """
    >>> is_even = lambda x: x % 2 == 0
    >>> list(filter(range(5), is_even)) # a list of the values yielded from the call to filter
    [0, 2, 4]
    >>> all_odd = (2*y-1 for y in range(5))
    >>> list(filter(all_odd, is_even))
    []
    >>> naturals = (n for n in range(1, 100))
    >>> s = filter(naturals, is_even)
    >>> next(s)
    2
    >>> next(s)
    4
    """
    for x in iterable:
        if fn(x):
            yield x
        
