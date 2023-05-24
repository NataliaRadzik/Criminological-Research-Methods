library(rethinking)
library(dplyr)
library(tidyr)
library(ggthemes)
library(readr)

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


#The Washington Post collects information about fatal police shootings
#https://www.washingtonpost.com/graphics/investigations/police-shootings-database/
shootings <- read_csv("fatal-police-shootings-data27042023.csv")

head(shootings)
names(shootings)
th <- theme_tufte(base_size = 10) + theme(plot.title.position = "plot")



#1 Explore the data, making appropriate exploratory visualizations 
#(including raw data plots and correlations)
#only completed cases
shootings <- shootings[complete.cases(shootings),]

#illness+age
illnessage <- shootings %>% select(was_mental_illness_related,age)
head(illnessage)
cors <- cor(illnessage, method = "spearman")
ggcorrplot(cors)

#age+gender
agegender <- shootings %>% select(gender,age)
agegender <- agegender[complete.cases(agegender),]

agegender_num <- agegender %>% mutate(gender= ifelse(gender == "male", 1, 0))
str(agegender)
head(agegender)
cors <- cor(agegender_num, method = "spearman")
ggcorrplot(cors)
ggplot(shootings)+geom_bar(aes(x=age, y= after_stat(count)))+
  facet_wrap(~gender)

#age+state
agestate <- shootings %>% select(age,state)
head(agestate)
ggplot(shootings,aes(x=age,y=state))+geom_jitter(width = .2, height = 0.02, alpha = .2, size = 1.2)

#age+threat
agethreat<- shootings %>% select(threat_type,age)
head(agethreat)
ggplot(shootings,aes(x=age,y=threat_type))+geom_jitter(width = .2, height = 0.02, alpha = .2, size = 1.2)
ggplot(shootings)+geom_bar(aes(x=age, y= after_stat(count)))+
  facet_wrap(~threat_type)

#illness+threat
illnesstype<- shootings %>% select(was_mental_illness_related,threat_type)
head(illnesstype)
ggplot(shootings,aes(x=was_mental_illness_related,y=threat_type))+geom_jitter(width = .2, height = 0.02, alpha = .2, size = 1.5)
ggplot(shootings)+geom_bar(aes(x=was_mental_illness_related, y= after_stat(count)))+
  facet_wrap(~threat_type)

#illness+shooting+age
shooters <- filter(shootings,threat_type == "shoot")
ggplot(shooters,aes(x=was_mental_illness_related,y= age))+geom_jitter(width = .2, height = 0.02, alpha = .2, size = 1.2)

ggplot(shooters)+geom_bar(aes(x=was_mental_illness_related, y= after_stat(count)))+
  facet_wrap(~age)

#illness+armed_with
illnessarmed<- shootings %>% select(was_mental_illness_related,armed_with)
head(illnessarmed)
ggplot(shootings,aes(x=was_mental_illness_related,y=armed_with))+geom_jitter(width = .2, height = 0.02, alpha = .2, size = 1.2)
ggplot(shootings)+geom_bar(aes(x=was_mental_illness_related, y= after_stat(count)))+
  facet_wrap(~armed_with)


#illness+gender
illnessgender <- shootings %>% select(was_mental_illness_related,gender)
head(illnessgender)
ggplot(shootings,aes(x=was_mental_illness_related,y=gender))+geom_jitter(width = .2, height = 0.02, alpha = .2, size = 1.5)
ggplot(shootings)+geom_bar(aes(x=was_mental_illness_related, y= after_stat(count)))+
  facet_wrap(~gender)

#illness+gender+shooting
ggplot(shooters)+geom_bar(aes(x=was_mental_illness_related, y= after_stat(count)))+
  facet_wrap(~gender)



#2 Put forward an interesting hypothesis and visualize and summarize the relevant
#information
#do mentally ill people are less likely to hold the gun/attack or is this the fault of small data
#21% of victims are mentally ill
# shooting has the highest rate with people not mentally ill

ggplot(shootings)+geom_bar(aes(x=was_mental_illness_related, y= after_stat(count)))+
  facet_wrap(~threat_type)

ggplot(shooters)+geom_bar(aes(x=was_mental_illness_related, y= after_stat(count)))+
  facet_wrap(~gender)

ggplot(shooters,aes(x=was_mental_illness_related,y= age))+geom_jitter(width = .2, height = 0.02, alpha = .2, size = 1.2)
#younger (mentally well) people are more likely to shoot


#3 Iteratively follow the Bayesian workflow to build a model that would help you to evaluate
#your hypothesis

illnesstype <- illnesstype[complete.cases(illnesstype),]
illness_num <- illnesstype %>% mutate(was_mental_illness_related= ifelse(was_mental_illness_related == "TRUE", 2, 1))
illness_num


illness_num_shoot <- illness_num %>% mutate(shoot= ifelse(threat_type == "shoot", 1, 0))

str(illness_num_shoot)

#model 1 
IlltypeModel <- ulam(
  alist(
    shoot ~ dbinom( 1 , p ) ,
    logit(p) <- a + b[was_mental_illness_related],
    a ~ dnorm( 0, 1),
    b[was_mental_illness_related]~ dnorm( 0 , 1 )
  ) , data=illness_num_shoot, log_lik = TRUE )

precis(IlltypeModel)
IlltypeModel

#    mean   sd  5.5% 94.5% n_eff Rhat4
#a -0.91 0.52 -1.83 -0.08    63     1

precis(IlltypeModel, depth=2)
#      mean   sd  5.5% 94.5% n_eff Rhat4
#a    -0.91 0.52 -1.83 -0.08    63     1
#b[1]  0.10 0.52 -0.74  1.00    62     1
#b[2] -0.52 0.52 -1.36  0.41    67     1

# prior
prior <- extract.prior( 
  IlltypeModel , n=1e4 )
str(prior)

p <- sapply( 1:2 , function(k) inv_logit( prior$a + prior$b[,k] ) )

dens( p, adj=0.1 )

######### posterior

precis( IlltypeModel , depth=2 )
post <- extract.samples(IlltypeModel)
baseline <- inv_logit(post$a)
dens (baseline, cex.axis=1.3, cex.lab=1.5)

dim(post$b)

#use the second  number in the calculations
IllpostDF <- sapply( 1:2 , function(k) inv_logit(post$a + post$b[,k]))

str(IllpostDF)

head(
  IllpostDF
)
IllpostDFLong <- melt(IllpostDF)
head(IllpostDFLong)


colnames(IllpostDFLong) <- c("no", "was_mental_illness_related", "probability")

IllprecDF <- precis(IlltypeModel, depth=2 )
IllpostDFLong$was_mental_illness_related<- as.factor(IllpostDFLong$was_mental_illness_related)
IllprecDF

means <- inv_logit(IllprecDF$mean[1] + IllprecDF$mean[2:3])
means


ggplot(IllpostDFLong,aes(x = was_mental_illness_related, y = probability)) + 
  geom_violin(color = "skyblue") + th+
  geom_jitter(width = .2, height = 0.02, alpha = .2, size = 1.2, color = "skyblue")+
  annotate(geom = "label", label = round(means,2), x = levels(IllpostDFLong$was_mental_illness_related), y = means)+
  labs(y= "probability of being shot", x = "mentall illness")













