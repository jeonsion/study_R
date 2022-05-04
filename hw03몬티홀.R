doors <- c("1", "2", "3" )
results <- c()
car <- sample(doors, 1)
for (i in 1:10000)
{
  car<-sample(doors, 1)
  pick<-sample(doors, 1)
  open <-sample(doors[which(doors != pick & doors !=car)], 1)
  switch <-sample(doors[which(doors != pick & doors != open)])
  if(pick ==car){results = c(results, 1)}
  if(switch ==car){results = c(results, 2)}
}
sum(results ==1)/length(results)
sum(results ==2)/length(results)