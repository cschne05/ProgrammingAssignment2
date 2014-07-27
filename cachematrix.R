## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      n <- NULL
      m <- matrix()
      
      calcInverse <- function(y) {
              x <<- y
              m <<- solve(x)
              n <<- m
      }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
