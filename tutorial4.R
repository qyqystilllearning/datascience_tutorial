library(plotrix)

input <- mtcars[,c('wt','mpg')]
plot(x = input$wt,
     y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),
     main = "Weight vs Milage")

pairs(~wt+mpg+disp+cyl,data = mtcars,
      main = "Faiz Liar Suki")

# Create the data for the chart
H <- c(7,12,28,3,41)
# Plot the bar chart
barplot(H)

# Create the data for the chart
H <- c(1098,12,28,3,41)
M <- c("Mar","Apr","May","Jun","Jul")
# Plot the bar chart
barplot(H,names.arg=M,xlab="Month",ylab="Revenue",col="green",
        main="Revenue chart",border="red")

# Create the input vectors.
colors = c("green","orange","brown") 
months <- c("Mar","Apr","May","Jun","Jul") 
regions <- c("East","West","North")
# Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3,
                 ncol = 5, byrow = TRUE) # Create the bar chart
barplot(Values, main = "total revenue", names.arg = months,
        xlab = "month", ylab = "revenue", col = colors)
# Add the legend to the chart
legend("topleft", regions, cex = 1.3, fill = colors)

print(Values)

# Create the data for the chart.
v <- c(7,12,28,3,41)
# Plot the chart.
plot(v,type = "o", main = "garis lohya")

# Add more data for the chart.
t <- c(14,7,6,19,3)
# Plot the bar chart.

plot(v,type = "o",col = "red", xlab = "Month", ylab = "Rain fall",
     main = "Rain fall chart")
lines(t, type = "o", col = "blue")
