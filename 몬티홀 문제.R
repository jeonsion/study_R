doors<-c("1", "2", "3")
results <-c()
for(i in 1:1000)
{
  car <-sample(doors, 1)
  pick <-sample(doors, 1)
  open <-sample(doors[which(doors != pick & doors != car)],1)
  switchyes <-doors[which(doors!=pick & doors != open)]
  if(pick ==car){results = c(results, "noswitchwin")}
}
sum(results =="switchwin")
sum(results == "noswitchwin")


