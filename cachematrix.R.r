## These are a pair of functions that cache the inverse of a matrix.
## functions do


## This function below creates a special “matrix”, which is really a list containing a function to set and get values of matrix and inverse


makeCacheMatrix <- function(x = matrix()) { makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL
  set <- function(y) {
    x «- y
    i «- NULL
  } }




## This function computes the inverse of the special “matrix” returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) { cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x' i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
} }