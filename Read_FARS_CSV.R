library(tidyverse)
library(readxl)

Accidents15 <- read_csv("accident.csv", col_names = T)


GSL <- read_excel("GLC.xlsx", col_names = T, skip = 1)

GSL_Codes <- GSL %>%
  filter(!is.na(`State Name`)) %>%
  group_by(`State Name`, `State Code`) %>%
  summarise(
  )

GSL_Codes$`State Code` <- as.integer(GSL_Codes$`State Code`)

Accidents15_States <- Accidents15 %>%
  group_by(STATE) %>%
  summarise(
    Deaths = sum(FATALS)
  )

Accidents15_States <- merge(Accidents15_States, GSL_Codes, 
                            by.x = "STATE", by.y = "State Code")

Accidents15_States <-  select(Accidents15_States, `State Name`, Deaths)

Accidents15_County <- Accidents15 %>%
  group_by(COUNTY) %>%
  summarise(
    Deaths = sum(FATALS)
    )





