library(prob)
(ex4_1_4 <- rolldie(2, makespace = TRUE))
(S<-addrv(ex4_1_4, x_sum=(X1 +X2)*1))
(ES <- sum(S$x_sum*S$probs))  #평균
(VX<-sum(S$x_sum^2*S$probs)-ES^2)   #제곱의 평균 - 평균의 제곱으로 분산구하기
library(MASS)           #MASS로딩 후 분수로 나타내기 위함함
as.fractions(VX)


