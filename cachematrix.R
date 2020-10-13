## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  I <- NULL
  
  ## set the value of matrix
  set <- function(y){
    x <<- y
    I <<- NULL
    
  }
  
  ##get the value of matrix
  get <- function() x
  
  ##set the value of Inverse
  setinverse <- function(solve) I <<- solve
  
  ## get Inverse
  getinverse <- function() I
  
  ##return inverse
  solve(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  ## if inverse exits 
  I <- x$getinverse()
  if(!is.null(I)) {
    message("getting cached data of matrix")
    return(I)
  }
  
  ## else
  inverse <- x$get()
  I <- solve(inverse, ...)
  x$setinverse(I)
  I
}
