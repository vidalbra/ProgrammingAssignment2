## R Programming - Programming Assignment #2

## The function creates a distinguish vector that caches the calc of its corresponding inverse
## It creates an object as a list with set and get functions and Lexical Scoping

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL   ## Inverse is NULL on the onset     
        ## Assign a new argument to be stored and reset inverse calc 
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
## Create set and get functions for the inverse        
        setInv <- function(inverse) inv <<- inverse
        getInv <- function() inv
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)
}
