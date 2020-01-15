# Installing R & RStudio
# RStudio Interface: Console, Source, Environment, Viewer 

###~~~ WORK DIRECTORY ~~~####
getwd()
setwd()


###~~~ DATA STRUCTURES ~~~###
# Four primary data structures in R:
# Vectors
# Matrices
# Data Frames
# Lists

#Vectors: 
# Numeric
# Integer
# Character
# Factor
# Logical


###~~~ SCALARS ~~~###
2 + 2   # Basic Math
sqrt(4)
1:10    # Prints numbers 1 to 10
print("Hello World!")


# This is a Comment
# No capacity for multi-line comments
# Highlight multiple lines & Shift + Ctl + C
# Execute command with Ctrl+Enter



###~~~ Variables & assignment operator ~~~###

x <- 1      # <- "gets" operator
x           # Displays the values in x
y <- 2
y
z <- x+y
z

###~~~ OTHER OPERATORS ~~~###
1:10    # ":" produces integers
c()     # produces floating-point numbers
1==1    # Test for equality
1!=1    # Test for inequality
# <, >, <=, >=   # more tests


###~~~ VECTORS ~~~###
# Vectors - the R workhorse, a container for values
# Let's make a simple dataset (vector):

scores1 <- c(1, 2, 3, 4, 5)   # Puts the numbers 1-5 in the variable x
scores2 <- 1:5                # Puts the numbers 1-5 in the variable x

scores3 <- c(scores1, scores2, 1, 2, 3, 5)

seq(from=1, to=5, by=1)
rep(1, times=5) 


# Vector Math
x * 2  # Multiplies each element in x by 2
x + y  # Adds corresponding elements in x and y

# Applying functions to vectors:
max(x)
min(scores3)
length(x)

# Indexing/subsetting vectors:
x[1]  # chooses 1st element of the vector x
x[2:3]
v["Year"]	# If vector elements have names - select by name

# Negative subscripts mean that we want to exclude the given elements in our output.
x[-1]    # exclude element 1
x[-1:-2] # exclude elements 1 through 2

# Logical operations:
v <- 1:10
v>5

# Filtering:
v <- seq(from = 1, to = 20, by = 2)
v[v>5]

subset(v,v > 5)  # NA values are removed when using subset()

which(v>5)       # find the positions within v at which the condition occurs


# Transforming
v <- 1:10
v
v.dummy <- ifelse(v>5, 1,0)


####~~~~ CHARACTERS ~~~~######
a <- c(1,2,3)
b <- "1,2,3"
c <- paste("abc","de","f") # concatenate the strings
d <- strsplit(c," ") # split the string according to blanks

length(a); length(b)


####~~~~ MATRICES ~~~~######
# A matrix - a rectangular array of numbers

m <- matrix(1:4, nrow = 2)    # Create a 2x2 matrix
m <- matrix(1:4, ncol = 2)
m <- rbind(c(1,4),c(2,2))

# Indexing/subsetting a matrix:
m[1,]      # select firs row
m[,2]      # select second column
m[2,1]     # select the element in the second row, first column


####~~~~ LISTS ~~~~####
#R list is a container for values, but its contents can be items of different data types.

l <- list(test_scores=25, student_names="xyz")
l

#The expression l$name1 refers to the name1 component in the list l.
l$name1

str(l)

####~~~~ DATA FRAMES ~~~~####
# A data frame in R is a list, each element of which is a vector of the same lenght



####~~~~ NA and NULL VALUES ~~~~####
v <- c(1,NA,3,4,5)
max(v)
max(v,na.rm=T)

v <- NA
c(v, 1)

v0 <- NULL
c(v0, 1)   # NULL values really are counted as nonexistent





###################################
####~~~ CHECKING DATA TYPES ~~~####

typeof(a)
typeof(b)
mode(a)
mode(b)
class(a)
class(b)

###~~~ Clean up ~~~###

rm(x)  # Remove an object from workspace
rm(a, b)  # Remove more than one
rm(list = ls())  # Clear entire workspace


###~~~ R-Style Guide ~~~###
browseURL("https://jef.works/R-style-guide/")


###~~~ HELP ~~~####
help(functionname) 
help(mean)
?mean
example(max) 
?"<"


###~~~ R PACKAGES ~~~###

# See existing packages online:
browseURL("https://cran.r-project.org/web/packages/available_packages_by_name.html")

library()  # List of installed packages
search()   # Shows packages that are currently loaded

install.packages("summarytools")  # Download and install package in R
library("ggplot2")  # Load a package into R
require("ggplot2")  # Load a package into R

library(help = "ggplot2")  # Brings up documentation on a package
vignette(package = "grid")  # Brings up list of vignettes (examples) in editor window
browseVignettes(package = "grid")  # Open web page with hyperlinks for vignette PDFs etc.

update.packages()  # Checks for updates

detach("package:ggplot2", unload = TRUE)

remove.packages("psytabs")   # Deletes it



###~~~ BUILT-IN DATASETS ~~~###

# See the available datasets online:
browseURL("http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html")

library(help = "datasets")     # See the list of available datasets
data()                         # See the list of available datasets
try(data(package = "rpart") )  # list the data sets in the rpart package
?datasets::cars                # Information about a particular dataset in the package

library(datasets)  # Load the library with the built-in datasets
require(datasets)  # Load the library with the built-in datasets

data(cars)   # Load dataset cars
str(cars)    # See the structure of the dataset cars

data(Cars93, package="MASS") 


###~~~ IMPORT DATA ~~~###

txt.file <- read.table("Data/file.txt", header = TRUE)           
txt.file <- read.table("Data/file.txt", header = TRUE, sep = "\t")

csv.file <- read.csv("Data/file.csv", header = TRUE)



###~~~ SAVING DATA ~~~~####
save(myData, file = "myData.RData")  # save the object to a file 

load(file = "myData.RData")          # load previously saved data from .RData file









