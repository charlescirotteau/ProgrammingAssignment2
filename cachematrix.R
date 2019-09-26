## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        k <- NULL
        ## Setting the matrix
        set <- function( matrix ) {
                m <<- matrix
                k <<- NULL
        }
  ## Obtaining the matrix
        get <- function() {
                m
        }
  ## Method to set the inverse of the matrix
        setInverse <- function(inverse) {
                k <<- inverse
        }
  ## Method to get the inverse of the matrix
        getInverse <- function() {
    ## Return the inverse property
                k
        }
  ## Return the methods
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
        m <- x$getInverse()
  ## Just return the inverse if its already set
        if( !is.null(m) ) {
                message("getting cached data")
                return(m)
        }
  ## Getting the matrix from our object
        data <- x$get()
  ## Calculate the inverse 
        m <- solve(data) %*% data
  ## Setting the inverse to x
        x$setInverse(m)
  ## Return the matrix

        m
}


