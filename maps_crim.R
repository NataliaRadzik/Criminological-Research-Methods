# install.packages("ggmap")
# install.packages("sf")

library(readr)
library(ggmap)
library(rethinking)
library(reshape2)
library(ggthemes)
library(sf)
library(dplyr)


suicide <-read_csv("san_francisco_suicide_2003_2017.csv")

suicide <- as.data.frame(suicide)

names(___)
head(____)
nrow(____)


suicide$Descript[1:15]


#we need to get the map
#you can check coordinates at 
#https://boundingbox.klokantech.com/



sf_map <-ggmap(get_map(c(-122.530392,37.698887,-122.351177,37.812996), source ="stamen"))


sf_map


sf_map+geom_point(aes(x =X,y =Y), data = suicide)


#E1 clean up Descript, divide into attempted and accomplished and color by it;
#tweak size and alpha to make this look legible

str(suicide$Descript)


suicide_____ <- as.factor(___________)


# check the levels of factorized column
levels(_______)


# in levels specify the categories that will cover all attempted cases,
# hint: in levels 9 first categories covers all "attempted" cases;
# hint2: ":" this argument creates a natural number sequence with difference 1
suicide$status <- ifelse(________ %in% levels(_______)[_:_],
                         "attempted", "successful")



# status is a category, it needs to be factorized 
# to make the visualization work, so do it and check the levels
suicide$status <- as.factor(suicide$status)

levels(suicide$status)


sf_map+geom_point(aes(__________), data = ______, 
                  size = ___, alpha = ___)



#E2 Fix these parameters to make this looks nice
#make sure one region stands out (it might ask you to install smth)
# use ONLY X and Y in aes()

sf_map+stat_binhex(_____________,
                   bins =60, data = _______)+
  coord_cartesian()



sf_map+stat_binhex(_____________,
                   bins = ______, _________, alpha = _____)+
  coord_cartesian()



#now add +scale_fill_gradient(low ="#ffeda0",high ="#f03b20")
#and revise sizes (bins) and alpha

sf_map+stat_binhex(____________,
                   _____________________________)+
  coord_cartesian()+____________________________




# E3 Let's build a model now

#copy paste downtown coordinates from BoundBox in CSV;
# see the screenshot for a indication
# use eastern and southern boundaries only

suicide$downtown <- (suicide$X < -122.446722 & suicide$Y > 37.773827)

str(suicide$downtown)

names(suicide)
str(suicide$status)

suicide$statusID <- as.integer(suicide$status) - 1
str(suicide$statusID)

suicide$downtownID <- as.integer(suicide$downtown) + 1
str(suicide$downtownID)

#build a logistic model to estimate success probability downtown vs everywhere else; 
#dont use a common baseline, just two different baselines indexed by the predictor


# create a dataframe for our needs
dat <- data.frame(statusID = __________, downtownID = ____________)

nrow(dat)

dat$statusID

# be sure that statusID is binary (0,1) and
# the predictor has values that starts from 1
downtownModel <- ulam(
  alist(
    ________ ~ dbinom( 1 , p ) ,
    ___________________,
    ______ ~ dnorm( 0, 1),
    ___________ ~ dnorm( 0 , .5 )
  ) , ____________, log_lik = TRUE)



# you might receive ESS warning, 
# that the effective sample size (ESS) is low
# Let's then increase the number of iterations:
# check documentation for ulam ?ulam to see where this goes,
# change it to 4000



