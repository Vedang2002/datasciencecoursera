#Asssign the dataset to a variable called "file_name" 
file_name <- "household_power_consumption.txt"
#Read the data from the file
data <- read.table(file_name, header = TRUE, sep = ";", dec = ".", na.strings = "?")
#separating the data as per dates
data <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]
#plotting histogram
hist(data[, 3], col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
