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
## 2 cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  i <- x$getinverse()
  
  #Return the matrix inverse matrix defined as 'i' 
  
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  ## Get the above matrix
  data <- x$get()
  
  ## Solving the matrix multiplication 
    i <- solve(data)
    
  ## adding to the object
  x$setinverse(i)
  
  #Return the inverse
  i
}
