suppressPackageStartupMessages(library(tidyverse))
library(janitor)
library(skimr)
set.seed(76)

negative_incidents <- read_csv("static/github_survey/negative_incidents.csv") %>%
  clean_names() %>%
  sample_frac(0.25)
survey_data <- read_csv("static/github_survey/survey_data.csv") %>%
  clean_names() %>%
  sample_frac(0.25)

glimpse(negative_incidents)
glimpse(survey_data)

skim(survey_data)
