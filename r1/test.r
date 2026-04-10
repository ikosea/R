x = choose(4,107)
print(x)

# computing the number of ways to get one pair, and the probability of getting one pair
y = choose(13,1) * choose(4,2) * choose(12,3) *4*4*4
print(y) 
y = choose(13, 1)*choose(4, 2)*choose(12, 3)*4*4*4/choose(52, 5)
print(y)

# factorial does what it says
a = factorial(3)
print(a)

# sample picks random values from a list
b = sample(1:5, 3) # no elements allowed
print(b) 

c = sample(1:5, 5) # permutes the saample
print(c)

d = sample(1:5, 10, replace=TRUE) # allows for replacement
print(d) 

# matrix is a way to organize data into rows and columns
e = matrix(3:10, nrow=2, ncol=4)
print(e)

#colsums sums the columns of a matrix
f = sample(0:9, 20, replace=TRUE)
print(f)
g = matrix(f, nrow=4, ncol=5)
print(g)
print(colSums(g))
