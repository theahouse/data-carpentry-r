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

#mutate

interviews_ppl_room <- interviews %>% 
  mutate(people_per_room = no_membrs / rooms)
view(interviews_ppl_room)

interviews_ppl_room <- interviews %>% 
  filter(memb_assoc == "yes") %>%
  mutate(people_per_room = no_membrs / rooms)
view(interviews_ppl_room)

#Excercise
interviews_mls_per_house <- interviews %>%
  mutate(total_meals = no_membrs * no_meals) %>%
  filter(total_meals > 20) %>%
  select(village, total_meals)

