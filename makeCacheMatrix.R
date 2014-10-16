makeCacheMatrix <- function(x = numeric()) {
   inv <- NULL  # intiate the inverse to NULL since we don't know it
   
   # allow the user to set the matrix value
   set <- function(y) {
      x <<- y
      inv <<- NULL  # we change the value, so erase the old linverse
   }
   
   # impliment simple assignment functions
   get <- function() x
   setSolve <- function(inverse) inv <<- inverse
   getSolve <- function() inv
   
   # arange a list of functional calls
   list(set = set, get = get,
        setSolve = setSolve,
        getSolve = getSolve)
}