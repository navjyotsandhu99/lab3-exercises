# Download the iris dataset
data('iris')

# data('Titanic') for homework assignment
# as.data.frame(Titanic) to convert it into a data frame

# Check to see if the downloaded data set is a data frame
cat(is.data.frame(iris), "\n")

# Select all values of data frame for Sepal.length
lengths <- iris$Sepal.Length

# Select only rows of Virginica flowers
virginica <- iris[iris$Species == 'virginica', ]

# Select only the sepal length of the Virginica flowers
virginica_lengths <- virginica$Sepal.Length

# Select rows where Petal.Length > 4.0
large_petals <- iris[iris$Petal.Length > 4.0, ]

# Add a column to the dataframe indicating whether Petal.Length > 4.0
iris$has_large_petals <- iris$Petal.Length > 4.0

# Find the species type of the flower that has the longest Sepal length
longest_length <- iris[iris$Sepal.Length == max (iris$Sepal.Length), ]
species_longest_flower <- longest_length$Species

# Select rows where species type is 'setosa' and Sepal.Width > 3.0
View(iris[(iris$Species == "setosa") & (iris$Sepal.Width > 3.0), ])

# Create a folder in your lab3-exercises directory called data and export your iris data set into that folder
write.csv(iris, file = 'data/iris.csv', row.names = FALSE)
