### Short Familiarisation Exercise

# <- anything that starts with a hash is a comment

# Assign the value of 2 to an object called x
x <- 2 

# Add 3 to the object x
3 + x

# Create a vector of values called y
y <- c(1, 3, 5, 7, 9) 

# Print the 3rd element in the vector y
y[3]

# Print the 3rd to 5th elements in the vector y
y[3:5]

# Multiply the vector y by 2, then print the output
y*2

# Multiply the vector y by the scalar x, then print the output
y*x

# Save the result from the previous line of code into an object X
X <- y*x

# Check if the object X is equal to the object x
X == x

# Create a data frame with 2 columns, 'type' and 'name', and save it as an object called 'animals'
animals <- data.frame(
    type=c("Cat", "Dog", "Elephant"), 
    name=c("Cathy", "Donald", "Ervin")
) 

# Display the column names of the data frame called animals
names(animals)

# Display the first column of animals
animals[,1]

# Display the first row of animals
animals[1,]