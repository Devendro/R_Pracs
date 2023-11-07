# Write commands for Implementation of Data preprocessing techniques like, Naming and Renaming variables, adding a new variable. Dealing with missing data. Dealing with categorical data. Data reduction using subsetting

install.packages("dplyr")
install.packages("caret")
library(dplyr)
library(caret)

# Naming and Renaming Variables:
  
# To Rename Variables:
# Create a sample data frame
data_frame <- data.frame(
 Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, 78)
)


# Renaming the Single Variable
names(data_frame)[names(data_frame) == "Points"] <- "Ranks"
data_frame


# Rename multiple variables:
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, 78)
)

data_frame <- data_frame %>%
  rename(Score = Marks,
         rank = Points)
data_frame


# To Change Variable Names (without altering the data):
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, 78)
)

names(data_frame) <- c("Name", "Marks Scored", "Rank Secured")
data_frame


# Adding a New Variable:
# Using $ operator
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, 78)
)

data_frame$Gender <- c("M","M","M")
data_frame

# Using [ ] notation:
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, 78)
)

data_frame['Gender'] <- c("M","M","M")
data_frame

# Using cbind() Function:
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, 78)
)

Gender <- c ("M","M","M")
data_frame <- cbind(data_frame, Gender)
data_frame

# Add a New Column from the Existing:
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, 78)
)

data_frame$rank <- data_frame$Points-2
data_frame


# Dealing with missing data
# Checking for Missing Data:
# Checking with not missing any data
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, 78)
)
any(is.na(data_frame))

# Checking with missing data
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, NA)
)
any(is.na(data_frame))

# Handling Missing Data:
# Removing Row With missing Values
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, NA),
  Favourite = c("Messi", "Ronaldo", "Messi")
)

# Remove rows with missing values
data_frame <- na.omit(data_frame)
data_frame

# Fill missing values with a specific value
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, NA)
)

# Fill missing values with a specific value
data_frame$Points[is.na(data_frame$Points)] <- 100
data_frame

#Dealing with Categorical Data
# Converting Categorical to Dummy Variables (One-Hot Encoding):
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, NA),
  Favourite = c("Messi", "Ronaldo", "Messi")
)
  
# Perform one-hot encoding (dummy variable creation) for the categorical variable
dummyData <- dummyVars(~ Favourite, data = data_frame)
data_frame <- data.frame(predict(dummyData, newdata = data_frame))
data_frame


# Converting Categorical to Numeric Using Factorization:
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, NA),
  Favourite = c(1, 2, 3)
)

# Perform one-hot encoding (dummy variable creation) for the categorical variable
data_frame$Favourite <- as.numeric(factor(data_frame$Favourite))
data_frame


# Data Reduction Using Subsetting:
# Subsetting Rows Based on a Condition:
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, NA)
)
  
# Define the condition and desired value
variable_condition <- "Name"  # Change this to your desired condition
desired_value <- "Devendro"      # Change this to your desired value
  
# Subset the data frame based on the condition
subset_data <- data_frame[data_frame[, variable_condition] == desired_value, ]
subset_data

# Subsetting Columns: 
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, NA)
)

# Subset data_frame to include only "Age" and "Score"
subset_data <- data_frame[, c("Marks", "Points")]
subset_data

# Random Variable
data_frame <- data.frame(
  Name = c("Devendro", "Pranit", "Nishant"),
  Marks = c(25, 30, 28),
  Points = c(85, 92, NA)
)

# Specify the desired sample size (e.g., 2 for a small sample)
sample_size <- 2
random_sample <- data_frame[sample(nrow(data_frame), sample_size), ]
random_sample

