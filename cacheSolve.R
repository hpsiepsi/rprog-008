cacheSolve <- function(x, ...) {
   # retrive the previous inverse, if any
   inv <- x$getSolve()
   
   if(!is.null(inv)) {
      message("getting cached data")
      return(inv) # stop here since we are done
   } # end if stored inverse exists
   
   # we have no stored inverse, so get data and compute
   data <- x$get()
   inv <- solve(data, ...)
   x$setSolve(inv)

   # return the value
   inv 
} # end cacheSolve function