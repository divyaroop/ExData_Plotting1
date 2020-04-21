#Renaming file for ease of work 
hpc <- household_power_consumption 
setwd("C:\Users\hp\Desktop\ANALYTICS")


#Taking out required data 
hpc1 <- subset(hpc,hpc$Date == c("2007-02-01","2007-0202"))

#Creating new data collumn and storing Date time together
hpc1$DateTime <- NA
hpc1$DateTime <- as.POSIXct(paste(hpc1$Date,hpc1$Time) , format = "%Y-%m-%d %H:%M:%S")


#Giving command for saving file
png("plot2.png", width=480, height=480)


#Plot
plot(hpc1$DateTime,hpc1$Sub_metering_1,type = 'l' , col="black")
lines(hpc1$DateTime,hpc1$Sub_metering_2,col="red",type = 'l') 
lines(hpc1$DateTime,hpc1$Sub_metering_3,col="blue",type = 'l') 
legend("topright"
       , col=c("black","red","blue")
       , c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  ")
       ,lty=c(1,1), lwd=c(1,1))

dev.off()





