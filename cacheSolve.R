cacheSolve <- function(x, ...) {
  m <- x$getMatInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setMatInv(m)
  m
}