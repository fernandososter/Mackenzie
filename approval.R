
library(dplyr)
library(gdata)
library(kknn)

raw <- read.table("crx.csv",sep = ",")
summary(raw)
raw2 <- raw
raw2 <- unknownToNA(raw2,unknown = "?")

raw3 <- raw2[complete.cases(raw2),]
summary(raw3)

cor(raw3)
