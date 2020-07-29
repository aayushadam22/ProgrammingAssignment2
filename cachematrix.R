## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function takes matrix x as input and sets inverse to n  and adds
##it to cache
makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  set <- function(y){
    x <<- y
    n <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) n <<- solve
  getsolve <- function() n
  list(set = set,get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

##This function checks in cache if found it uses it else calculates the
## value itself.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  n <- x$getsolve()
  if(!is.null(n)){
    message("getting inversed matrix")
    return(n)
  }
  data <- x$get()
  n <- solve(data, ...)
  x$setsolve(n)
  n
}
