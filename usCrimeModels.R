library(rethinking)
library(ggplot2)
library(ggthemes)
library(ggcorrplot)

th <- theme_tufte(base_size = 10) + theme(plot.title.position = "plot")

# 
# Our data is cited from the Mathematics and Statistics Resource Centre (MASH),
# based at the University of Sheffield, originally contributed by Katy Dobson of 
# the University of Leeds upon investigating crime rates in 47 US states spanning
# across a 10 year observation. The data was sourced from https://www.sheffield.ac.uk/mash/statistics/datasets.
# 

crime <- read.csv("CrimeR.csv")

crime$id <- 1:47
training <- sample(crime$id, 35)
test <- crime$id[!crime$id %in% training]
crTest <- crime[test,]
crTrain <- crime[training,]


cors <- cor(crime, method = "spearman")
ggcorrplot(cors)


#fist null

set.seed(123)
crimeNull <- ulam(
  alist(
    CrimeRate ~ dnorm( mu , sigma ) ,
    mu <- a,
    a ~ dnorm(100 , 100) ,
    sigma ~ dunif( 0 , 50 )
  ) , data=crTrain, log_lik = TRUE)




#check priors

priorsNull <- extract.prior(crimeNull)
priorLinkNull <- link(crimeNull,post = priorsNull)

str(priorLinkNull)

priorMeansNull <- apply(priorLinkNull, 2, mean)
priorHPDINull <- data.frame(t(apply(priorLinkNull, 2, HPDI)))
names(priorHPDINull) <- c("low", "high") 


ggplot()+geom_point(data = crTrain, aes(x = 1:35, y = CrimeRate))+th+
  geom_line(aes(x = 1:35, y = priorMeansNull))+
  geom_ribbon(aes(x = 1:35, ymin = priorHPDINull$low, ymax = priorHPDINull$high),
              alpha = .5, fill = "skyblue")



#get and check posteriors


precis(crimeNull)

posteriorLinkNull <- link(crimeNull)


str(posteriorLinkNull)

posteriorMeansNull <- apply(posteriorLinkNull, 2, mean)
posteriorHPDINull <- data.frame(t(apply(posteriorLinkNull, 2, HPDI)))
names(posteriorHPDINull) <- c("low", "high") 


ggplot()+geom_point(data = crTrain, aes(x = 1:35, y = CrimeRate))+th+
  geom_line(aes(x = 1:35, y = posteriorMeansNull))+
  geom_ribbon(aes(x = 1:35, ymin = posteriorHPDINull$low, ymax = posteriorHPDINull$high),
              alpha = .5, fill = "skyblue")


#check mse on test data


testLinkNull <- link(crimeNull, crTest)
testMeansNull <- apply(testLinkNull, 2, mean)

mseNull <-   mean(  (  testMeansNull - crTest$CrimeRate  ) ^ 2   )

mseNull













## now add a continuous predictor, youth unemployed

names(crTrain)

set.seed(12234)
crimeYU <- ulam(
  alist(
    CrimeRate ~ dnorm( mu , sigma ) ,
    mu <- a + yu * YouthUnemploy10,
    a ~ dnorm(100 , 100) ,
    yu ~ dnorm(0 , 50) ,
    sigma ~ dunif( 0 , 50 )
  ) , data=crTrain, log_lik = TRUE)


#check priors

priorsYU <- extract.prior(crimeYU)
priorLinkYU <- link(crimeYU,post = priorsYU)

str(priorLinkYU)

priorMeansYU <- apply(priorLinkYU, 2, mean)
priorHPDIYU <- data.frame(t(apply(priorLinkYU, 2, HPDI)))
names(priorHPDIYU) <- c("low", "high") 


ggplot()+geom_point(data = crTrain, aes(x = 1:35, y = CrimeRate))+th+
  geom_line(aes(x = 1:35, y = priorMeansYU))+
  geom_ribbon(aes(x = 1:35, ymin = priorHPDIYU$low, ymax = priorHPDIYU$high),
              alpha = .5, fill = "skyblue")



# revise your priors


