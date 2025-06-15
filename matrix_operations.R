# ---------------------------------------------------------
# Comprehensive Matrix Operations in R
# ---------------------------------------------------------

# 1. Matrix Creation and Basic Properties

# a. Create a 3x3 matrix (filled by column by default)
m <- matrix(1:9, nrow = 3, ncol = 3)
cat("Matrix m (filled by column):\n")
print(m)

# b. Create a 3x3 matrix filled by row
m_row <- matrix(1:9, nrow = 3, byrow = TRUE)
cat("\nMatrix m_row (filled by row):\n")
print(m_row)

# c. Check dimensions
cat("\nDimensions of matrix m (using dim()):\n")
print(dim(m))
cat("Number of rows in m (using nrow()):\n")
print(nrow(m))
cat("Number of columns in m (using ncol()):\n")
print(ncol(m))


# 2. Matrix Indexing and Sub-setting

# Access the element at row 2, column 3
elem <- m[2, 3]
cat("\nElement at row 2, column 3 of m:\n")
print(elem)

# Extract the first row of m
row1 <- m[1, ]
cat("\nFirst row of m:\n")
print(row1)

# Extract the second column of m
col2 <- m[, 2]
cat("\nSecond column of m:\n")
print(col2)

# Extract a sub-matrix: rows 1-2 and columns 2-3
sub_m <- m[1:2, 2:3]
cat("\nSubmatrix (rows 1-2, columns 2-3) of m:\n")
print(sub_m)


# 3. Arithmetic Operations

# a. Create two 2x2 matrices
m1 <- matrix(1:4, nrow = 2)
m2 <- matrix(5:8, nrow = 2)
cat("\nMatrix m1:\n")
print(m1)
cat("\nMatrix m2:\n")
print(m2)

# b. Element-wise addition
add_result <- m1 + m2
cat("\nElement-wise addition of m1 and m2:\n")
print(add_result)

# c. Element-wise subtraction
sub_result <- m1 - m2
cat("\nElement-wise subtraction of m1 from m2:\n")
print(sub_result)

# d. Element-wise multiplication
elem_mult <- m1 * m2
cat("\nElement-wise multiplication of m1 and m2:\n")
print(elem_mult)

# e. Element-wise division
elem_div <- m1 / m2
cat("\nElement-wise division of m1 by m2:\n")
print(elem_div)

# f. Matrix multiplication (dot product) using %*%
mat_mult <- m1 %*% m2
cat("\nMatrix multiplication (m1 %*% m2):\n")
print(mat_mult)


# 4. Transpose

trans_m1 <- t(m1)
cat("\nTranspose of m1:\n")
print(trans_m1)


# 5. Inverse and Solving Linear Systems

# a. Matrix inversion: Create a 2x2 matrix for inversion
A <- matrix(c(4, 7, 2, 6), nrow = 2)
cat("\nMatrix A for inversion:\n")
print(A)

inv_A <- solve(A)
cat("\nInverse of A (solve(A)):\n")
print(inv_A)

# b. Solving a linear system: A * x = b
# Define a new 2x2 matrix B and a vector b
B <- matrix(c(3, 1, 1, 2), nrow = 2)
b_vec <- c(9, 8)
solution <- solve(B, b_vec)
cat("\nSolution of the linear system Bx = b (solve(B, b)):\n")
print(solution)


# 6. Determinant

det_A <- det(A)
cat("\nDeterminant of matrix A (det(A)):\n")
print(det_A)


# 7. Eigenvalues and Eigenvectors

eig_A <- eigen(A)
cat("\nEigenvalues and eigenvectors of matrix A (eigen(A)):\n")
print(eig_A)


# 8. Diagonal and Trace

# a. Extract the diagonal elements of A
diag_A <- diag(A)
cat("\nDiagonal elements of A (diag(A)):\n")
print(diag_A)

# b. Create a 4x4 identity matrix using diag()
identity_matrix <- diag(4)
cat("\n4x4 Identity Matrix (diag(4)):\n")
print(identity_matrix)

# c. Compute the trace of A (sum of diagonal elements)
trace_A <- sum(diag_A)
cat("\nTrace of matrix A (sum(diag(A))):\n")
print(trace_A)


# 9. Row and Column Sums

row_sums <- rowSums(A)
col_sums <- colSums(A)
cat("\nRow sums of A (rowSums(A)):\n")
print(row_sums)
cat("Column sums of A (colSums(A)):\n")
print(col_sums)


# 10. Binding Matrices

# a. Column binding: Combine m1 and m2 side by side
bind_cols <- cbind(m1, m2)
cat("\nColumn binding of m1 and m2 (cbind(m1, m2)):\n")
print(bind_cols)

# b. Row binding: Stack m1 and m2 on top of each other
bind_rows <- rbind(m1, m2)
cat("\nRow binding of m1 and m2 (rbind(m1, m2)):\n")
print(bind_rows)


# 11. Outer and Cross Products

# a. Outer product: Compute the outer product of two vectors
v <- 1:3
w <- 4:6
outer_prod <- outer(v, w)
cat("\nOuter product of vectors v and w (outer(v, w)):\n")
print(outer_prod)

# b. Cross product using crossprod() and tcrossprod()
# crossprod() computes t(m1) %*% m1
cross_prod <- crossprod(m1)
cat("\nCross product of m1 (crossprod(m1) which is t(m1) %*% m1):\n")
print(cross_prod)

# tcrossprod() computes m1 %*% t(m1)
tcross_prod <- tcrossprod(m1)
cat("\nTcross product of m1 (tcrossprod(m1) which is m1 %*% t(m1)):\n")
print(tcross_prod)

# ---------------------------------------------------------
# End of Matrix Operations Script
# ---------------------------------------------------------
