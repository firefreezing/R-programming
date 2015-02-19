makeCacheMatrix <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setMatInv <- function(inverse) m <<- inverse
  getMatInv <- function() m
  list(set = set, 
       get = get,
       setMatInv = setMatInv,
       getMatInv = getMatInv)
}