DataFile <- "./household_power_consumption.txt"
readData <- read.table(DataFile, header = TRUE, sep = ";", stringsAsFactors = TRUE, dec = ".")
readData
head(readData)
useData <- readData[readData$Date %in% c("1/2/2007","2/2/2007") ,]  #subset data , select the desired data

datetime <- strptime(paste(useData$Date, useData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(useData$Global_active_power)

png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()