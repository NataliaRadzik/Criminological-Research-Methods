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

"ex 14"
head (flights)
head(flights) %>% kable("latex", booktabs = T, linesep = "") %>%
  kable_styling(latex_options = c("striped","scale_down", "HOLD_position")) %>%
  kable_styling(font_size = 14)
names(flights)
Jan1 <- filter(flights, month == 1, day == 1)
head(Jan1) %>% kable("latex", booktabs = T, linesep = "") %>%
  kable_styling(latex_options = c("striped","scale_down",
                                  "HOLD_position")) %>%
  kable_styling(font_size = 14)

"ex30"
twoLast<- filter(flights, month== 12|month==11)
YearMonthDay <- arrange(flights, year, month, day)
(twoLast)
colnames(twoLast)
head(select(flights,year:day,dep_time))

twoLastDelay<- arrange (twoLast,dep_delay)
head(twoLastDelay)


tail(twoLastDelay)
tl<- twoLastDelay$dep_delay
tl<- tl[!is.na(tl)]
tail(tl)

ggplot()+geom_density(aes(x=tl))
ggplot()+geom_density(aes(x=tl))theme_tufte()+xlim(c(0,100))


flightsMutated <- select(flights,year:day,ends_with("delay"),
                         distance,air_time)
mutate(gain = arr_delay - dep_delay,
       hours = air_time/60,
       gain_per_hour = gain/hours)

ghp<- flightsMutated$gain_per_hour


"ex31"
byDay <- group_by(flights,year, month,day)
delayByDay<- summarize(byDay, delay = mean(dep_delay, na.rm = TRUE))
head(flightsMutated)
head(delayByDay)

ggplot(delayByDay)+geom_line(aes(x= 1:365, y= delay))

library(ggplot2)
library(ggthemes)
library(ggcorrplot)
library(gridExtra)
library(reshape2)
library(haven)
data <- as.data.frame(read_xpt("DS0001/08488-0001-Data.xpt"))


