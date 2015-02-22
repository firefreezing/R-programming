# catcheSolve function reads in another function defined as makeCacheMatrix. It loads
# in the inverse of the square matrix if it has been calculated and cached before, or it 
# calculates the inverse should it is the first time seeing the matrix.

cacheSolve <- function(x, ...) {
  m <- x$getMatInv()  # If the inverse of the matrix has already been calculated before,
                      # just load in and signaled "getting cached data" 
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()   # Load the square matrix that is saved in makeCacheMatrix$getMatInv.
  m <- solve(data, ...)   # Compute its inverse.
  x$setMatInv(m)    # Store the newly solved inverse into function makeCacheMatrix$setMathInv(). 
  m
}

