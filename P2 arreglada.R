#A)
#Para que la moneda no este cargada la media de los lanzamientos de moneda debe estar
#lo mas cerca del 0.5.
#Se cambian los valores de cara y sello a binomial(0,1).
moneda_A<-as.numeric(moneda_A=="cara")
#
moneda_B<-as.numeric(moneda_B=="cara")
#
moneda_C<-as.numeric(moneda_C=="cara")
#Se realiza un t.test para cada moneda donde el p valor indicara que tan lejana
#se encuentra la media del 0.5.
t.test(monA,mu=0.5,conf.level = 0.95) #pvalor=0.1100
t.test(monB,mu=0.5,conf.level = 0.95) #pvalor=0.4037
t.test(monC,mu=0.5,conf.level=0.95)  #pvalor=0.1598

#B)
#n es muy pequeño para asegurar que el test sea valido.
t.test(radiactividad,mu=0.3,alternative="greater") #Si se rechaza significa que no es apto
#para repoblar.
#el intervalo [0.324, inf] con 95% de certeza confirma que la media tiende a ser mayor que 0.3 por lo que
#se descarta que sea apto.

#C)
#Para demostrar que el tiempo de reaccion de uno es menor que otro se debe comparar
#el cuociente de las 2 medias.
#Para varianzas iguales.
t.test(Control,Tratamiento,mu=0,alternative="less",var.eq=TRUE,conf.level=0.95)
#Para varianzas distintas.
t.test(Control,Tratamiento,mu=0,alternative="less",var.eq=FALSE,conf.level=0.95)
#Al ser ambos intervalos completamente negativos se puede decir que tiende a tener
#el placebo un tiempo de respuesta que la droga.

