## Put comments here that give an overall description of what your
## functions do
Matrix inversion have some benefit to caching the inverse of a matix rather computing repeatedly.
makeCacheMatrix creates a list containg a function to

set the value of the matrix
get the value of the matrix
set the value of inverse of matrix
get the value of inverase of matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- null
  set <- function(y){ 
    x <<- y
    inverse <<- NULL
    get <- function()x
  }
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinvers = getinvers) 
}


## Write a short comment describing this function

This following function returns the inverse of the matrix. 
It first checks to see if the inverse has already been calculated. 
If so, it gets the results and skips the computation. 
Otherwise, it calculates the inverse and sets the value of inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
