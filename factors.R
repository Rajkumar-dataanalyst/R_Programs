# ---------------------------------------------------------
# Factors in R: Full Program with Explanations
# ---------------------------------------------------------

# 1. Creating a character vector representing categorical data.
categories <- c("High", "Low", "Medium", "Medium", "High", "Low", "Medium", "High", "Low")
cat("Original character vector:\n")
print(categories)

# 2. Converting the character vector to a factor.
# By default, the levels are sorted alphabetically.
cat("\nConverting to factor (default ordering):\n")
f <- factor(categories)
print(f)
cat("Levels of f:\n")
print(levels(f))
cat("Summary of factor f:\n")
print(summary(f))

# 3. Creating an ordered factor with custom level ordering.
cat("\nCreating an ordered factor with levels: Low < Medium < High\n")
ordered_f <- factor(categories, levels = c("Low", "Medium", "High"), ordered = TRUE)
print(ordered_f)
cat("Levels of ordered_f:\n")
print(levels(ordered_f))
cat("Summary of ordered factor ordered_f:\n")
print(summary(ordered_f))

# 4. Demonstrating conversion from factor to numeric.
# Warning: Direct conversion gives the internal integer codes.
cat("\nConverting ordered_f to numeric (internal codes):\n")
numeric_codes <- as.numeric(ordered_f)
print(numeric_codes)

# If the factor levels are numbers stored as characters, convert correctly:
# (For demonstration, assume a factor with numeric values as strings)
numeric_char <- c("10", "20", "30", "20", "10")
f_numeric <- factor(numeric_char)
cat("\nFactor with numeric values as characters:\n")
print(f_numeric)
# Incorrect conversion (will give internal codes):
incorrect_numeric <- as.numeric(f_numeric)
cat("Direct conversion to numeric (incorrect):\n")
print(incorrect_numeric)
# Correct conversion:
correct_numeric <- as.numeric(as.character(f_numeric))
cat("Proper conversion to numeric (correct):\n")
print(correct_numeric)

# 5. Adding a new level to a factor.
cat("\nAdding a new level 'Very High' to the ordered factor ordered_f\n")
# Note: Since none of the current values are "Very High", it will appear as NA when assigned.
extended_f <- factor(ordered_f, levels = c("Low", "Medium", "High", "Very High"), ordered = TRUE)
print(extended_f)

# 6. Renaming factor levels.
cat("\nRenaming the levels of the extended factor:\n")
# Let's rename: Low -> L, Medium -> M, High -> H, Very High -> VH
levels(extended_f) <- c("L", "M", "H", "VH")
print(extended_f)
cat("New levels after renaming:\n")
print(levels(extended_f))

# 7. Using factors in a data frame.
cat("\nCreating a data frame with an ordered factor column.\n")
df <- data.frame(
  ID = 1:length(categories),
  Category = factor(categories, levels = c("Low", "Medium", "High"), ordered = TRUE)
)
print(df)
cat("Summary of data frame:\n")
print(summary(df))

# 8. Plotting factor data.
# This will create a bar plot of the frequency of each category.
cat("\nGenerating a bar plot for the Category column in the data frame.\n")
barplot(table(df$Category),
        main = "Bar Plot of Categories",
        xlab = "Category",
        ylab = "Frequency",
        col = "lightblue")

# ---------------------------------------------------------
# End of Factors in R Program
# ---------------------------------------------------------
