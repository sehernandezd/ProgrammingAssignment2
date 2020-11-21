## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        # 1. Initialize the inverse property
        # 2. Method for the matrix
        # 3. Method the get the matrix
        # 4. Inverse of the matrix
        # 5. Get the inverse of the matrix
        # 6. Return the inverse property
        # 7. Obtain list of the methods
        
        a <- NULL
        
        set <- function( matrix ) {
          m <<- matrix
          a <<- NULL
        }
        
        get <- function() {
          m
        }
       
        setInv <- function(inverse) {
          a <<- inverse
        }
        
        getInv <- function() {
          a
        }

        list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        # Return a matrix that is the inverse of 'x'
        # Get the matrix 
        # Calculate the inverse 
        # inverse to the object
        # Return the result
          m <- x$getInv()
          
          if( !is.null(m) ) {
            message("Obteniendo datos: ")
            return(m)
          }
          
          data <- x$get()
          
          m <- solve(data) %*% data
          
          x$setInv(m)
          
          m
}
