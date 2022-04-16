install.packages("animation")
library(animation)
ani.options(nmax = 1000, interval = 0.01)
win.graph(7,4)
lln.ani(FUN=function(n,mu) rbinom(n, size = 1, prob = mu), mu=0.4, type="n", col.poly = "blue")
title(main = "윷가락을 1회~1000회 던졌을 때 윷가락 등의 상대도수변화화 ")

