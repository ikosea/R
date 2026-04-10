# randomly sample 3 of the elements of x

y = sample(x,3)
print(y)

# randomly sample 3 of the elements of x, with replacement
y = sample(x,3,replace=TRUE)
print(y)

# generate a 3 x 5 array of random dice rolls.
z = sample(1:5, 15, replace=TRUE)
x = matrix(z, nrow=3, ncol=5)
print(x)