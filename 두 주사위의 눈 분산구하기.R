#확률분포가 주어지고 표본평균의 평균 또는 분산을 구할 때 
x = c()
fx=c()
data = data.frame(x, fx)
data
mean_x = sum(data$x*data$fx)
varx = (sum(data$x^2*data$fx)-mean_x^2)

