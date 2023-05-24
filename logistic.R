library(ggplot2)
library(ggthemes)
library(gridExtra)
library(ggdogs)
library(reshape2)
library(rethinking)
library(lubridate)
library(ggcorrplot)
library(dagitty)
library(haven)
th <- theme_tufte(base_size = 10) + theme(plot.title.position = "plot")

data <- as.data.frame(read_xpt("crimeLife.xpt"))
head(data)

#check out these prima facie correlates
small <- data[,c(10,  48, 69,  157,  175, 181, 255,300) ]

cors <- cor(small, method = 'spearman')
ggcorrplot(cors, method="square")

#first we need to drop 10s with 0s, rename the others to 0 and 1
small <- small[small$V10 != 0,]

#check correlations again
cors <- cor(small, method = 'spearman')
ggcorrplot(cors, method="square")

#10, 48, 69, 157, 175,181,255,300
names(small) <- c("convicted", "povertyMother","familySize", "pottyTraining", 
                  "arithmetic","verbalReasoning","IQ",
                  "criminalParents")
head(small)
#now need to inspect the meaning of the variables

#poverty: 0 not known, 1 no poverty, 2 poverty; clean up
small <- small[small$povertyMother != 0,]

#familySize: remember these are categories
#1 none, 2 one, 3 two, 4 three, 5 four, 6 five or more


#potty training
# RIGID: SEVERELY RESTRICTED. REMEMBERED BY MOTHER AS ANXIOUS
# TIME USUALLY ASSOCIATED WITH SCENES AND BATTLES OF WILL.
# SEVERE, ANXIOUS HANDLING. MOTHER DETERMINED TO GET BABY
# CLEAN BY A DEFINITE AGE, ANGRY AND EMOTIONAL ABOUT TRAINING,
# AND CHILD PUNISHED FOR ACCIDENTS. INCLUDED MOTHERS WHO FUSS
# ABOUT "CONSTIPATION", USE SOAP PESSARIES AND ENEMAS.

#0 not known, 1 not rigid, 2 rigid; clean up the variable
small <- small[small$pottyTraining !=0,]
small$pottyTraining
# ! is negative

#arithmetic: 0 not known, then categories: 1 best 40%, 2 next 35%, 3:next 15%;
#4: worst 10%; remove zeros
small <- small[small$arithmetic !=0,]
small$arithmetic

#verbal reasoning: 0 not known, then categories: 1 best 40%, 2 next 35%, 3:worst 25%; 
#remember these are categories; remove zeros
small <- small[small$verbalReasoning !=0,]
small$verbalReasoning

#IQ: 0 not known, then categories: 1: 111 or more, 2: 101-110, 3: 9-10100, 4: 90 or less;
#remove zeros
small <- small[small$IQ !=0,]
small$IQ


#parents: keep all, but remember categories:
#1 NO OPERATIVE PARENT CONVICTED
#2 PARENT CONVICTED AS JUVENILE ONLY
#3 PARENT CONVICTED ONCE ONLY AS ADULT
#4 PARENT CONVICTED TWICE AS ADULT
#5 PARENT CONVICTED 3 TIMES AS ADULT
#6 PARENT CONVICTED 4 OR MORE TIMES AS ADULT

#calculate and check cors again
cors <- cor(small, method = 'spearman')
ggcorrplot(cors, method="square")

cors

#note verbal reasoning, IQ and arithmetic are all strongly correlated, 
#we will pick arithmetic skills as it's the best predictor from these three

#now check data structure

str(small)

#convicted needs to be 0/1, all need to be integers

small$convicted <- ifelse(small$convicted == 1, 0, 1)
for(i in 1:8){
  small[,i] <- as.integer(small[,i])
}

#check structure again
str(small)


#ok, let's build some model now!
#of course, we start with potty training
pottyModel <- ulam(
  alist(
    convicted ~ dbinom( 1 , p ) ,
    logit(p) <- a + b[pottyTraining] ,
    a ~ dnorm( 0, 1),
    b[pottyTraining] ~ dnorm( 0 , .5 )
  ) , data=small, log_lik = TRUE )

pottyModel

#check your priors!

prior <- extract.prior( 
  pottyModel , n=1e4 )

p <- sapply( 1:2 , function(k) inv_logit( prior$a + prior$b[,k] ) )

dens( p, adj=0.1 )

#now posterior
precis( pottyModel , depth=2 )
post <- extract.samples(pottyModel)
baseline <- inv_logit(post$a)
dens (baseline, cex.axis=1.3, cex.lab=1.5)

dim(post$b)

#use the second  number in the calculations
postDF <- sapply( 1:2 , function(k) inv_logit(post$a + post$b[,k]))

str(postDF)

head(
  postDF
)
postDFLong <- melt(postDF)

head(postDFLong)

colnames(postDFLong) <- c("no", "pottyTraining", "probability")

