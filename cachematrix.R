## Put comments here that give an overall description of what your
## functions do

## This function creates an matrix and performs the assignment the (<< -) 
## operator which can be used to assign a value to an object
makeCacheMatrix <- function(x = matrix()) {
  z <- NULL
  set <- function(y) {
    x <<- y
    z <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) z <<- inverse
  getinverse <- function() z
  list(set = set, get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)
}

## this function returns the inverse of the matrix
## y cache or calculate the inverse matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  z <- x$getinverse()
  if(!is.null(z)) {
    message("getting cached data")
    return(z)
  }
  data <- x$get()
  z <- solve(data, ...)
  x$setinverse(z)
  z  
}
