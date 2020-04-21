hpc <- household_power_consumption_edited
setwd("C:\Users\hp\Desktop\ANALYTICS")

#Taking out required values for the given dates
hpc2 <- subset(hpc , hpc$Date == c("2007-2-1","2007-2-2"))

#Creating new data collumn and storing Date time together
hpc2$DateTime <- NA
hpc2$DateTime <- as.POSIXct(paste(hpc2$Date,hpc2$Time) , format = "%Y-%m-%d %H:%M:%S")

#Giving command for saving file
png("plot2.png", width=480, height=480)

#Plot
plot(hpc2$DateTime,hpc2$Global_active_power,type = "l" , xlab = "Day" , ylab = "Global Active Power kW")

dev.off()
