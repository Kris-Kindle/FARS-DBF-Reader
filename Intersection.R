library(foreign)
library(tidyverse)

setwd("Directory with Accident Files")
files <- list.files(getwd())

dbfs <- lapply(files, read.dbf)

var_names <- intersect(names(dbfs[[1]]), names(dbfs[[length(dbfs)]]))

var_intersect <- function(df){
  df <- df[,colnames(df)%in%var_names]
  df
}

intersected <- lapply(dbfs, var_intersect)


acc <- do.call("rbind", intersected)


write.csv(acc, "Accident.csv")