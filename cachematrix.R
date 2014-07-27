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
      
      equalMat <<- function(q, r) {
              is.matrix(q) && is.matrix(r) && dim(q) == dim(r) && all(q == r)
      }
      
      getInverse <<- function(z) {
              if(equalMat(z, x) == TRUE) {
                      n
              }
              n <<- NULL 
      }
      

}


## The function below takes a matrix and looks to see if the inverse
##    of that matrix has been cached. If so, it gets the inverse
##    from the cache and returns it. If not, then it calculates
##    and returns the inverse of that matrix.

cacheSolve <- function(x, ...) {
        n <- getInverse(x)
        if(!is.null(n)) {
                message("getting cached data")
                return(n)
        }
        
        m <- solve(x)
        n <- m
        n
}
