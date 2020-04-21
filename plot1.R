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

#plotting 
with(hpc1,hist(hpc1$Global_active_power,col = "red",xlab = "GLobal Active Power" , main = "Count of Global Active power"))





