DataFile <- "./household_power_consumption.txt"
readData <- read.table(DataFile, header = TRUE, sep = ";", stringsAsFactors=FALSE, dec=".")
readData
head(readData)
useData <- readData[readData$Date %in% c("1/2/2007","2/2/2007") ,]  #subset data , select the desired data

globalActivePower <- as.numeric(useData$Global_active_power)
png("plot1.pgn", width=480, height=480)
hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()