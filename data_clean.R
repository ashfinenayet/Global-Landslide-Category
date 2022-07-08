# data cleaning and EDA
library(dplyr)
library(readr)
library(tidyverse)
library(stringr)
library(lubridate)
Global_Landslide_Catalog_Export <- read_csv("~/Downloads/Global_Landslide_Catalog_Export.csv")

colnames(Global_Landslide_Catalog_Export)
landslide_clean <- c("event_date", "latitude", "longitude", "landslide_category", 
           "landslide_setting", "landslide_size", "injury_count", 
           "admin_division_name", "admin_division_population", "country_name")

# 
cleaned <- Global_Landslide_Catalog_Export[landslide_clean] # pick only relevant columns

# cleaned$event_date <- gsub("PM", "", cleaned$event_date)  #doesn't work because 'df$x' isn't one string
cleaned$event_date <- parse_date_time(cleaned$event_date, "%m/%d/%Y %H:%M:%S %p" ) # convert to date string 





cleaned[order(cleaned$event_date ),]

# make pie chart for different landslides and find which year had most landslides
