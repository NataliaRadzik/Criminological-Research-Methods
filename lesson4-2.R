library(ggplot2)
library(ggthemes)
library(ggExtra)
library(gridExtra)
library(ggdogs)
library(reshape2)
library(rethinking)
library(lubridate)
library(ggcorrplot)
library(dagitty)
library(dplyr)
library(haven)
library(ggcorrplot)
library(bayesrules)
library(dplyr)
library(forcats)
library(stringr)

th <- theme_tufte(base_size = 10) + theme(plot.title.position = "plot")

sh <- read.csv("ShonubiCaseDataset.csv")

names(sh)
head(sh)

rawEstimate<- sh$net_wt*8
sh$net_wt

dens(rawEstimate)

sum(is.na(rawEstimate)) #107 cases we didn't use
sh[200:210,]

netData <- sh %>% select(gross_wt, net_wt)
netData <- netData[complete.cases(netData),] #keep completed cases
netData

#model net based on gross, then apply it to not known cases, 
#take lower HPDI limit as estimate

install.packages("cmdstnr", repos=c("https://mc-stan.org/r-packages/", getOption("repos")))
library(cmdstanr)
install_cmdstan()
cmdstanr::check_cmdstan_toolchain(fix=TRUE)


set.seed(123)
netModel <- ulam(
  alist(
    net_wt ~ dnorm( mu, sigma ) ,
    mu <- gross_wt  * m,
    m ~ dnorm(.8,.3) ,
    sigma ~ dunif( 0 , 150 )
  ) , data=netData, log_lik = TRUE )

precis(netModel)

fillNet <- sh %>% filter(!is.na(gross_wt),is.na(net_wt))

netPred <- sim(netModel, fillNet)

data.frame(t(apply(netPred, 2, HPDI)))
fillNet$low <- data.frame(t(apply(netPred, 2, HPDI)))[,1]

head(fillNet$low)

sh$netEstimate <- ifelse( !is.na(sh$net_wt), sh$net_wt, NA )
for (obs in 1:218){
  if (is.na(sh$netEstimate[obs])){
    sh$netEstimate[obs] <- fillNet$low[fillNet$obs == obs]
  }
}


ageData <- sh %>% select(age_yrs, netEstimate)
ageData <- ageData[complete.cases(ageData),]


ageModel <-  ulam(
  alist(
    netEstimate ~ dnorm( mu , sigma ) ,
    mu <- baseline + a * age_yrs,
    baseline ~ dnorm(400,100) ,
    a ~ dnorm(0,50) ,
    sigma ~ dunif( 0 , 150 )
  ) , data=ageData, log_lik = TRUE )

precis(ageModel)

sd(ageData$age_yrs)

ageData$age_yrs <- standardize(ageData$age_yrs)

ageData$age_yrs

ageData$age_yrsStandardized<-standardize(ageData$age_yrs)

plot(ageData$age_yrsStandardized~ageData$age_yrs)

ageModel2 <-  ulam(
  alist(
    netEstimate ~ dnorm( mu , sigma ) ,
    mu <- baseline + a *age_yrsStandardized ,
    baseline ~ dnorm(400,100) ,
    a ~ dnorm(0,50) ,
    sigma ~ dunif( 0 , 150 )
  ) , data=ageData, log_lik = TRUE )  

precis(ageModel2)

dens(rnorm(1000,0,50))

names(sh)

ageGenderData <- sh %>% select(netEstimate,age_yrs, gender)

ageGenderData <- ageGenderData[complete.cases(ageGenderData),]
nrow(ageGenderData)

str(ageGenderData)
ageGenderData$age_yrsStandardized<-standardize(ageGenderData$age_yrs)


ageGenderData$gender <- ageGenderData$gender - 1

ageGenderData$gender


ageGenderModel <-  ulam(
  alist(
    netEstimate ~ dnorm( mu , sigma ) ,
    mu <- baseline + a[gender] * age_yrsStandardized + gb[gender] ,
    baseline ~ dnorm(400,100) ,
    a[gender] ~ dnorm(0,50) ,
    gb[gender] ~ dnorm(0,150) ,
    sigma ~ dunif( 0 , 150 )
  ) , data=ageGenderData, log_lik = TRUE )

precis(ageGenderModel, depth = 2)

tail(standardize(c(ageGenderData$age_yrs, 28)), n=1)

tail(standardize(c(sh$gender, 28)), n = 1)


shonubi <- data.frame(age_yrsStandardized=-0.89, gender = 2, balloons = 103)

shonubiAgeGenderPred <- 8 * sim(ageGenderModel,data = shonubi)
dens(shonubiAgeGenderPred)
mean(shonubiAgeGenderPred>3000)
