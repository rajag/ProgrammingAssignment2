## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    #function to create a list with set and get values for the matrix
    
    s<-NULL
    # set the value
    set <- function (y){
        x<<-y
        s<<-NULL
        
    }
    #functions for getting, and setting the globals
    
    get <- function() x
    setInverse <- function(Inverse) m <<- Inverse
    getInverse <- function() m
    #return a list of the functions
    list(set = set, get = get, 
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function
 ## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
 
    s <- x$getinverse()
    if(!is.null(s)) {
        message("get cached data")  
        return(s)
    }
    data <- x$get()
    ## solve function to get inverse
    s <- solve(data, ...)
    x$setinverse(s)
    s
}
