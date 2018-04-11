rm(list = ls())
k=500
U=runif(k,0,1);n=1:length(U)
int_aprox=((cumsum(U*exp(U)))/n)-((cumsum(U)/n)*(cumsum(exp(U)))/n)
plot(n,int_aprox,type = "l",xlab = "n",ylab = "Promedios",main = "Calculo aproximado de covarianza")
int_aprox[length(U)]
