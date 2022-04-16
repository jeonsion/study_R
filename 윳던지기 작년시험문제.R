
play <- c("0","0","0","0","0","0","0","0","0","1")
result <- c()
for(i in 1:1000)
{
  yut1 <- sample(play, 1)
  yut2 <- sample(play, 1)
  yut3 <- sample(play, 1)
  yut4 <- sample(play, 1)
  if( (yut1 == 1) & (yut2 == 1) & (yut3 == 1) & (yut4 == 1)) {result <- c(result, 1) }
  else {result <- c(result ,2) }
}
r1 <- sum(result == 1) / length(result)
r1




play <- c("0","0","0","0","0","0","0","0","1","1")
result <- c()
for(i in 1:1000)
{
  yut1 <- sample(play, 1)
  yut2 <- sample(play, 1)
  yut3 <- sample(play, 1)
  yut4 <- sample(play, 1)
  if( (yut1 == 1) & (yut2 == 1) & (yut3 == 1) & (yut4 == 1)) {result <- c(result, 1) }
  else {result <- c(result ,2) }
}
r2 <- sum(result == 1) / length(result)
r2




play <- c("0","0","0","0","0","0","0","1","1","1")
result <- c()
for(i in 1:1000)
{
  yut1 <- sample(play, 1)
  yut2 <- sample(play, 1)
  yut3 <- sample(play, 1)
  yut4 <- sample(play, 1)
  if( (yut1 == 1) & (yut2 == 1) & (yut3 == 1) & (yut4 == 1)) {result <- c(result, 1) }
  else {result <- c(result ,2) }
}
r3 <- sum(result == 1) / length(result)
r3




play <- c("0","0","0","0","0","0","1","1","1","1")
result <- c()
for(i in 1:1000)
{
  yut1 <- sample(play, 1)
  yut2 <- sample(play, 1)
  yut3 <- sample(play, 1)
  yut4 <- sample(play, 1)
  if( (yut1 == 1) & (yut2 == 1) & (yut3 == 1) & (yut4 == 1)) {result <- c(result, 1) }
  else {result <- c(result ,2) }
}
r4 <- sum(result == 1) / length(result)
r4



play <- c("0","0","0","0","0","1","1","1","1","1")
result <- c()
for(i in 1:1000)
{
  yut1 <- sample(play, 1)
  yut2 <- sample(play, 1)
  yut3 <- sample(play, 1)
  yut4 <- sample(play, 1)
  if( (yut1 == 1) & (yut2 == 1) & (yut3 == 1) & (yut4 == 1)) {result <- c(result, 1) }
  else {result <- c(result ,2) }
}
r5 <- sum(result == 1) / length(result)
r5

probabilityofmo = c(r1,r2,r3,r4,r5)

plot(probabilityofmo, type = "l", xlab = "individual provavility")