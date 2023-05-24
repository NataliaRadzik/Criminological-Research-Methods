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

install.packages("ggplot2")
install.packages(rethinking)
th <- theme_tufte(base_size = 10) + theme(plot.title.position = "plot")

sh <- read.csv("ShonubiCaseDataset.csv")

#E1. Check the head and names
names(sh)
head(sh)

#E2. What are the raw estimates obtained by multiplying net weights by 8?
rawEstimate<- sh$net_wt*8
sh$net_wt

#E3. Plot their density using dens()
dens(rawEstimate)

sum(is.na(rawEstimate)) #107 cases we didn't use
sh[200:210,]

netData <- sh %>% select(gross_wt, net_wt)
netData <- netData[complete.cases(netData),] #keep completed cases
netData

#model net based on gross, then apply it to not known cases, 
#take lower HPDI limit as estimate


#E4. Train a linear model that predicts net_wt by multiplying gross_wt
set.seed(123)
netModel <- ulam(
  alist(
    net_wt ~ dnorm( mu, sigma ) ,
    mu <- gross_wt  * m,
    m ~ dnorm(.8,.3) ,
    sigma ~ dunif( 0 , 150 )
  ) , data=netData, log_lik = TRUE )

precis(netModel)


#E5. Use sim() and this model to make predictions for the fillNet dataset
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

#E6. Select onnly netEstimate and age, only complete cases
ageData <- sh %>% select(age_yrs, netEstimate)
ageData <- ageData[complete.cases(ageData),]


#E7. Build a model that predicts netEstimate based on age
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


#E8 Do this again after standardization
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


ageGenderData$gender <- ageGenderData$gender + 1

ageGenderData$gender

#E9 Now a model that uses both age and gender (watch out, gender is a categorical variable,
#allow for differing slopes)
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


#consider Shonubi's age, 28
tail(standardize(c(sh$gender, 28)), n = 1)


#E10. Make predictions about Shonubi using this model, plot density and see what the 
#estimated probability of 8 trips totaling below 3kg is
shonubi <- data.frame(age_yrsStandardized=-0.89, gender = 2, balloons = 103)

shonubiAgeGenderPred <- 8 * sim(ageGenderModel,data = shonubi)
dens(shonubiAgeGenderPred)
mean(shonubiAgeGenderPred>3000)

balloonsData <- sh %>% select(balloons, netEstimate)
balloonsData <- balloonsData[complete.cases(balloonsData),]

#E11. build a  model that predicts the estimate based on balloons
balloonsModel <-  ulam(
  alist(
    netEstimate ~ dnorm( mu , sigma ) ,
    mu <- baseline+ b*balloons,
    baseline ~ dnorm(200,100) ,
    b ~ dnorm(10,5) ,
    sigma ~ dunif( 0 , 50 )
  ) , data=balloonsData, log_lik = TRUE )

precis(balloonsModel)


#E12 Notice that sigma is at the edge, you should increase it until it isn't 
balloonsModel <-  ulam(
  alist(
    netEstimate ~ dnorm( mu , sigma ) ,
    mu <- baseline+ b*balloons,
    baseline ~ dnorm(200,100) ,
    b ~ dnorm(10,5) ,
    sigma ~ dunif( 0 , 300)
  ) , data=balloonsData, log_lik = TRUE )

precis(balloonsModel)


#E13. Now make predictions for 8 trips using sim() and multiplying, for now use the shonubi df
shonubiBalloonsPred <-  8 * sim(balloonsModel, data=shonubi)

dens(shonubiAgeGenderPred)

dens(shonubiBalloonsPred)

#E14. What's the estimate probability that the total amount is below 3000?
mean(shonubiBalloonsPred < 3000)
#0.15

dens(sh$balloons)
mean(sh$balloons, na.rm = TRUE)

max(sh$balloons)
max(sh$balloons, na.rm = TRUE)

shonubi2 <- data.frame(balloons = 50:110)


#E15. Now analogous prediction for the range of 50:110 (with equal probability)
shonubiBalloonsPred2 <-  sim(balloonsModel, data=shonubi2)
str(shonubiBalloonsPred2)

shonubiWide <- 8 * c(shonubiBalloonsPred2)
dens(shonubiWide)

mean(shonubiWide > 3000)
#0.6910164

writeLines('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")
Sys.getenv("PATH")


install.packages("cmdstanr",
                 repos = c("https://mc-stan.org/r-packages/",
                           getOption("repos")))
devtools::install_github("rmcelreath/rethinking")
1
cmdstanr::check_cmdstan_toolchain(fix= TRUE)
cmdstanr::install_cmdstan()
library(cmdstanr)
