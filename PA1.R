setwd('~/Coursera/4 - Reproducible Research/Week 2/Project')
library(ggplot2)
activity <- read.csv('activity.csv')

stepsEachDay <- aggregate(steps ~ date, data = activity, sum)
#pl<- ggplot( mapping = aes(x = date, y = steps), data = stepsEachDay) + geom_point()
pl<- ggplot( mapping = aes(x= steps), data = stepsEachDay)  + 
     geom_histogram()
smr <- summary(stepsEachDay)  

print(pl)
