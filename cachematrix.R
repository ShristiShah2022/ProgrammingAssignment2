## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Below function is used to cache matrix and inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL
  set <- function(y){
     x <<- y
     invMatrix <<- NULL
    
  }
  get <- function()x
  setInvMatrix <- function (inverse) i<<- inverse
  getInvMatrix <- function() i
  list (set = set, get=get, 
        setInvMatrix = setInvMatrix, getInvMatrix= getInvMatrix)
}


## Write a short comment describing this function

## Below function is used to see if inverse of a matrix exist? 
## If does not exists do computation using solve function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInvMatrix()
  if(!is.null(i)){
    message("Get the cached data")
    return (i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setInvMatrix(i)
  i
  
}
