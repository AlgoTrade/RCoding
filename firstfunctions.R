add2 <- function(x, y){
        x+y
}

above10 <- function(x){
  use <- x > 10
  x[use]
}

above <- function(x, n = 10){
  use <- x > n
  x[use]
}

columnMean <- function(x, removeNA = TRUE){
    nc <- ncol(x)        #identify the number of columns
     means <- numeric(nc) #create an empty vector, inizialized with the columns
    for(i in 1:nc){
        means[i] <- mean(x[,i], na.rm = removeNA)
    }
    means   
  
}