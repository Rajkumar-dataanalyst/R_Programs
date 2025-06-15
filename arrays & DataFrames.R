# Creating a 3-dimensional array with dimensions 2 x 3 x 4
a <- array(1:24, dim = c(2, 3, 4))
print(a)

# Naming the rows,cols and heights.
arr3 <- array(1:12, dim = c(3, 2, 2), 
              dimnames = list(c("Row1", "Row2", "Row3"), 
                              c("Col1", "Col2"), 
                              c("Layer1", "Layer2")))
print(arr3)

#Array Operations
arrA <- array(1:8, dim = c(2, 2, 2))
arrB <- array(9:16, dim = c(2, 2, 2))

sum_arr <- arrA + arrB  # Addition
diff_arr <- arrA - arrB  # Subtraction
prod_arr <- arrA * arrB  # Element-wise multiplication
div_arr <- arrA / arrB  # Element-wise division


# Creating a data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  Salary = c(50000, 60000, 70000)
)
print(df)
# Output:
#      Name Age Salary
# 1   Alice  25  50000
# 2     Bob  30  60000
# 3 Charlie  35  70000
