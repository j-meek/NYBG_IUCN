setwd("~/Desktop/")

library(dplyr)
library(ggplot2)

data <- read.csv("./NYBG DD Project/data//assessments.csv")
View(data)

ggplot(data, aes(x = yearPublished)) +
  geom_bar() +
  theme_minimal() +
  ggtitle("Histogram") +
  xlab("Year Published") +
  ylab("# of Data Deficient Entries Published(yr)")

data.1998 <- filter(data, yearPublished == 1998)

clean.data.1998 <- data.1998 %>%
  select(!redlistCategory, !redlistCriteria, !assessmentDate, !criteriaVersion, !language, !rationale, !populationTrend, !useTrade, !yearLastSeen)

data.1998.first5 <- data[1:5, ]


data.sample <- data[sample(nrow(data), 10), ]
View(data.sample)