precDF <- precis( pottyModel , depth=2 )
postDFLong$pottyTraining<- as.factor(postDFLong$pottyTraining)

precDF

means <- inv_logit(precDF$mean[1] + precDF$mean[2:3])
means

#so notice potty training seems to make more than 10% difference in terms
#of predictive power!

ggplot(postDFLong,aes(x = pottyTraining, y = probability))  + 
  geom_violin() + 
  geom_jitter(width = .2, height = 0.02, alpha = .2, size = 1.2)+
  annotate(geom = "label", label = round(means,2), x = levels(postDFLong$pottyTraining), y = means)

# Now add criminal record of parents, with prior checks and means! Make sure priors make sense!

str(small)

pottyCriminalModel <- ulam(
  alist(
    convicted ~ dbinom( 1 , p ) ,
    logit(p) <- a + b[pottyTraining] + crim[criminalParents] ,
    a ~ dnorm( 0, 1),
    b[pottyTraining] ~ dnorm( 0 , .5 ),
    crim[criminalParents]  ~ dnorm( 0 , .5 )
  ) , data=small, log_lik = TRUE )

precis(pottyCriminalModel, depth = 2)
compare(pottyModel,pottyCriminalModel)

post <- extract.samples(pottyCriminalModel)
str(post)

#check impact on baseline with no rigidity

postDFnoRig <- sapply( 1:6 , function(k) inv_logit(post$a + post$b[,1] + post$crim[,k]))
str(postDFnoRig)
colnames(postDFnoRig) <- c("no", "juvenile", "onceAdult", "twiceAdult", "thriceAdult", "moreAdult")

precDF <- precis(pottyCriminalModel, depth = 2)
precDF
means <- inv_logit(precDF$mean[1] + precDF$mean[2] + precDF$mean[1:6])
means

postDFLongNoRig <- melt(postDFnoRig)
head(postDFLongNoRig)

colnames(postDFLongNoRig) <- c("id","criminalParents", "probability")
str(postDFLongNoRig)

ggplot(postDFLongNoRig,aes(x = criminalParents, y = probability))  + 
  geom_violin()+ th+
  geom_jitter(width = .2, height = 0.02, alpha = .2, size = 1.2)+
  annotate(geom = "label", label = round(means,2), x = levels(postDFLongNoRig$criminalParents), y = means)


#now with rigid training
postDFyesRig <- sapply( 1:6 , function(k) inv_logit(post$a + post$b[,2] + post$crim[,k])) #change in b 1->2
str(postDFyesRig)
colnames(postDFyesRig) <- c("no", "juvenile", "onceAdult", "twiceAdult", "thriceAdult", "moreAdult")

precDF <- precis(pottyCriminalModel, depth = 2)
precDF
precDF$mean

means <- inv_logit(precDF$mean[1] + precDF$mean[2] + precDF$mean[1:6])
means

postDFLongYesRig <- melt(postDFyesRig)
head(postDFLongYesRig)
colnames(postDFLongYesRig) <- c("id","criminalParents", "probability")
str(postDFLongYesRig)

ggplot(postDFLongYesRig,aes(x = criminalParents, y = probability, color = "blue" ))+
  geom_violin()+ th +
  geom_jitter(width = .2, height = 0.02, alpha = .2, size = 1.2)+
  annotate(geom = "label", label = round(means,2), x = levels(postDFLongYesRig$criminalParents), y = means)


ggplot()+
  geom_violin(data=postDFLongYesRig, aes(x=criminalParents, y=probability, color="Rigid"))+ th+
  geom_jitter(data=postDFLongYesRig, aes( x=criminalParents, y=probability, color="Rigid"), width = .2, height = 0.02, alpha = .2, size = 1.2)+
  annotate(geom = "label", label = round(means,2), x = levels(postDFLongYesRig$criminalParents), y = means)+
geom_violin(data=postDFLongNoRig, aes(x=criminalParents, y=probability, color="No Rigid"))+ th+
  geom_jitter(data=postDFLongNoRig, aes( x=criminalParents, y=probability, color="No Rigid"), width = .2, height = 0.02, alpha = .2, size = 1.2)+
  annotate(geom = "label", label = round(means,2), x = levels(postDFLongNoRig$criminalParents), y = means)



#now add arithmetic

names(small)
small$arithmetic

pottyCriminalModel2 <- ulam(
  alist(
    convicted ~ dbinom( 1 , p ) ,
    logit(p) <- a + b[pottyTraining] + crim[criminalParents] + art[arithmetic] ,
    a ~ dnorm( 0, 1),
    b[pottyTraining] ~ dnorm( 0 , .5 ),
    crim[criminalParents]  ~ dnorm( 0 , .5 ),
    art[arithmetic]~ dnorm( 0 , .5 )
  ) , data=small, log_lik = TRUE )

coefs <- precis(pottyCriminalModel2, depth = 2)$mean

exp(coefs)

post <- extract.samples(pottyCriminalModel2)
str(post)