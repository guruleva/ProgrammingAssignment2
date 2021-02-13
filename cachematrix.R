## These are a pair of functions that cache the inverse of a matrix


## Creates a special matrix object that can cache its inverse


makeCacheMatrix <- function( x = matrix() ) 
  
  i <- NULL

set <- function( y ) {
  x <<- y
  i <<- NULL
}



## This function computes the inverse of the special “matrix” returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
  
  i <- x$getInverse()
  
  if( !is.null(i) ) {
    message("getting cached data")
    return(i)
  }
  
  data <- x$get()
  
  i <- solve(data) %*% data
  
  x$setInverse(i)
  
  i
}