## EDA
library(tidyverse)

# Read data
storms <- read.csv("data/StormData.csv") %>% tibble

sum_fatal_inj <- storms %>%
    group_by(EVTYPE) %>%
    summarize(total_fatalities = sum(FATALITIES),
              total_injuries = sum(INJURIES)) %>%
    arrange(desc(total_fatalities))

sum_fatal_inj
sum_fatal_inj %>% arrange(desc(total_injuries))

sum_prop <- storms %>%
    group_by(EVTYPE) %>%
    summarize(property_damage = )