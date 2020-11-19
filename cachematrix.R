## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function() m 
  getinverse <- function(inverse) m <- inverse <<- solve()
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
inverse <- solve(x)


}

# makeCacheMatrix(2)
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data from inverse vector")
    return(m)
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
  }
  #if the inverse if not there, first it is calculated and then retrieved.
  data <- x$get()                               
  y <- solve(data, ...)
  x$setinverse(y)
  y
        ## Return a matrix that is the inverse of 'x'
  
}


