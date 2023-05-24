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
library(devtools)
library(usethis)
th <- theme_tufte(base_size = 10) + theme(plot.title.position = "plot")
remotes::install_github("stan-dev/cmdstanr")


sh <- read.csv("ShonubiCaseDataset.csv")

remove.packages("rstan")
remove.packages("StanHeaders")

install.packages(c("StanHeaders", "rstan"))

devtools::install_version("StanHeaders", version = "2.19.0", repos = "http://cran.us.r-project.org")
install.packages("rstan")

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

set.seed(123)
netModel <- ulam(
  alist(
    net_wt ~ dnorm( mu, sigma ) ,
    mu <- gross_wt  * m,
    m ~ dnorm(.8,.3) ,
    sigma ~ dunif( 0 , 150 )
  ) , data=netData, log_lik = TRUE )

precis(netModel)