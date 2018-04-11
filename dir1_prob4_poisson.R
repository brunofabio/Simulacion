rm(list=ls())
Poisson_TI=function(lambda){
  u=runif(1,0,1)
  i=0; p=exp(-lambda);F=p
  while (u >= F){
    p=((lambda*p)/(i+1))
    F=F+p
    i=i+1
  }
  return(i)
}
