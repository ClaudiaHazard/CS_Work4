#A)
set.seed(6)
#Funcion de estimacion de la media.
estia<-function(x,d){return(mean(x[d]))}
#se generan 1000 remuestreos de medias.
a<-boot(prioridad,estia,R=1000)
#Intervalo para 90%
boot.ci(a,conf=0.90,var.t0 = 1200000/length(prioridad),type='bca')
#Intervalo para 95%
boot.ci(a,conf=0.95,var.t0 = 1200000/length(prioridad),type='bca')
#Intervalo para 99%
boot.ci(a,conf=0.99,var.t0 = 1200000/length(prioridad),type='bca')

#B)
#Funcion de estimacion de la media y varianza.
estib<-function(x,d){
  return(c(mean(x[d]),var(x[d])/length(d)))
}
#se generan 1000 remuestreos de medias y varianzas.
b<-boot(prioridad,estib,R=1000)
#Intervalo para 90%
boot.ci(b,conf=0.90,type='bca')
#Intervalo para 95%
boot.ci(b,conf=0.95,type="bca")
#Intervalo para 99%
boot.ci(b,conf=0.99,type="bca")

#C)
hist(prioridad)
qqplot(prioridad,rnorm(1000))
plot(b,index=1)
hist(b$t[,1])
abline(v=IC$bca[,c(4,5)],col="red")

#E)

