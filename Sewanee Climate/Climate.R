# Day 10 practice creating questions
# 

library(tidyverse)
library(lubridate) # to handle date data
# to get the path name for setting the working directory
# press Option with 2 fingers on the touchpad (hold)
# then select the Copy path
setwd('Sewanee Climate/')
weather <- read_csv('sewanee_weather.csv')

# Average precipitation for each month in 5 year periods from 2000 to 2024
# add columns of month and year
weather <- weather %>% 
  mutate( weather ymd(DATE)) #STOPPED here and switched over to R Markdown