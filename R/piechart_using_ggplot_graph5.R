
#piecharts in r using ggplot
library(ggplot2)
library(dplyr)

count.data <- data.frame(
  pilot_class = c("A++(Senior pilot)", "A+(Junior pilot)", "A-(Trainee pilot)", "Crew"),
  n = c(389, 256, 589, 466),
  proportion = c(22.88, 15.0588, 34.647, 27.411)
)

count.data

count.data <- count.data %>%
  arrange(desc(pilot_class)) %>%
  mutate(lab.ypos = cumsum(proportion) - 0.6*proportion)

count.data

mycols <- c("#42f55a", "#42f5e6", "#ecf542", "#f56f42")

ggplot(count.data, aes(x = "", y = proportion, fill = pilot_class)) +
  geom_bar(width = 1, stat = "identity", color = "black") +
  coord_polar("y", start = 0)+
  geom_text(aes(y = lab.ypos, label = proportion), color = "black")+
  scale_fill_manual(values = mycols) +
  theme_void()