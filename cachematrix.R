## Put comments here that give an overall description of what your
## functions do

## Returns the inverse of matrix (assuming its invertible)
##

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}

##checking github dekstop and R connection
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ## getting the inverse from above function
  m <- x$getinverse()
  
  ## checking if matrix is empty
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  #calculating inverse when 'm' is null matrix
  
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
