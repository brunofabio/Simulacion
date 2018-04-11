rm(list = ls()#Remueve todos los objetos del actualrm(list = ls()
k=500
y=runif(k,0,1);n=1:length(y)
int_aprox_1=(cumsum(exp((4*y-2)*(4*y-2+1)))*4)/n
plot(n,int_aprox_1,type = "l",xlab = "n", ylab = "promedios", main = "Calculo aproximado de integral")
int_aprox_1[length(y)]