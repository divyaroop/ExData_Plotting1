#Getting Required DATA
db <- household_power_consumption[-1,]
db$V1 <- as.Date(db$V1)

setwd("C:\Users\hp\Desktop\ANALYTICS")


#Subsetting data for the given dates
db1 <- subset(db, db$V1 == c("1/2/2007" , "2/2/2007")) 

#class of file is factor, hence changing it to numeric
db1$V3 <- as.numeric(as.character(db1$V3))

#PLOT
hist(db1$V3 , col = "red" , xlab = "Global Active Power (kW)" , main = "Global Active Power")

png(file = "plot1.png" , width = 480 , height = 480)
dev.off()





