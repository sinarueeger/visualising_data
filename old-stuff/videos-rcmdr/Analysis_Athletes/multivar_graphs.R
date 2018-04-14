## Multivariate Graphs
## ---------------------

scatterplot(rcc~bmi | sex, reg.line=FALSE, smooth=FALSE, spread=FALSE, 
  boxplots='xy', span=0.5, by.groups=FALSE, data=athletes)
windows()

scatterplotMatrix(~bmi+ferr+hc+hg | sex, reg.line=FALSE, smooth=FALSE, 
  spread=FALSE, span=0.5, diagonal= 'boxplot', by.groups=FALSE, data=athletes,
   row1attop=TRUE)
windows()

xyplot(rcc ~ bmi | sport, type="p", pch=16, auto.key=list(border=TRUE), 
  par.settings=simpleTheme(pch=16), scales=list(x=list(relation='same'), 
  y=list(relation='same')), data=athletes)
windows()

dotplot(sex ~ bmi | sport, max.freq=2, data=athletes, 
  panel=panel.dotplot.tb, factor=0.5, cex=1, pch=16, between=list(x=0,y=1), 
  scales=list(x=list(alternating=1), y=list(alternating=1)))