set.seed(12234)
crimeYU <- ulam(
  alist(
    CrimeRate ~ dnorm( mu , sigma ) ,
    mu <- a + yu * YouthUnemploy10,
    a ~ dnorm(100 , 40) ,
    yu ~ dnorm(0 , 4) ,
    sigma ~ dunif( 0 , 30 )
  ) , data=crTrain, log_lik = TRUE)




#check priors again

priorsYU <- extract.prior(crimeYU)
priorLinkYU <- link(crimeYU,post = priorsYU)

str(priorLinkYU)

priorMeansYU <- apply(priorLinkYU, 2, mean)
priorHPDIYU <- data.frame(t(apply(priorLinkYU, 2, HPDI)))
names(priorHPDIYU) <- c("low", "high") 


ggplot()+geom_point(data = crTrain, aes(x = 1:35, y = CrimeRate))+th+
  geom_line(aes(x = 1:35, y = priorMeansYU))+
  geom_ribbon(aes(x = 1:35, ymin = priorHPDIYU$low, ymax = priorHPDIYU$high),
              alpha = .5, fill = "skyblue")


#get and check posteriors


precis(crimeYU)

posteriorLinkYU <- link(crimeYU)

str(posteriorLinkYU)

head(posteriorLinkYU, n = 3)

posteriorMeansYU <- apply(posteriorLinkYU, 2, mean)
posteriorHPDIYU <- data.frame(t(apply(posteriorLinkYU, 2, HPDI)))
names(posteriorHPDIYU) <- c("low", "high") 


ggplot()+geom_point(data = crTrain, aes(x = 1:35, y = CrimeRate))+th+
  geom_line(aes(x = 1:35, y = posteriorMeansYU))+
  geom_ribbon(aes(x = 1:35, ymin = posteriorHPDIYU$low, ymax = posteriorHPDIYU$high),
              alpha = .5, fill = "skyblue")


#check mse on test data


testLinkYU <- link(crimeYU, crTest)
testMeansYU <- apply(testLinkYU, 2, mean)

mseYU <-   mean(  (  testMeansYU - crTest$CrimeRate  ) ^ 2   )

mseNull
mseYU


compare(crimeNull, crimeYU)




# ok, now add wage



names(crTrain)

set.seed(12234)
crimeWG <- ulam(
  alist(
    CrimeRate ~ dnorm( mu , sigma ) ,
    mu <- a + yu * YouthUnemploy10 + wg * Wage10,
    a ~ dnorm(100 , 100) ,
    yu ~ dnorm(0 , 5) ,
    wg ~ dnorm(0 , 5) ,
    sigma ~ dunif( 0 , 50 )
  ) , data=crTrain, log_lik = TRUE)


#check priors

priorsWG <- extract.prior(crimeWG)
priorLinkWG <- link(crimeWG,post = priorsWG)

str(priorLinkWG)

priorMeansWG <- apply(priorLinkWG, 2, mean)
priorHPDIWG <- data.frame(t(apply(priorLinkWG, 2, HPDI)))
names(priorHPDIWG) <- c("low", "high") 


ggplot()+geom_point(data = crTrain, aes(x = 1:35, y = CrimeRate))+th+
  geom_line(aes(x = 1:35, y = priorMeansWG))+
  geom_ribbon(aes(x = 1:35, ymin = priorHPDIWG$low, ymax = priorHPDIWG$high),
              alpha = .5, fill = "skyblue")



# revise your priors

set.seed(12234)
crimeWG <- ulam(
  alist(
    CrimeRate ~ dnorm( mu , sigma ) ,
    mu <- a + yu * YouthUnemploy10 + wg * Wage10,
    a ~ dnorm(100 , 30) ,
    yu ~ dnorm(0 , 3) ,
    wg ~ dnorm(0 , 3) ,
    sigma ~ dunif( 0 , 25 )
  ) , constraints=list(a="lower=0"), 
  data=crTrain, log_lik = TRUE
  )




#check priors again

priorsWG <- extract.prior(crimeWG)
priorLinkWG <- link(crimeWG,post = priorsWG)

str(priorLinkWG)

priorMeansWG <- apply(priorLinkWG, 2, mean)
priorHPDIWG <- data.frame(t(apply(priorLinkWG, 2, HPDI)))
names(priorHPDIWG) <- c("low", "high") 


