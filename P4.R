#
data=rnorm(1000,mean=0,sd=10)
hist(data)
var(data)
sd(data)
mean(data)
#Se tienen datos con distribucion normal y que n correspondera a 1000.
#Se calcula el intervalo de confianza en una t student con 95% de confianza.
mean(data)+ qt(0.975,999)*sd(data)*c(-1,1)/(1000^(1/2))
#Se realiza el bootstrap.
sh=sd(data)/sqrt(1000)
boo=NULL
t=NULL
for (i in 1:1000){
  xx<-sample(data,1000,replace=TRUE)
  u<-mean(xx) #la media del remuestreo.
  boo[i]<-u #Se agrega una nueva media.
  t[i]<-(u-mean(data))/(sd(xx)/sqrt(1000))
}
c(mean(data),mean(boo))
#Intervalo de confianza asociado a 95%.
quantile(boo,probs=c(0.025,0.975))
quantile(t,probs=c(0.025,0.975))
#Intervalo de Bootstrap.

mean(data)+quantile(t,c(0.025,0.975))*(sd(data)/sqrt(1000))

mean(data)+ qt(0.975,999)*sd(data)*c(-1,1)/(1000^(1/2))