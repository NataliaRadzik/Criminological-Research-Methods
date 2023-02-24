library(modelr)
library(kableExtra)
library(ggplot2)
library(ggthemes)
library(dplyr)
library(knitr)
library(nycflights13)
library(forcats)
library(tidyverse)

getwd()
drunkDriving <- read.csv("DrunkAndDrivingPoland.csv", sep = ";")

head(drunkDriving)
names(drunkDriving)[1] <- "year"
head(drunkDriving)
drunkDriving [ ,-4]
mean(drunkDriving$knownCases ,na.rm=TRUE )
mean(drunkDriving$confirmedCases, na.rm=TRUE)
median(drunkDriving$knownCases , na.rm=TRUE)
median(drunkDriving$confirmedCases, na.rm=TRUE)

mean(drunkDriving$knownCases[drunkDriving$knownCases] , na.rm=TRUE)


mean(drunkDriving$knownCases[drunkDriving$year >= 2001 & drunkDriving$year <= 2006])
median(drunkDriving$knownCases[drunkDriving$year >= 2001 & drunkDriving$year <= 2006])

mean(drunkDriving$knownCases[drunkDriving$year>= 2001 & drunkDriving$year <= 2010])
mean(drunkDriving$knownCases[drunkDriving$year>= 2011 & drunkDriving$year <= 2021])
median(drunkDriving$knownCases[drunkDriving$year>= 2001 & drunkDriving$year <= 2010])
median(drunkDriving$knownCases[drunkDriving$year>= 2011 & drunkDriving$year <= 2021])

library(ggplot2)


  ggplot(drunkDriving) + geom_line(aes(y = knownCases, x = year
                               ), color = "skyblue", linewidth = 2)+
    theme_tufte()

  getwd()
  
nypd <- read.csv("NYPD_ShootingMOD.csv")
nypd$OCCUR_DATE <- as.Date(nypd$OCCUR_DATE, "%Y-%m-%d")
nypd <- nypd %>% arrange(OCCUR_DATE)
nypd$OCCUR_DATE <- as.Date(nypd$OCCUR_DATE, "%Y-%m-%d")
nypd <- nypd %>% arrange(OCCUR_DATE)
head (nypd)

nypd$MONTH <- as.integer(format(nypd$OCCUR_DATE, "%m"))
nypd_monthly_counts <- nypd %>%
  mutate(MONTH = format(OCCUR_DATE, "%Y-%m")) %>%
  group_by(MONTH) %>%
  summarise(OCCURRENCES = n()) %>%
  ungroup()
head(nypd_monthly_counts)

ggplot(nypd_monthly_counts) + geom_point(aes(x = MONTH, y = OCCURRENCES,
                                          ) , size = 2) +
  theme_tufte()

nypd_monthly_counts_age <- nypd %>%
  mutate(MONTH = format(OCCUR_DATE, "%Y-%m")) %>%
  group_by(MONTH, VIC_AGE_GROUP) %>%
  summarise(OCCURRENCES = n()) %>%
  ungroup()
head(nypd_monthly_counts_age)

ggplot(nypd_monthly_counts_age) + geom_point(aes(x = MONTH, y = OCCURRENCES), size = 0.6) +
  facet_wrap(~  VIC_AGE_GROUP, nrow = 2) + 
  theme_tufte()

ggplot(nypd_monthly_counts_age, aes(x= MONTH, y = OCCURRENCES))+
  geom_jitter(width = 0.5, alpha = 0.2)+
  stat_summary(fun=mean, colour="red", geom="line", aes(group = 1))+
  stat_summary(fun=median, colour="blue", geom="line", aes(group = 1))+
  facet_wrap(~  VIC_AGE_GROUP, nrow = 2) +
  theme_tufte()


nypd_monthly_counts_boro <- nypd %>%
  mutate(MONTH = format(OCCUR_DATE, "%Y-%m")) %>%
  group_by(MONTH, BORO) %>%
  summarise(OCCURRENCES = n()) %>%
  ungroup()

head(nypd_monthly_counts_boro)




old_faithful <- faithful
head(old_faithful)
ggplot(nypd_monthly_counts) + geom_point(aes(x = MONTH, y = OCCURRENCES,
) , size = 2) +
  theme_tufte()