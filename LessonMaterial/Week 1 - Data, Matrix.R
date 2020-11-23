########  MATRICES ##########

x <-  1:9 #one dimentional matric
x

###### Create metrix -----
X <- matrix (x, nrow =3, ncol = 3) #multi dimentional default by column
X

Y <-  matrix (x, nrow =3, ncol = 3, byrow = TRUE) #trasnpose of X
Y

Z <- matrix(0,2,4)
Z

cbind(col1 <-x, col2 <-rev(x), col3 <- rep(1,9)) #combining column, rows


###### Create subset of matrix ------
X
X[1,2] #row 1, column 2
X[1,] 
X[,2]
X[2,c(1,3)]

##### Perforn matrix Operation ------

X + Y
X - Y
X * Y #mulriplication element to element
X / Y

X %*% Y #matrix operation

Z <-  matrix(c(9,2,-3,2,4,-2,3,-2,16),3, byrow = TRUE)
Z
solve(Z) #getting the inverse of matrix
solve(Z) %*% Z
diag(3)
all.equal(solve(Z) %*% Z, diag(3)) #checking if they are equal

solve(X)

######Getting info from metrix ------
X
dim(X)
nrow(X)
ncol(X)
rowSums(X) #sum up value in row
colMeans(X) #sum up mean of column


####### LIST ######
# List is one dimensional but can contain different data type in a structure

###### Create list -------

list(42,"Hello",TRUE) # [[1]]element 1, [[2]] element 2

ex_list <- list(
  a = c(1,2,3,4),
  b = TRUE,
  c = "Hello!",
  d = function(arg = 42) {print("Hello World")},
  e = diag(5)
)

ex_list

###### Subsetting list -------
ex_list$e #Access element of a list

ex_list[1:2] #list of 2
ex_list[1] #return a list with 1sr element in it
ex_list [[1]] 
ex_list [c("e","a")]
ex_list ["e"] #list waht element e
ex_list[["e"]] #return what are in e

ex_list$d
ex_list$d(arg = 1)

######## DATAFRAME #######
# Dataframe is a list of vector
###### Create dataframe -----

example_data = data.frame(
  x = c(1,3,5,7,8,1,3,5,7,9),
  y = c(rep("Hello",9),"GoodBye"),
  z = rep(c(TRUE,FALSE),5)
)

example_data

list(
  x = c(1,3,5,7,8,1,3,5,7,9),
  y = c(rep("Hello",9),"GoodBye"),
  z = rep(c(TRUE,FALSE),5)
)

example_data$x

all.equal(length(example_data$x),
          length(example_data$y),
          length(example_data$z)
)

###### Reviewing Dataframe ------

str(example_data) #check type of data

nrow(example_data)
ncol(example_data)
dim(example_data)

###### loading data ------

Galton = mosaicData :: Galton
Galton

View(Galton) #open dataviewr
head(Galton, n = 10)
str(Galton) #structure function

Galton$sex
levels(Galton$sex)

#Dataframe automate make factor
###### Subset data -------

#like Matrix
Galton[7,3]
Galton[,2]
names(Galton) #getting name of column
Galton[1,]

#like List
Galton[5] 
Galton[1:2] #using :

Galton$father #extracting height of father returning vector
Galton[2] #extracting height of father returning dataframe
Galton["father"] #give dataframe
Galton[["father"]] #getting element -> Vector

## more compleaz
Galton[Galton$sex == "F",] $height
head(subset(Galton, subset = height > 70), n = 10)

####### DATAFRAME VS TIBBLE ########

library(tibble)
#print the same matter but subsetting differently
Galton = as_tibble(Galton)
Galton

Galton["height"] #tibble
Galton$height #vector
Galton[,5] #tibble
Galton[1,5] #tibble

Galton = as.data.frame(Galton)
Galton["height"] #DataFrame
Galton$height #vector
Galton[,5] #vector
Galton[1,5] #vector

#attach() DO NOT USE !!!!

####### IMPORTING EXTERNAL DATA #########

library(readr)

ex_from_cvs <- read_csv("C:/Users/Matta Nguyen/Desktop/Lesson/CS - Applied in Statistic/jan17Items.csv",
                        , stringsAsFactors = F
                        , header = T)

head(ex_from_cvs, n = 10)

read_csv("C:/Users/Matta Nguyen/Desktop/Lesson/CS - Applied in Statistic/jan17Items.csv") #faster, tibble
read.csv("C:/Users/Matta Nguyen/Desktop/Lesson/CS - Applied in Statistic/jan17Items.csv") #slower, dataframe. By default keep character as factor

#Tibble keeps things in data
# Dataframe keeps things as factor
