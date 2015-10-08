### Two Basic Examples

## cars example ##

# Load dataset (in-built)
data(cars)

# Show structure of the data
str(cars)       

# Brief summary of each variable
summary(cars)   

# Save the number of observations as an object
n <- nrow(cars) 

# Create an indicator for if the car was fast
cars$fast <- factor(ifelse(cars$speed>20, "Fast", "Slow")) 

# Generates a set of indices corresponding to our subset of interest
fastcars <- which(cars$fast=="Fast") 

# Proportion of cars which were fast
length(fastcars)/n

# Print out the entire subset of data
cars[fastcars,]

######

## mtcars Example ##

## 1. Data Summary
# Load dataset (in-built)
data(mtcars) 

# Show structure of dataset
str(mtcars)

## 2. Discrete vs Categorical
# Tabulate each variable. NOTE: May clog up console for large datasets.
apply(mtcars, 2, table)

# Summarize the number of unique values for each variable (what we really want) 
apply(mtcars, 2, function(x){
    length(unique(x))
}

# Save the numbers of unique values values
vars <- apply(mtcars, 2, function(x) length(table(x)))

# Create an index selecting variables which are categorical
ndx <- which(vars<5)

# Save the number of columns
m <- ncol(mtcars)

# Use a loop to convert all categorical variables to factor type
for(i in 1:m){
    if(i %in% ndx){
        mtcars[,i] = factor(mtcars[,i])
    }
}; rm(i) # Remove unwanted objects after you're done with them

## 3. Regression Model

# Create a correlation matrix
corr.matrix <- cor(mtcars[,-ndx])

# Round the correlation matrix to 2 decimal places
round(corr.matrix, 2)

# Run a regression, save the results
lm0 <- lm(mpg ~ wt, data = mtcars)

# View the summary of the results
summary(lm0)

# Check out the components of the lm object
names(lm0)

# Check out the components of the summary of the lm object
names(summary(lm0))

# Access the adjusted R squared value directly
summary(lm0)$adj.r.squared

# Add 'cyl' to the regression
lm1 <- update(lm0, ~ . + cyl)

# Check the adjusted R squared again
summary(lm1)$adj.r.squared

# Use a loop to rerun the regression, adding one variable to lm0 each time, then print the results of the new adjusted R squared
for(i in 1:m){
  if(names(mtcars)[i] %in% c("mpg", "wt")) next # Exclude the two variables already involved
  else {
    formula <- paste("~ . +", names(mtcars)[i], sep = "") # Save the regression model as a string
    lm1 <- update(lm0, as.formula(formula)) # Coerce the string to a formula, then run the regression
    adj.r.sq <- round(summary(lm1)$adj.r.squared, 2) # Obtain the adjusted R squared and round to 2dp
    print(paste(adj.r.sq, names(mtcars)[i], sep = ", ")) # Print the result in the console
  } 
}; rm(i, formula, lm1, adj.r.sq)

# Conclusion: adding cyl to lm0 increases the adjusted R squared by the most