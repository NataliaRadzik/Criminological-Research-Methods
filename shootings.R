library(rethinking)
library(dplyr)
library(tidyr)
library(ggthemes)
library(readr)

#The Washington Post collects information about fatal police shootings
#https://www.washingtonpost.com/graphics/investigations/police-shootings-database/
shootings <- read_csv("fatal-police-shootings-data27042023.csv")

head(shootings)
names(shootings)


#1 Explore the data, making appropriate exploratory visualizations 
#(including raw data plots and correlations)

#2 Put forward an interesting hypothesis and visualize and summarize the relevant
#information

#3 Iteratively follow the Bayesian workflow to build a model that would help you to evaluate
#your hypothesis