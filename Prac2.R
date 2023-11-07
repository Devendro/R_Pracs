install.packages("readxl")

# C-binding
# Create two vectors
vector1 <- c(11, 22, 33)
vector2 <- c("A", "B", "C")

# Combine them into a data frame
combined_vec <- cbind(vector1, vector2)
combined_vec

# Create two data frames
df1 <- data.frame(ID = c(1, 2, 3), Name = c("Alice", "Bob", "Charlie"))
df2 <- data.frame(Score = c(90, 85, 88))

# Combine them by adding a new column
combined_df <- cbind(df1, df2)
combined_df

# Create two matrices
matrix1 <- matrix(c(1,2,3,4,5,6), nrow = 2)
matrix2 <- matrix(c(7,8,9,10,11,12), nrow = 2)

# Combine them by adding columns
combined_matrix <- cbind(matrix1, matrix2)
combined_matrix

# Create a data frame
df <- data.frame(Name = c("Alice", "Bob", "Charlie"))

# Add a constant column
constant_value <- 25
df <- cbind(constant_column = constant_value, df)
df


# R-Binding
# Create two data frames
df1 <- data.frame(ID = c(1, 2, 3), Name = c("Alice", "Bob", "Charlie"))
df2 <- data.frame(ID = c(4, 5, 6), Name = c("David", "Eve", "Frank"))

# Combine them by adding rows
combined_df <- rbind(df1, df2)
combined_df


# Read Data
# Read From a CSV File
data <- read.csv("Marks.csv")
data


# Read Data from a Text File:
# Read From a Text File
data <- read.table("data.txt", header = TRUE, sep = "\t")
data


# Read Data from an Excel File (using the readxl package):
library(readxl)
data <- read_excel("Marks.xlsx")
data


# Write Data to a CSV File:
# Writing Data to CSV
write.csv(data, file = "output.csv", row.names = FALSE)


# Write Data to a Text File (Tab-Separated):
# Writing Data to Text File
write.table("Hello Devendra Here", file = "output.txt", sep = "\t", quote = FALSE)


# Write Data to an Excel File (using the writexl package):
# Writing Data to XLSX
library(writexl)
write_xlsx(data, path = "output.xlsx")


# setwd()
# Setting the working directory
setwd("Name Of The Directory Please")


# getwd()
getwd() # get the working directory


# data()
#load a built-in dataset
data()


# rm()
var1 <- "Hello"
var1
rm(var1)
var1


# Attaching
# Create a sample data frame
data_frame <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22),
  Score = c(95, 88, 75)
)

# Print the data frame before attaching
data_frame

# Attach the data frame
attach(data_frame)

# Now you can access variables directly
Name
Age
Score


# Detaching:
# Detach the data frame
detach(data_frame)

# Now you cannot access variables directly
Name


# 10. Reading data from the console.
# Reading data from console in R
# Taking user input using readline()
user_input <- readline(prompt = "Enter the number: ")

# Printing the type of the variable
print(paste("Original data type: ", typeof(user_input)))

# Converting the input into an integer type
user_input_integer <- as.integer(user_input)

# Printing the type of the new variable
print(paste("New data type: ", typeof(user_input_integer)))

# Printing the converted integer value
print(user_input_integer)

# Reading the number of rows from the user
cat("Enter the number of rows: ")
num_rows <- scan(n = 1, what = integer())

# Reading the number of columns from the user
cat("Enter the number of columns: ")
num_cols <- scan(n = 1, what = integer())

# Reading matrix elements
cat("Enter the matrix elements:\n")
matrix_elements <- scan(n = num_rows * num_cols)

# Reshaping the elements into a matrix
matrix_data <- matrix(matrix_elements, nrow = num_rows, ncol = num_cols)
matrix_data

