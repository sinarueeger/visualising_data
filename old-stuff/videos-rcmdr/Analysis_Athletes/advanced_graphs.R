##  ================================
##  A D V A N C E D   G R A P H S
##  ================================

##  * * * * * * * *
##  1) Mosaicplot
##  * * * * * * * *

barplot(table(athletes$sex), xlab="sex", ylab="Frequency")
barplot(table(athletes$sport), xlab="sex", ylab="Frequency")

plot(table(athletes$sex, athletes$sport), main="")
plot(table(athletes$sport, athletes$sex), main="", color=TRUE)

##  What does the function "mosaicplot"?
?mosaicplot

##  * * * * * * * * * * * *
##  2) Heatmap
##  * * * * * * * * * * * *

##  get data: fb_data.csv (separated by ";")
##  --------
str(fb_data)
dim(fb_data)
head(fb_data)

##  data contain questionnaire data of 359 questioned persons
##  rating of 16 statments in the first 15 columns
##  -----------------------------------------------------------
names(fb_data)
# [1] "statement.1"  "statement.2"  "statement.3"  "statement.4"  "statement.5"
# [6] "statement.6"  "statement.7"  "statement.8"  "statement.9"  "statement.10"
#[11] "statement.11" "statement.12" "statement.13" "statement.14" "statement.15"
#[16] "statement.16" "statement.17" "gender"

##  get informed about the R-command "heatmap"
##  ------------
?heatmap

##  we need a numeric matrix containing answer-levels for the heatmap
##  ------------------------
my.answers <- fb_data[,1:16]
my.num.matrix <- as.matrix(t(my.answers))

##  choose 6 colors to represent the 6 rating levels 0,1,...,5
##  0: "I agree completly", ..., 5: "I do not agree at all"
##  -------------------------------------------------------------
hmcol <- c("red","orange","yellow","lightblue","blue","purple")

##  choose pink to represent women (gender==1) and blue for men:
##  -------------------------------------------------------------
col.gender <- ifelse(fb_data$gender==1, "pink","skyblue")


##  some options
##  -------------
par( oma=c(0,0,0,7))  # we want a big right margin

##  Heatmaps
##  --------
# show matrix with Rows and Cos in original order
clust.hm <- heatmap(my.num.matrix,na.rm=TRUE,col=hmcol,scale="none",
                 keep.dendro=TRUE,Rowv=NA,Colv=NA)

# clusterung cluster Rows and Cols
clust.hm <- heatmap(my.num.matrix,na.rm=TRUE,col=hmcol,scale="none", keep.dendro=TRUE)

# cluster and label col by the gender-status
clust.hm <- heatmap(my.num.matrix,na.rm=TRUE,col=hmcol,scale="none", keep.dendro=TRUE, ColSideColors=col.gender)


##  use package "gplots" for heatmap with colorbar
##  ------------------------------------------------
library("gplots")
clust.hm <- heatmap.2(my.num.matrix,na.rm=TRUE,col=hmcol,scale="none",
              symkey=FALSE, density.info="none", trace="none",
                 keep.dendro=TRUE)


clust.hm <- heatmap.2(my.num.matrix,na.rm=TRUE,col=hmcol,scale="none",
              symkey=FALSE, density.info="none", trace="none",
                 keep.dendro=TRUE,ColSideColors=col.gender)




