# Week 8 Assignment
# Muhammad Rizqy Hidayat - 26000108

# DATAFRAME creation

# Creating the employee_df data frame using the exact data from FIGURE 1
employee_df <- data.frame(
  Employee_ID = c("E001", "E002", "E003", "E004", "E005", "E002", "E006", "E007"),
  Name = c("Sarah", "Omar", "Aisha", "James", "Rita", "Omar", "Khalid", "Nisa"),
  Department = c("HR", "Sales", "IT", "Marketing", "IT", "Sales", "Finance", "HR"),
  Monthly_Sales = c(45, 250, 65, 59, 72, 82, -15, 55),
  Projects_Completed = c(8, 10, 7, NA, 8, 10, 9, NA),
  Satisfaction_Score = c(7.8, 6.9, NA, 8.2, 7.5, 6.9, 9.1, 12.5)
)

# View the actual data frame
View(employee_df)

# a answer
print(employee_df[c(1,3), ])


# Part b
new_employee <- data.frame(
  Employee_ID = "E008", 
  Name = "Ali", 
  Department = "Finance", 
  Monthly_Sales = 90, 
  Projects_Completed = 11, 
  Satisfaction_Score = 8.7
)
employee_df <- rbind(employee_df, new_employee)

# part c
employee_df$Performance_Index <- (employee_df$Monthly_Sales * 0.5) + 
  (employee_df$Projects_Completed * 2) + 
  (employee_df$Satisfaction_Score)

View(employee_df)