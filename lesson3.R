library(rethinking)
library(ggplot2)
library(ggthemes)
library(ggcorrplot)
library(haven)
library(rstan)
library(StanHeaders)

th <- theme_tufte(base_size = 10) + theme(plot.title.position = "plot")


crime <- read.csv("CrimeR.csv")
crime$id <- 1:47
training <- sample(crime$id, 35)
test <- crime$id[!crime$id %in% training]
crTest <- crime[test,]
crTrain <- crime[training,]

install.packages("cmdstanr", repos=c("https://mc-stan.org/r-packages/", getOption("repos")))
library(cmdstanr)


cors <- cor(crime, method = "spearman")
ggcorrplot(cors)

set.seed(123)
crimeNull <- ulam(
  alist(
    CrimeRate ~ dnorm( mu , sigma ) ,
    mu <- a,
    a ~ dnorm(100 , 100) ,
    sigma ~ dunif( 0 , 50 )
  ) , data=crTrain, log_lik = TRUE)

priorsNull <- extract.prior(crimeNull)
priorLinkNull <- link(crimeNull,post = priorsNull)
