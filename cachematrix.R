## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 1 makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) { ## set the matrix
      x <<- y
      i <<- NULL
    }
    get <- function() x ## get the matrix
    
    setinverse <- function(inverse) i <<- inverse  ##set the inverse matrix
    
    getinverse <- function() i ##get the inverse matrix
    
    ##Methods used
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
