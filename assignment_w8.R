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

# part d data cleaning

# i.
employee_df <- employee_df[!duplicated(employee_df$Employee_ID), ]

# ii.
median_sales <- median(employee_df$Monthly_Sales, na.rm = TRUE)
employee_df$Monthly_Sales[employee_df$Monthly_Sales < 0 | employee_df$Monthly_Sales > 100] <- median_sales

# Satisfaction_Score range [0, 10]. Outliers: Nisa (12.5)
median_score <- median(employee_df$Satisfaction_Score, na.rm = TRUE)
employee_df$Satisfaction_Score[employee_df$Satisfaction_Score < 0 | employee_df$Satisfaction_Score > 10] <- median_score

# iii.
mean_projects <- mean(employee_df$Projects_Completed, na.rm = TRUE)
employee_df$Projects_Completed[is.na(employee_df$Projects_Completed)] <- mean_projects

# View the final cleaned and updated dataset
print("Final Cleaned Data Frame:")
View(employee_df)
