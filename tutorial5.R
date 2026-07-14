# Tutorial Week 10 Data Science

experience <- 1:10
salary <- c(2500, 2700, 3000, 3400, 3900, 4400, 5000, 5600,
            6200, 6900)

df1 <- data.frame(experience, salary)

data1_train<-df1[1:7,]

data1_test<-df1[8:10,]

relation <- lm(salary ~ experience, data1_train)

print(relation)

x_text <- data.frame(experience = data1_test$experience)
result <- predict(relation,x_text)

print(result)

mape <- mean(abs((data1_test$salary -
                    result)/data1_test$salary)*100)

paste("The error - MAPE is: ", round(mape,digit=2),"%")

library(ggplot2)

ggplot(df1, aes(x = experience, y = salary)) +
  geom_point(color = "blue", size = 3) + # Actual data points
  geom_smooth(method = "lm", se = FALSE, color = "red") + # Regression line
labs(title = "Experience vs Salary: Regression Model",
     x = "Years of Experience",
     y = "Salary ($)") +
  theme_minimal()

# Multiple Linear Regression

fuel_efficiency <- c(18, 17, 16, 15, 14, 13, 12, 11, 10, 9) # Y
engine_size <- c(1.2, 1.4, 1.5, 1.6, 1.8, 2.0, 2.2, 2.4,
                 2.6, 2.8) # X1
vehicle_weight <- c(900, 950, 1000, 1100, 1200, 1300, 1350,
                    1400, 1500, 1600) # X2

df2 <- data.frame(fuel_efficiency, engine_size, vehicle_weight)

data2_train <- df2[1:7, ]
data2_test <- df2[8:10, ]

relation2 <- lm(fuel_efficiency ~ engine_size + vehicle_weight,
                data2_train)
print(relation2)

x_text2 <- data.frame(
  engine_size = data2_test$engine_size,
  vehicle_weight = data2_test$vehicle_weight
)
result2 <- predict(relation2, x_text2)
print(result2)

mape2 <- mean(abs((data2_test$fuel_efficiency - result2) /
                    data2_test$fuel_efficiency) * 100)
paste("The error - MAPE is: ", round(mape2, digits = 2), "%")