# Assignment Week 7 Data Science
# Hidayat Muhammad Rizqy - 26000108

# Load the dataset
data(mtcars)

# Plot 1
plot(x = mtcars$wt, 
     y = mtcars$mpg,
     main = "Vehicle Weight vs. Fuel Efficiency",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles Per Gallon (MPG)",
     col = "darkblue",
     pch = 16) # Uses solid dots for a cleaner look

# Plot 2
boxplot(mpg ~ cyl, data = mtcars,
        main = "Fuel Efficiency Distribution by Cylinder Count",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon (MPG)",
        col = c("lightgreen", "khaki", "lightcoral"))

# Load the dataset
data(BJsales)

# Plot a customized Line Graph for the Sales Manager
plot(BJsales,
     type = "o",           # 'o' plots both points and lines
     main = "Historical Sales Performance Trend",
     col = "forestgreen",
     xlab = "Time Period",
     ylab = "Total Sales Volume",
     lwd = 2,              # Makes the line slightly thicker
     pch = 20)             # Smaller, solid points