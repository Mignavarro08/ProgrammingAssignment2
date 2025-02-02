## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ## This function creates a special matrix that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {## This defines the argument with the default mode of the matrix
inv<-NULL ## This will initialize the inv as NULL and hold the value of the matrix inverse
        set<-function(y){## This defines the function to assign new
                x<<-y ## This is the value of the matrix in parent environment
                inv<<-NULL ## This is used if there is a new matrix, it resets inv to NULL
}
        get<-function()x ## This defines the function
        setinverse<-function(inverse)inv<<-inverse ## This assign the values of inv to the parent environment
        getinverse<-function()inv ## This calls the value of the inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse) ## This is needed to reference

## Write a short comment describing this function
  
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}

