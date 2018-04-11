k=20; lambda=6; n=1000
x=rep(0,n)
for(i in 1:n){
  y=GeneraPoisson(lambda); iter=0
  while(y>k){
    iter=iter+1
    y=Po(lambda)
  }
  x[i]=y
}
xx=table(x)/n
barplot(xx,main = "Poisson Truncada - Aceptación Rechazo")

GeneraPoisson=function(lambda){
  i=0; p=exp(-lambda); F=p; u=runif(1,0,1)
  while(u>=F){
    p=(lambda*p)/(i+1)
    F=F+p
    i=i+1
  }
  y=i
}