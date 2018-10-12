# Name:
# I collaborated with:

# The following code loads (i.e. opens) all necessary packages.
library(ggplot2)
library(dplyr)
library(readr)

# Recall the Slack poll in the #polls channel on imposter syndrome. Let's load
# two representations of the results saved in two CSV's. We do this using the
# read_csv() function in the readr package.
poll_results_A <- read_csv("https://rudeboybert.github.io/SDS192/static/PS/poll_results_A.csv")
View(poll_results_A)

poll_results_B <- read_csv("https://rudeboybert.github.io/SDS192/static/PS/poll_results_B.csv")
View(poll_results_B)


# Question 1 -------------------
# a) Using the poll_results_A data frame, recreate Fig 1. For all
# plots don't worry about getting the axes labels and titles to match. Just
# focus on the bars.
# Write your ggplot() code below:
ggplot(poll_results_A, aes(x = heard_of_imposter_syndrome)) +
  geom_bar() +
  labs(title = "Fig 1: Overall poll results")


# b) Using the poll_results_A data frame, recreate Fig 2.
# Write your ggplot() code below:
ggplot(poll_results_A, aes(x = heard_of_imposter_syndrome)) +
  geom_bar() +
  facet_wrap(~ year, nrow = 1) +
  labs(title = "Fig 2: Poll results facetted by year")


# c) Using the poll_results_B data frame, recreate Fig 2.
# Write your ggplot() code below:
ggplot(poll_results_B, aes(x = heard_of_imposter_syndrome, y = count)) +
  geom_col() +
  facet_wrap(~ year, nrow = 1) +
  labs(title = "Fig 2: Poll results facetted by year")


# d) Using the poll_results_A data frame, recreate Fig 3. Note Fig 3 uses the
# the default palette.
# Write your ggplot() code below:
ggplot(poll_results_A, aes(x = heard_of_imposter_syndrome, fill = year)) +
  geom_bar(position = "dodge") +
  labs(title = "Fig 3: Dodged barplot 1")


# e) Using the poll_results_A data frame, recreate Fig 4.
# Write your ggplot() code below:
ggplot(poll_results_A, aes(x = year, fill = heard_of_imposter_syndrome)) +
  geom_bar(position = "dodge") +
  labs(title = "Fig 4: Dodged barplot 2")


# f) Using the poll_results_B data frame, recreate Fig 4.
# Write your ggplot() code below:
ggplot(poll_results_B, aes(x = year, y = count, fill = heard_of_imposter_syndrome)) +
  geom_col(position = "dodge") +
  labs(title = "Fig 4: Dodged barplot 2")


# g) Using the poll_results_B data frame, recreate Fig 5.
# Write your ggplot() code below:
ggplot(poll_results_B, aes(x = year, y = count, fill = heard_of_imposter_syndrome)) +
  geom_col(position = "dodge") +
  labs(title = "Fig 5: Dodged barplot 2 + Set2 palette") +
  scale_fill_brewer(palette = "Set2")


# h) You find out from Smith administrators that they have been making an effort
# the last four years to raise awareness about imposter syndrome to normalize it
# amongst the student body. They want to know how effective they've been over time.
# IN YOUR OPINION, which of the 5 figures does this job best?

# 


# i) Using a calculator (or R!) calculate the proportion of students from each
# year that have heard of imposter syndrome. An example of a proportion is 0.250
# indicating 25%

# First-years - The proportion is: 
12/(2+12)
# Sophomores - The proportion is:
6/(4+6)
# Juniors - The proportion is:
8/(8+2)
# Seniors - The proportion is:
8/(8+3)
