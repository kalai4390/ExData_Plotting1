#load package
library(data.table) 
#read data from text file

readtext <- data.table::fread(input = "household_power_consumption.txt", na.strings="?" )
#subsetting data for specified time
data <- readtext[readtext$Date %in% c("1/2/2007","2/2/2007") ,]
#plot1
globalActivePower <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
