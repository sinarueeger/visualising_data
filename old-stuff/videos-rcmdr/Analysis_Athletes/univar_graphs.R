## Graphs
## ---------

summary(athletes)
Hist(athletes$bmi, scale="percent", breaks="Sturges", col="darkgray")
windows()
barplot(table(athletes$sex), xlab="sex", ylab="Frequency")
windows()
barplot(table(athletes$sport), xlab="sport", ylab="Frequency")
windows()
stripchart(bmi ~ sex, vertical=TRUE, method="stack", xlab="sex", ylab="bmi",
   data=athletes)
windows()
boxplot(bmi~sex, ylab="bmi", xlab="sex", data=athletes)
windows()
scatterplot(rcc~bmi, reg.line=FALSE, smooth=FALSE, spread=FALSE, 
    boxplots='xy', span=0.5, data=athletes)

?scatterplot

