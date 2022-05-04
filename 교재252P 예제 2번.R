XY <- function(x, y) x*y*3*x
EXY <- integrate( function(x) {
  sapply(x, function(x) {
    integrate(function(y) {
      sapply(y, function(y) XY(x, y)) },0,x)$value
  })
} ,0,1)
EXY
library(MASS)
as.fractions(EXY[[1]])