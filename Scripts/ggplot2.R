download.file(url = "https://mq-software-carpentry.github.io/R-git-for-research/data/Interviews_plotting.rds", destfile = "./data/Interviews_plotting.rds")

library(ggplot2)


Interviews_plotting <- readRDS("~/R- data carpentryworkshop/data-carpentry-r/Data/Interviews_plotting.rds")


## ggplot(data = interviews_plotting, mapping = aes(<MAPPINGS>)) + <GEOM_FUNCTION>()

ggplot(data = Interviews_plotting, aes(x = no_membrs, y = number_items)) +
  geom_point(alpha = 0.4)


ggplot(data = Interviews_plotting, aes(x = no_membrs, y = number_items)) +
  geom_jitter(alpha = 0.4)

ggplot(data = Interviews_plotting, aes(x = no_membrs, y = number_items)) +
  geom_jitter(alpha = 0.4, colour = "blue")

ggplot(data = Interviews_plotting, aes(x = no_membrs, y = number_items)) +
  geom_jitter(alpha = 0.4, aes(colour = village))

ggplot(data = Interviews_plotting, aes(x = village, y = rooms)) +
  geom_jitter(alpha = 0.4, aes(colour = respondent_wall_type))




ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = rooms))+
  geom_boxplot()


ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = rooms))+
  geom_boxplot()+
  geom_jitter(alpha = 0.5, colour = "tomato", width = 0.2)


ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = rooms))+
  geom_boxplot(alpha = 0)+
  geom_jitter(alpha = 0.5, colour = "tomato", width = 0.2)


ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = rooms))+
  geom_jitter(alpha = 0.5, colour = "tomato", width = 0.2)+
  geom_boxplot(alpha = 0)


ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = rooms))+
  geom_jitter(alpha = 0.5, colour = "tomato", width = 0.2)+
  geom_violin(alpha = 0)



ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = liv_count))+
  geom_jitter(alpha = 0.5, colour = "tomato", width = 0.2)+
  geom_boxplot(alpha = 0)

ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = liv_count))+
  geom_jitter(alpha = 0.5, width = 0.2, aes(color = memb_assoc), height = 0.2)+
  geom_boxplot(alpha = 0)



ggplot(Interviews_plotting,
       aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village))

ggplot(Interviews_plotting,
       aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village), position = "dodge")


ggplot(Interviews_plotting,
       aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village), position = "dodge")+
  labs(x = "Wall Type", y = "Count") +
  facet_grid(~village)
  

ggplot(Interviews_plotting,
       aes(x = respondent_wall_type)) +
  geom_bar(aes(fill = village), position = "dodge")+
  labs(x = "Wall Type", y = "Count") +
  facet_grid(memb_assoc~village) + theme(axis.text.x = element_text(angle = 270))


