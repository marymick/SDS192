# Group number: 76
# Group members: Albert Y. Kim & P.K. Subban

# 1. Load all necessary packages here
library(ggplot2)


# 2. Include the code that generates the plot of interest here and (if any) comments
# that are relevant to people who want to recreate plot

# Here I use the mtcars dataset which is built into RStudio to create a simple
# plot. Run ?mtcars in console for more details.
ggplot(data = mtcars, mapping = aes(x = cyl, y = mpg)) +
  geom_point() +
  labs(x = "Number of cylinders", y = "Miles per gallon", title = "Fuel efficiency")


# 3. Cite all external sources here:
# None for this plot.
