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

interviews
