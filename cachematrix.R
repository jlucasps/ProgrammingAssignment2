## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(arg = matrix()) {
    m <- NULL
	set <- function(y) {
	      arg <<- y
	      m <<- NULL
	}
	get <- function() { arg }
	setinverse <- function(inverse) { m <<- inverse }
	getinverse <- function() { m }
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function
cacheSolve <- function(arg, ...) {
    m <- arg$getinverse()
	if (!is.null(m)) {
	      message("retrieving cache")
	      return(m)
	}
	data <- arg$get()
	m <- solve(data, ...)
	arg$setinverse(m)
	m
}
