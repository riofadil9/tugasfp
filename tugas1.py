def sequenceGenerator(start, stop):
    x=[]
    for i in range(start, stop+1):
        x.append(i)
    return x

def fizzBuzz(a,b):
    x=[]
    for num in range(a,b):
        if num % 3 == 0 and num % 5 == 0:
            x.append('fizzBuzz')
        elif num % 3 == 0:
            x.append('Fizz')
        elif num % 5 == 0:
            x.append('Buzz')
        else: x.append(num)
    return x

def twoNumber(l):
    res = []
    for i in l:
        if not l.index(i) == len(l)-1:
            res.append(i + l[i+1])
    return res

sequenceGenerator_fp = lambda start,stop:[i for i in range(start,stop+1)]
fizzBuzz_fp = lambda a,b: ['fizzBuzz' if num % 3 == 0 and num % 5 == 0 else 'Fizz' if num % 3 == 0 else 'Buzz' if num % 5 == 0 else num for num in range(a,b)]
twoNumber_fp = lambda l: [x + y for x, y in zip(l, l[1:])]

print(sequenceGenerator(1,10))
print(sequenceGenerator_fp(1,10))
print(fizzBuzz(1,16))
print(fizzBuzz_fp(1,16))
print(twoNumber([0,1,2,3,4,5]))
print(twoNumber_fp([0,1,2,3,4,5]))