## Caching the Inverse of a Matrix (Almacenamiento en caché de la inversa de una matriz)

## The pair of functions that cache the inverse of a matrix.

## This function creates a special “matrix” object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setiverse,
         getiverse = getinverse)
  }



##  This function resolve the inverse of the matrix returned by makeCacheMatrix 

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setiverse(m)
  m
}


#-------------------------------------------------------------------------------
