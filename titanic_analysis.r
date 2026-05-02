install.packages("tidyverse")   # run once only
library(tidyverse)
rm(list = ls())

library(tidyverse)

titanic <- read.csv("https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv")

head(titanic)

summary(titanic)
ggplot(titanic, aes(x = factor(Survived))) +
  geom_bar() +
  ggtitle("Survival Count")
print("the number of pasengers who didn't survive is more")
ggsave("Survival Count.png")

ggplot(titanic, aes(x = Sex, fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  ggtitle("Survival by Gender")
print("The number of female survivers is more and number of male deaths is higher")
ggsave("Survival by Gender.png")


ggplot(titanic, aes(x = Age)) +
  geom_histogram(fill = "orange", bins = 20) +
  ggtitle("Age Distribution")
print("There were more passengers of the age 20-35")
ggsave("Age Distribution.png")
