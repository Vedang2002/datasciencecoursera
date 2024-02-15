# plotting
plot(time_axis, data[, 7], xlab = "", ylab = "Energy sub metering", type = "l")
# specifying colors to the 8th and 9th columns of the dataset
lines(time_axis, data[, 8], col = "red")
lines(time_axis, data[, 9], col = "blue")
#inputing a legend for the same
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1)
