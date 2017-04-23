library(foreign)
library(tidyverse)

acc90 <- read.dbf("acc1990.dbf")
acc00 <- read.dbf("ACCIDENT00.dbf")

days <- acc90 %>%
  group_by(DAY) %>%
  summarise(
    Accidents = sum(FATALS)
  )

states <- acc90 %>%
  group_by(STATE) %>%
  summarise(
    Accidents = sum(FATALS)
  )