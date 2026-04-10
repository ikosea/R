 # rolling dice simulation

# 1 (numbers appear in the range 1 to 6, there are 4 rows and 10 columns)
x = matrix(sample(1:6, 4*10, replace=TRUE), nrow=4, ncol=10)

# 2 (printing the matrix)
print(x)

# 3 (create a logical matrix where the value is TRUE if the corresponding value in x is 2, and FALSE otherwise)
y = (x == 2)

#4
print(y)

#5 (sum the columns of y, which gives the number of 2's in each column)
z = colSums(y)

#6 
print(z)

#7 (create a logical vector where the value is TRUE if the corresponding value in z is greater than 0, and FALSE otherwise)
print(z > 0)

#8
s = sum(z > 0)

#9
print(s)

#10
m = mean(z > 0)
print(m)
