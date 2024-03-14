## makeCacheMatrix func
makeMyCacheMatrix <- function( m = matrix() ) {

    ## Initialize the inverse property
    inverse <- NULL

    ## Method to set the matrix
    setMatrix <- function( matrix ) {
        m <<- matrix
        inverse <<- NULL
    }

    ## Method to get the matrix
    getMatrix <- function() {
        ## Return the matrix
        m
    }

    ## Method to set the inverse of the matrix
    setInverse <- function(inv) {
        inverse <<- inv
    }

    ## Method to get the inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        inverse
    }

    ## Return a list of the methods
    list(setMatrix = setMatrix, getMatrix = getMatrix,
         setInverse = setInverse,
         getInverse = getInverse)
}

## Modified version of cacheSolve
myCacheSolve <- function(x, ...) {

    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()

    ## Just return the inverse if it's already set
    if( !is.null(inv) ) {
        message("retrieving cached data")
        return(inv)
    }

    ## Get the matrix from our object
    data <- x$getMatrix()

    ## Calculate the inverse using matrix multiplication
    inv <- solve(data)

    ## Set the inverse to the object
    x$setInverse(inv)

    ## Return the inverse matrix
    inv
}
