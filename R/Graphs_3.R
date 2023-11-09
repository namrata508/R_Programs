#ggplot grammer of graphics
library(ggplot2)  
library(dplyr)
View(mtcars)

# Facet Layer
# Separate rows according to transmission type
p <- ggplot(data = mtcars, aes(x = hp, y = mpg, shape = factor(cyl))) + geom_point()
p + facet_grid(am ~ .) +  #facet is used to split the data into the subset according to cylinder(partition)
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")
# Separate columns according to cylinders
p <- ggplot(data = mtcars, aes(x = hp, y = mpg, shape = factor(cyl))) + geom_point()
p + facet_grid(. ~ cyl) +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")



#Adding coordinates layer
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  stat_smooth(method = lm, col = "red") +  #stat_smooth-
  scale_y_continuous("Miles per Gallon", limits = c(2, 35), expand = c(0, 0)) +
  scale_x_continuous("Weight", limits = c(0, 25), expand = c(0, 0)) +
  coord_equal() +
  labs(title = "Miles per Gallon vs Weight",
       x = "Weight",
       y = "Miles per Gallon")


#Adding more cordinates
ggplot(data = mtcars, aes(x = wt, y = hp, col = am)) +
  geom_point() + geom_smooth() +
  coord_cartesian(xlim = c(3, 6))

# add theme layers
ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  facet_grid(. ~ cyl) +
  theme(plot.background = element_rect(fill = "yellow", colour = "gray")) +
  labs(title = "Miles per Gallon vs Horsepower")



