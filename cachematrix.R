## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(x1) {
    x <<- x1
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(s1) s <<- s1
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(is.null(s)) {
    message("computing inverse")
    mx <- x$get()
    s <- solve(mx)
    x$setsolve(s)
  } else {
    message("getting cached data")
  }
  return(s)
}
