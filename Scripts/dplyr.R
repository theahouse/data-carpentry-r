library(dplyr)
library(tidyr)
library(tidyverse)

interviews <- read_csv("data/SAFI_clean.csv", na="NULL")

select(interviews, village, no_membrs, years_liv)
filter(interviews, village == "God", no_membrs > 6)

select_cols <- select(interviews, village, no_membrs, years_liv)
god_data <- filter(interviews, village == "God", no_membrs > 6)

interviews %>% 
  select(village, no_membrs, years_liv) %>% 
  filter(village == "God", no_membrs > 6) 

#Excercise
interviews %>%
  filter(memb_assoc == "yes") %>%
  select(affect_conflicts, liv_count, no_meals)
