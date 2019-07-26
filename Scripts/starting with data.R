library(tidyverse)

interviews <- read_csv("data/SAFI_clean.csv", na="NULL")

interviews
view(interviews)

dim(interviews)
nrow(interviews)
ncol(interviews)
dim(interviews)[-2]
dim(interviews)[1]==nrow(interviews)

interviews
head(as.data.frame(interviews))
tail(as.data.frame(interviews))


names(interviews)     
str(interviews)
interviews[100,]

summary(interviews)

interviews[1,1]

interviews[1,6]
interviews[,1]
interviews[1]
1:3
interviews[1:3,7]
interviews[3,]
interviews[1:6,]


interviews_no_id <- interviews[,-1]

interviews

interviews_no_id

#Excercise! I did this myself!!

interviews_100 <- interviews [100,]
nrow(interviews)
interviews[131,]
tail(interviews)
interviews[nrow(interviews),]
interviews_last <- interviews[nrow(interviews),]
tail(interviews, n = 1)
#Factors
floor_type <- factor(c("earth", "cement", "cement", "earth"))
levels(floor_type)
nlevels(floor_type)
floor_type <- factor(c("earth", "cement", "cement", "earth"), levels=c("earth",  "cement"))
levels(floor_type)
floor_type


levels(floor_type)[2] <-"brick"
levels(floor_type)
floor_type

as.character(floor_type)


year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))
as.numeric(year_fct)

as.character(year_fct)
as.numeric(as.character(year_fct))


#Figures

affect_conflicts <- interviews$affect_conflicts
affect_conflicts <- as.factor(affect_conflicts)


plot(affect_conflicts)


affect_conflicts <- interviews$affect_conflicts
affect_conflicts[is.na(affect_conflicts)] <- "undetermined"
affect_conflicts <- as.factor(affect_conflicts)
plot(affect_conflicts)

levels(affect_conflicts)[2] <- "more than once"
affect_conflicts <- factor(affect_conflicts, levels = c("never", "once", "more than once", "frequently", "undetermined"))
plot(affect_conflicts)

#