ggplot()+geom_point(data = crTrain, aes(x = 1:35, y = CrimeRate))+th+
  geom_line(aes(x = 1:35, y = priorMeansWG))+
  geom_ribbon(aes(x = 1:35, ymin = priorHPDIWG$low, ymax = priorHPDIWG$high),
              alpha = .5, fill = "skyblue")


#get and check posteriors


precis(crimeWG)

posteriorLinkWG <- link(crimeWG)

str(posteriorLinkWG)

head(posteriorLinkWG, n = 3)

posteriorMeansWG <- apply(posteriorLinkWG, 2, mean)
posteriorHPDIWG <- data.frame(t(apply(posteriorLinkWG, 2, HPDI)))
names(posteriorHPDIWG) <- c("low", "high") 


ggplot()+geom_point(data = crTrain, aes(x = 1:35, y = CrimeRate))+th+
  geom_line(aes(x = 1:35, y = posteriorMeansWG))+
  geom_ribbon(aes(x = 1:35, ymin = posteriorHPDIWG$low, ymax = posteriorHPDIWG$high),
              alpha = .5, fill = "skyblue")


#check mse on test data


testLinkWG <- link(crimeWG, crTest)
testMeansWG <- apply(testLinkWG, 2, mean)

mseWG <-   mean(  (  testMeansWG - crTest$CrimeRate  ) ^ 2   )

mseNull
mseYU
mseWG


compare(crimeWG, crimeNull, crimeYU)

#throw out youth unemployment

set.seed(12234)
crimeWGclean <- ulam(
  alist(
    CrimeRate ~ dnorm( mu , sigma ) ,
    mu <- a + wg * Wage10,
    a ~ dnorm(100 , 30) ,
    wg ~ dnorm(0 , 3) ,
    sigma ~ dunif( 0 , 25 )
  ) , constraints=list(a="lower=0"), 
  data=crTrain, log_lik = TRUE
)


precis(crimeWGclean)

posteriorLinkWGclean <- link(crimeWGclean)

str(posteriorLinkWGclean)

head(posteriorLinkWGclean, n = 3)

posteriorMeansWGclean <- apply(posteriorLinkWGclean, 2, mean)
posteriorHPDIWGclean <- data.frame(t(apply(posteriorLinkWGclean, 2, HPDI)))
names(posteriorHPDIWGclean) <- c("low", "high") 


ggplot()+geom_point(data = crTrain, aes(x = 1:35, y = CrimeRate))+th+
  geom_line(aes(x = 1:35, y = posteriorMeansWGclean))+
  geom_ribbon(aes(x = 1:35, ymin = posteriorHPDIWGclean$low, ymax = posteriorHPDIWGclean$high),
              alpha = .5, fill = "skyblue")


#check


testLinkWGclean <- link(crimeWGclean, crTest)
testMeansWGclean <- apply(testLinkWGclean, 2, mean)

mseWGclean <-   mean(  (  testMeansWGclean - crTest$CrimeRate  ) ^ 2   )

mseNull
mseYU
mseWG
mseWGclean


compare(crimeWG, crimeNull, crimeYU, crimeWGclean)



precis(crimeWG)


#let's now start adding a categorical predictor, 
names(crTrain)

ggplot(crTrain, aes(x = as.factor(MoreMales10), y = CrimeRate))+geom_jitter(width = .2)


crTrain$MoreMales10


crTrain$MoreMales10 + 1

crTrain$MoreMales10Int <- crTrain$MoreMales10 + 1
crTest$MoreMales10Int <- crTest$MoreMales10 + 1

crTrain$MoreMales10Int



set.seed(12234)
crimeMM <- ulam(
  alist(
    CrimeRate ~ dnorm( mu , sigma ) ,
    mu <- a + wg * Wage10 + mm[MoreMales10Int],
    a ~ dnorm(100 , 30) ,
    wg ~ dnorm(0 , 3) ,
    mm[MoreMales10Int]  ~ dnorm(0 , 3) ,
    sigma ~ dunif( 0 , 25 )
  ) , constraints=list(a="lower=0"), 
  data=crTrain, log_lik = TRUE
)



#continue with the workflow, considering other variables!




