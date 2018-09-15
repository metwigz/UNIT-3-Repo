library(repmis)
url <- "https://raw.githubusercontent.com/BivinSadler/UNIT-3-Repo/master/EducationData.csv"
mydata <- repmis::source_data(url)
alpha <- 0.05

t.test( mydata$Income2005[mydata$Educ==16], mydata$Income2005[mydata$Educ==12], alternative="greater", conf.level = (1-alpha), mu = 0, var.equal = TRUE)
#Because pval < alpha (2.2e-16 < 0.05) we reject the null hypothesis that the means are equal.
