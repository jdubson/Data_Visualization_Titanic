library(ggplot2)
library(datasets)

titanic = as.data.frame(Titanic)

# Check out the structure of titanic
str(titanic)

# Use ggplot() for the first instruction
ggplot(titanic, aes(factor(Class), fill = factor(Sex))) +
  geom_bar(position = "dodge")


# Use ggplot() for the second instruction
ggplot(titanic, aes(factor(Class), fill = factor(Sex))) +
  geom_bar(position = "dodge") +
  facet_grid(". ~ Survived")

# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Use ggplot() for the last instruction
ggplot(titanic, aes(factor(Class), Age, col = factor(Sex))) +
  geom_jitter(size = 3, alpha = 0.5, position = posn.j) + 
  facet_grid(". ~ Survived")