downtownModel4k <- ulam(
  alist(
    ________________________ ,
    ________________________ ,
    ___________________________
  ) , ___________________________________


# remember to use depth= argument, 
# as we used categorical variable as our predictor
p <- precis(____________, _________)


p <- precis(downtownModel4k, depth = 2)



#now illustrate with ggplot the difference in
#predicted probabilities by extracting samples to get 
#guesses and add estimated means you got by transforming
#the results of precis; add inv_logit samples as points, as a violin plot,
#and add real persons with a small vertical jitter and shape = 4
#this should look more or less as illustrated in downtown.pdf


# transform mean predicted values given by the precis function into
# probabilities
means <- inv_logit(p$____)

# extract samples from our model
samples <- extract.samples(__________)

# make it a data frame
samples <- as.data.frame(______)

head(samples)

# let's change column names and melt it
# names should be: "surroundings", "downtown"
names(samples) <- c(____________________)
samplesLong <- melt(samples)

# naming columns in our transformed data frame
names(samplesLong) <- c("location", "probability")
head(samplesLong)


# transform probability column into actual probabilities
# use the same function as for transforming means into probabilities
samplesLong$___________ <- _________(_________________)



suicide$location <- ifelse(suicide$downtownID == 1, "surroundings", "downtown")  
suicide$location <- as.factor(suicide$location)


ggplot() + geom_violin(data = samplesLong, aes(x = _________, y = ________))+
  geom_jitter(data = samplesLong, aes(x = ________, y = ______), 
              size = .2, width = .1, alpha = .3)+
  theme_tufte(base_size = 12) +
  geom_jitter(height = .05,  data = _________,
              aes(x = location, y =  statusID),
              shape = 4)+
  ggtitle("San Francisco suicide success rates")+
  theme(plot.title.position = "plot")+
  annotate(geom = "label", label = round(means,2), 
           x = c("surroundings", "downtown"), y = means)


ggsave("downtown.pdf")






# Now let's use the whole neighborhoods
# load the data:

sf_neighborhoods <-st_read("san_francisco_neighborhoods.shp")

sf_neighborhoods <-st_transform(sf_neighborhoods,crs =2227)

plot(sf_neighborhoods$geometry)


# E4 NOW BY NEIGHBORHOODS, run the following lines
# try to understand what they do


suicideGeo <-st_as_sf(suicide,coords =c("X","Y"),crs ="+proj=longlat +ellps=WGS84 +no_defs")
suicideGeo <- st_transform(suicideGeo,crs =st_crs(sf_neighborhoods))

suicideGeo <- st_join(suicideGeo, sf_neighborhoods)

head(suicideGeo)



suicideGeo$number_suicides <-1

names(suicideGeo)

suicideGeo$statusID

n_suicides <- aggregate(number_suicides ~ nhood, data = suicideGeo, FUN =sum)
n_successes <- aggregate(statusID ~ nhood, data = suicideGeo, FUN =sum)


neighborhoods <- merge(n_suicides,n_successes)


head(neighborhoods)


# to our data on neighborhoods add our coordinates that we have loaded
# at the beginning of this section
sf_neighboorhood_summaries <- left_join(______, _______)


head(sf_neighboorhood_summaries)


sf_neighboorhood_summaries$number_suicides[is.na(
  sf_neighboorhood_summaries$number_suicides)] <- 0


# one for suicides and one for attempted suicidies, check head() or names()
# of a data frame to pick the right columns
# add a theme
ggplot(______________________,aes(fill =___________))+geom_sf()+__________

ggplot((______________________,aes(fill =___________))+geom_sf()+__________



# now let's visualize suicide succes rate by neighberhood
# in fill argument put the ratio of attempted suicides to succesfull ones
# add: scale_fill_gradient('success rate', low ="skyblue",high ="darkorange")

# also, add a theme, and give it a title
       
ggplot(___________________,aes(fill = _______/_______))+
  ______

  
# you can use theme_void() to get rid off coordinates values


ggsave("neighborhoods.pdf")




# E5 Next model

#now build binomial model on aggregate dataset

head(neighborhoods)

str(neighborhoods)

neighborhoods$nhood <- as.factor(neighborhoods$nhood)


neighborhoods$nhoodID <- as.integer(neighborhoods$nhood)
neighborhoods$number_suicides <- as.integer(neighborhoods$number_suicides)
neighborhoods$statusID <- as.integer(neighborhoods$statusID)


# to predict success probabilities by neighborhoods
# as a predictor use neighborhood
# iterations number 4000

neihgborhoodModel <- ulam(
  alist(
    ________ ~ dbinom( number_suicides , p ) ,
    _________ <- _________ ,
    ________ ~ dnorm( 0 , 1.5 )
  ) , ___________________________)


# do you remember what to use when the predictor was categorical?
pneigh <- precis( _________ , ______ )

pneigh


#now let's just inv logit mean and limits and plot as pointrange

# vector of names for our visualization
neighborhood <- levels(neighborhoods$nhood)

# we want means as probabilities
successRate <- inv_logit(pneigh$______)

low <- inv_logit(pneigh$`5.5%`)
high <- inv_logit(pneigh$`94.5%`)


# we don't always need a dataframe for the visualization
# put there created vectors of values in the right places

ggplot() + geom_pointrange(aes(x = _________, y = ________, ymin = _____, ymax = _____))+
  coord_flip()+theme_tufte()


#google how to order this, order by size, add title
















