# -----------------------------------------------------------
# 1. Creating Vectors
# -----------------------------------------------------------
# A numeric vector
num_vec <- c(1, 2, 3, 4, 5)
print("Numeric Vector:")
print(num_vec)

# A character vector
char_vec <- c("apple", "banana", "cherry")
print("Character Vector:")
print(char_vec)

# A logical vector
log_vec <- c(TRUE, FALSE, TRUE, TRUE)
print("Logical Vector:")
print(log_vec)

# -----------------------------------------------------------
# 2. Basic Vector Operations (Vectorized Arithmetic)
# -----------------------------------------------------------
# Adding a scalar to a vector (each element is incremented)
incremented_vec <- num_vec + 10
print("Vector after adding 10:")
print(incremented_vec)

# Multiplying each element of the vector by 2
doubled_vec <- num_vec * 2
print("Vector after multiplication by 2:")
print(doubled_vec)

# Element-wise addition of two vectors
other_vec <- c(10, 20, 30, 40, 50)
sum_vec <- num_vec + other_vec
print("Element-wise sum of two vectors:")
print(sum_vec)

# -----------------------------------------------------------
# 3. Indexing and Slicing Vectors
# -----------------------------------------------------------
# Access the first element
first_element <- num_vec[1]
print("First element of num_vec:")
print(first_element)

# Access a range of elements (2nd to 4th)
subset_vec <- num_vec[2:4]
print("Subset of num_vec (2nd to 4th element):")
print(subset_vec)

# Logical indexing: select elements greater than 3
logical_subset <- num_vec[num_vec > 3]
print("Elements in num_vec greater than 3:")
print(logical_subset)

# -----------------------------------------------------------
# 4. Modifying Vectors
# -----------------------------------------------------------
# Change the third element
num_vec[3] <- 100
print("num_vec after changing the 3rd element to 100:")
print(num_vec)

# Append new elements to the vector using c()
extended_vec <- c(num_vec, 200, 300)
print("Extended num_vec with new elements:")
print(extended_vec)

# -----------------------------------------------------------
# 5. Naming Elements in a Vector
# -----------------------------------------------------------
# Create a named vector
named_vec <- c(A = 10, B = 20, C = 30)
print("Named Vector:")
print(named_vec)

# Access an element by its name
value_B <- named_vec["B"]
print("Value corresponding to name 'B':")
print(value_B)

# -----------------------------------------------------------
# 6. Common Vector Functions
# -----------------------------------------------------------
# Length of a vector
vec_length <- length(num_vec)
print("Length of num_vec:")
print(vec_length)

# Sum of vector elements
vec_sum <- sum(num_vec)
print("Sum of elements in num_vec:")
print(vec_sum)

# Mean (average) of vector elements
vec_mean <- mean(num_vec)
print("Mean of elements in num_vec:")
print(vec_mean)

# Maximum and minimum values
vec_max <- max(num_vec)
vec_min <- min(num_vec)
print("Maximum value in num_vec:")
print(vec_max)
print("Minimum value in num_vec:")
print(vec_min)

# Sorting a vector
sorted_vec <- sort(extended_vec)
print("Sorted extended_vec:")
print(sorted_vec)

# Unique elements in a vector (if there are duplicates)
dup_vec <- c(1, 2, 2, 3, 4, 4, 5)
unique_elements <- unique(dup_vec)
print("Unique elements in dup_vec:")
print(unique_elements)

# -----------------------------------------------------------
# 7. Using Vectors in Functions
# -----------------------------------------------------------
# A function that computes the range of a vector
vector_range <- function(vec) {
  return(max(vec) - min(vec))
}

range_value <- vector_range(num_vec)
print("Range of num_vec (max - min):")
print(range_value)

# -----------------------------------------------------------
# 8. Combining Vectors
# -----------------------------------------------------------
# Combining two vectors using the c() function
combined_vec <- c(num_vec, other_vec)
print("Combined vector of num_vec and other_vec:")
print(combined_vec)

# Using the rep() function to create repeated elements
rep_vec <- rep(c("A", "B", "C"), times = 3)
print("Repeated elements vector using rep():")
print(rep_vec)

# Using the seq() function to create a sequence vector
seq_vec <- seq(from = 1, to = 10, by = 2)
print("Sequence vector using seq():")
print(seq_vec)
