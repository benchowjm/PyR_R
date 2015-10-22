# Load data
data(iris)

### 1. Exploring Objects -------------
length(iris)
attributes(iris)
names(iris)
class(iris)
dim(iris)
str(iris)
summary(iris)

### 2. Data Handling --------------

## Creating data
obj1 <- list("a", 2, 3, TRUE, F)
obj2 <- c("a", 2, 3, TRUE, F)
obj3 <- seq(0, 30, by = 3)
obj4 <- matrix(1:8, nrow = 2, ncol = 4)


## Sequences & Repeats
1:10
seq_len(10)
2:11
seq(2, 11)
seq(2, 11, by = 1.1)
rep_len(1:3, 10)


## More about Assignment
x <- 5
y <- x <- 6 # Right to left
7 -> x  # Usually we don't use this

# <<- is usually used within functions
addition <- function(){
  x <<- x + 1
}
addition()
addition()


## Subsetting
o <- list(obj1, obj2, obj3, obj4)
class(o[3])
class(o[[3]])
o[2:4]
o[[2:4]] # Throws an error


## Arithmetic
3 + 5
3 - 5
3 * 5

10 / 3
10 %% 3
10 %/% 3

10 / 2.4
10 %% 2.4
10 %/% 2.4

obj5 <- 2*sin(obj3)
round(obj5, 3)
signif(obj5, 3)
sign(obj5)
ceiling(obj5)
floor(obj5)

# These produce some NaNs (Complex values, not handle-able by the numeric class)
sqrt(obj5) 
log(obj5) # Note that infinite values are represented by 'Inf'

### 3. Programming --------------

## Logic & Comparisons
is.list(o)
is.data.frame(obj3)

5 + 2 == 7
x <= 3
x != 3
c(TRUE, TRUE) & c(TRUE, FALSE)
c(TRUE, TRUE) && c(TRUE, FALSE)
c(TRUE, TRUE) | c(FALSE, FALSE)
c(TRUE, TRUE) || c(FALSE, FALSE)

which(10:1 < 5)
10:1 < 5
any(T, F, T, F)
all(1:10 > 0)

## Control Structures
# for loop
for(i in 1:5){
  print(i^2)
}

# while loop (with a break clause for good measure)
i <- 1
while(i < 5){
  print(i^2)
  i <- i + 1
  if(i==10) break
}

# if, else & next
for(i in 1:10){
  if(i %% 2 == 0){
    next # i.e. you don't want to do anything
  } else {
    print(paste0(i, " is an odd number!"))
  }
}


