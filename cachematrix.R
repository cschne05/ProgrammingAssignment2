## Two functions used to calculate and cache the inverse of a matrix

## The function below takes a matrix as an object, calculates the
##    inverse of that matrix, then stores the result.

makeCacheMatrix <- function(x = matrix()) {
      n <- NULL
      m <- matrix()
      
      calcInverse <- function(y) {
              x <<- y
              m <<- solve(x)
              n <<- m
      }
      
      getInverse <- function() {
              n
      }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        n <- x$getInverse()
        if(!is.null(n)) {
                message("getting cached data")
                return(n)
        }
        
        
}
