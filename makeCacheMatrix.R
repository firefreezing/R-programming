makeCacheMatrix <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y   # Define the value of x, where x is from the parent environment. 
              # This is the use of <<-.
    m <<- NULL
  }
  get <- function() x
  setMatInv <- function(inverse) m <<- inverse    # Store the value of inverse into m.
  getMatInv <- function() m   # The default value of makeCacheMatrix$getMatInv is NULL.
                              # Its value gets updated by makeCacheMatrix$setMatInv.
  list(set = set, 
       get = get,
       setMatInv = setMatInv,
       getMatInv = getMatInv)
}