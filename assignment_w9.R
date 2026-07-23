# Week 9 Assignment
# Muhammad Rizqy Hidayat - 26000108

# ---------- #
#   PART A   #
# ---------- #

# 1. Dataset Preparation & Splitting
df_A <- data.frame(
  Weight_kg = c(0.5, 0.8, 1.2, 1.6, 2.0, 2.4, 2.8, 3.2, 3.6, 4.0, 4.5, 5.0, 5.5, 6.0, 6.5),
  Fee_RM = c(6.5, 7.2, 8.0, 8.9, 9.6, 10.3, 11.1, 12.0, 12.8, 13.6, 14.7, 15.8, 16.6, 17.5, 18.4)
)
train_A <- df_A[1:10, ]
test_A <- df_A[11:15, ]

# 2. Fit SLR Model
model_A <- lm(Fee_RM ~ Weight_kg, data = train_A)

# 3. Report Coefficients
summary(model_A)

# 4. Predictions & Results Table
pred_A <- predict(model_A, newdata = test_A)
results_A <- data.frame(Weight_kg = test_A$Weight_kg, Actual = test_A$Fee_RM, Predicted = round(pred_A, 3))

View(results_A)

# 5. Compute MAPE and RMSE
error_A <- test_A$Fee_RM - pred_A
mape_A <- mean(abs(error_A / test_A$Fee_RM)) * 100
rmse_A <- sqrt(mean(error_A^2))

error_A
mape_A
rmse_A

# 6. Plotting
plot(df_A$Weight_kg, df_A$Fee_RM, main = "Courier Fee vs. Weight",
     xlab = "Weight (kg)", ylab = "Fee (RM)", pch = 16, col = "darkblue")
abline(model_A, col = "red", lwd = 2)
points(test_A$Weight_kg, pred_A, pch = 4, col = "green", cex = 0.7, lwd = 2)
# Updated legend code to make it smaller and remove the border box
legend("topleft", 
       legend = c("Data Points", "Regression Line", "Test Predictions (X)"),
       pch = c(16, NA, 4), 
       lty = c(NA, 1, NA), 
       col = c("darkblue", "red", "green"),
       cex = 0.7)

# ---------- #
#   PART B   #
# ---------- #

# 1. Dataset Preparation & Splitting
df_B <- data.frame(
  Temp_C = c(33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19),
  Occupants = c(1, 2, 2, 3, 1, 4, 3, 2, 4, 1, 3, 2, 4, 3, 1),
  kWh = c(249, 276, 285, 306, 232, 343, 307, 239, 337, 185, 285, 214, 314, 244, 164)
)
train_B <- df_B[1:10, ]
test_B <- df_B[11:15, ]

# 2. Fit MLR Model
model_B <- lm(kWh ~ Temp_C + Occupants, data = train_B)

# 3. Report Coefficients and R-squared
summary(model_B)

# 4. Predictions & Results Table
pred_B <- predict(model_B, newdata = test_B)
results_B <- data.frame(Temp_C = test_B$Temp_C, Occupants = test_B$Occupants,
                        Actual = test_B$kWh, Predicted = round(pred_B, 2))

# 5. Compute MAPE and RMSE
error_B <- test_B$kWh - pred_B
mape_B <- mean(abs(error_B / test_B$kWh)) * 100
rmse_B <- sqrt(mean(error_B^2))