library(ggplot2)
library(ggthemes)
library(ggcorrplot)
library(gridExtra)
library(reshape2)
library(haven)
data <- as.data.frame(read_xpt("08488-0001-Data.xpt"))

cors <- cor(data, method = 'spearman')
ggcorrplot(cors, method="square")

small<- data[,5:38]
corcsSmall<- cor(small, method ="spearman")
ggcorrplot(corcsSmall,method ="square")

large<- data[,38:84]
corcsLarge<- cor(large, method ="spearman")
ggcorrplot(corcsLarge,method ="square")

corcsLarge[1,]
sort(corcsLarge[1,], decreasing=TRUE)[1:4]

ggplot(large)+geom_point(aes(x=V38, y=V54))
ggplot(large)+geom_jitter(aes(x=V38, y=V54))

ggplot(large)+geom_jitter(aes(x=V38, y=V54), alpha= .5, size=1.2)+
 theme_tufte()+xlab("misconduct")+ylab("convictions 10-24")

misPlot<-ggplot(large)+geom_jitter(aes(x=V38, y=V54), alpha= .5, size=1.2)+
  theme_tufte()+xlab("misconduct")+ylab("convictions 10-24")

farPlot<-ggplot(large)+geom_jitter(aes(x=V38, y=V54), alpha= .5, size=1.2)+
  theme_tufte()+xlab("family size")+ylab("convictions 10-24")

grid.arrange(misPlot, farPlot)  

new<- data[,55:108]
corcsnew<- cor(new, method ="spearman")
ggcorrplot(corcsnew,method ="square")
#are there  factors  that influence a family to become a catholic family?

corcsnew[1,]
sort(corcsnew[1,], decreasing=TRUE)[1:7]
#what factors correlate the most with a catholic family?
#EDUCATION OF FATHER - HIGHER SCHOOLING,
#INTEREST IN EDUCATION BY PARENTS
#HEAD INJURIES AND FITS OF BOY
#DISCIPLINE QUALITY OF MOTHER
#CONCEPTION UNWANTED BY MOTHER
#EDUCATION OF MOTHER - HIGHER SCHOOLING



ggcorrplot(cor(data[,c(55,64,91,85,63,57,66)],method="spearman" ), method="square")


ggplot(new)+geom_jitter(aes(x=V55, y=V63), alpha= .5, size=1.2)+
  theme_tufte()+xlab("catholic family")+ylab("conception unwanted by mother")

