#결합확률 밀도함수 상관계수 구하기 252p
#
#1. X의 기댓값을 구하여 분수로 나타내기
X<-function(x,y) x*3
E_x <-integrate(function(x){
  sapply(x, function(x){
    integrate(function(y){
      sapply(y, function(y) X(x,y)) }, x^2, sqrt(x))$value
    })
  },0,1)
library(MASS)
as.fractions(E_x$value)
# Y의 기댓값 구하여 분수로 나타내기
Y<-function(x,y) 3*y
E_y <-integrate(function(x){
  sapply(x, function(x){
    integrate(function(y){
      sapply(y, function(y) Y(x,y)) }, x^2, sqrt(x))$value
  })
},0,1)
library(MASS)
as.fractions(E_y$value)
#XX의 기댓값구하기
XX<-function(x,y) x*3*x
E_xx <-integrate(function(x){
  sapply(x, function(x){
    integrate(function(y){
      sapply(y, function(y) XX(x,y)) }, x^2, sqrt(x))$value
  })
},0,1)
library(MASS)
as.fractions(E_xx$value)
#YY의 기댓값구하기
YY<-function(x,y) 3*y*y
E_yy <-integrate(function(x){
  sapply(x, function(x){
    integrate(function(y){
      sapply(y, function(y) YY(x,y)) }, x^2, sqrt(x))$value
  })
},0,1)
library(MASS)
as.fractions(E_yy$value)
#X의 분산 구하기
var_x<-E_xx$value - (E_x$value)^2; as.fractions((var_x))
#Y의 분산구하기
var_y<-E_yy$value - (E_y$value)^2; as.fractions((var_y))
#XY의 기댓값구하기
XY<-function(x,y) x*3*y
E_xy <-integrate(function(x){
  sapply(x, function(x){
    integrate(function(y){
      sapply(y, function(y) XY(x,y)) }, x^2, sqrt(x))$value
  })
},0,1)
library(MASS)
as.fractions(E_xy$value)
#X와 Y의 공분산 구하기
(cov_xy <-E_xy$value - E_x$value*E_y$value)
as.fractions(cov_xy)
#X와 Y의 상관계수 구하기
(corr_xy <-cov_xy/sqrt(var_x*var_y))
