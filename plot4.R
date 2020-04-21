#Renaming file for ease of work 
hpc <- household_power_consumption 
setwd("C:\Users\hp\Desktop\ANALYTICS")


#Taking out required data 
hpc1 <- subset(hpc,hpc$Date == c("2007-02-01","2007-0202"))

#Creating new data collumn and storing Date time together
hpc1$DateTime <- NA
hpc1$DateTime <- as.POSIXct(paste(hpc1$Date,hpc1$Time) , format = "%Y-%m-%d %H:%M:%S")


#Giving command for saving file
png("plot4.png", width=480, height=480)

#Creating Matrix for plots
par(mfrow=c(2,2))

#Plot1
with(hpc1,plot(hpc1$DateTime,hpc1$Global_active_power,type = "l" ))

#Plot2 
with(hpc1,plot(hpc1$DateTime,hpc1$Voltage,type = "l" ))

#Plot3
plot(hpc1$DateTime,hpc1$Sub_metering_1,type = 'l',col = "black")
lines(hpc1$DateTime,hpc1$Sub_metering_2,type = "l" col="red")
lines(hpc1$DateTime,hpc1$Sub_metering_3,col="blue" , type ='l')
legend("topright", col=c("black","red","blue")
       , c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  ")
       , lty=c(2,2)
       , bty="n"
       , cex=.5) 

#Plot4
with(hpc1,plot(hpc1$DateTime,hpc1$Global_reactive_power,type = "l" )) 

dev.off()





dev.off()





