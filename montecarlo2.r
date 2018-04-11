rm(list = ls())
k=500
y=runif(k,0,1);n=1:length(y)
int_aprox_2=(cumsum(((1/y)-1)*((1+((1/y)-1)^2)^(-2))*(1/(y^2))))/n
plot(n,int_aprox_2,type = "l", xlab = "n", ylab = "promedios", main = "Calculo aproximado de integral")
int_aprox_2[length(y)]

