## Put comments here that give an overall description of what your
## functions do

## two functions that cache the inverse of matrix

## Write a short comment describing this function

## creating a special matrix that can cache the inverse
makeCacheMatrix <- function(x = matrix()) {
      ## Create the inverse property 
      inv <- NULL
      
      ## Set the matrix
      set <- function(matrix)
      {
            x <<- matrix
            inv <<- NULL
      
      }
      
      ## Get the matrix
      get <- function()
      {
            ## return the matrix
            m
      }
      
      ## set the inverse of the matrix
      setInverse <- function(inverse)
      {
            inv <<- inverse
      }
      ## obtain the inverse of matrix
      getInverse <- function()
      {
            ## return inverse property
            inv
      }
      ## return a list of methods
      list(set = set, get = get,
           setInverse = setInverse,
           getInverse = getInverse)
}


## Write a short comment describing this function
## calculate the inverse of the matrix returned by previous function above
## if inverse has been computed, then the following function can retrieve the 
## inverse from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      mat <- x$getInverse()
      
      ## return the inverse if already set
      if(!is.null(mat))
      {
            message("getting cached data")
            return(mat)
      }
      
      ## obtain the matrix from object
      data <- x$get()
      
      ## compute the inverse using matrix multiplication
      mat <- solve(data) %*% data
      
      ## set inverse
      x$setInverse(mat)
      
      ##return the matrix
      mat
}



