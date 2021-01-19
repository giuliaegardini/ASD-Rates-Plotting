#ASD Project Fall 2019
#STA 4211
#Giulia Gardini


#year: 2000-2014
#prevalence: number of children in America with ASD per 1000 children.
#estcost: estimated annual cost for people with ASD in America 
#boys: the prevalence of boys with ASD in America per 1000 children 
#girls: the prevalence of girls with ASD in America per 1000 children

#manipulate data to include column names
asd <- read.table("asdrates.txt", header=FALSE)
summary(asd)
colnames(asd)<- c("prevalence", "years", "estcost", "girls", "boys")
asd

#plot comparing ASD rates with regression line
asdRates <- plot(asd$years, asd$prevalence, main="ASD rates from 2000-2014", xlab="Years from 2000", ylab="Prevalence per 1000 kids", pch=19)
abline(lm(asd$prevalence~asd$years))
asdRates

#plot comparing estimated cost of ASD with regression line
asdEstcost <- plot(asd$years, asd$estcost, main="Estimated Cost of ASD from 2000-2014", xlab="Years from 2000", ylab="Estimated Cost (in billions)", pch=19)
abline(lm(asd$estcost~asd$years))
asdEstcost

#plots comparing female ASD rates and male ASD rates with regression lines, blue for boys and red for girls
asdGirlsVsBoys <- plot(asd$years, asd$girls, main="Prevalence of ASD in Girls vs Boys from 2000-2014", xlab="Years from 2000", ylab="Prevalence", ylim=c(0,30), pch=19)
abline(lm(asd$girls~asd$years), col = "red")
par(new = TRUE)
asdBoys <- plot(asd$years, asd$boys, xlab="Years from 2000", ylab= "Prevalence", ylim=c(0,30))
abline(lm(asd$boys~asd$years), col = "blue")
asdGirlsVsBoys




