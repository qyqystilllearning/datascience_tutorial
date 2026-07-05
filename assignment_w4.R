# # Number 1
# 
# scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)
# 
# grades <- cut(scores,
#               breaks = c(-Inf, 49, 59, 69, 79, 89, 100),
#               labels = c("F", "E", "D", "C", "B", "A"))
# 
# cat("Number of students based on grade:\n")
# print(table(grades))
# 
# pass <- scores > 49
# 
# cat("\nPass status for each student (>49):\n")
# print(pass)

# # Number 2
# 
# students <- list(
#    Name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", 
#             "Larson", "Holland", "Paul", "Simu", "Renner"),
#    Exam_Score = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
#  )
#  
# highest_score <- max(students$Exam_Score)
# lowest_score <- min(students$Exam_Score)
# average_score <- mean(students$Exam_Score)
# 
# top_students <- students$Name[students$Exam_Score == highest_score]
# bottom_students <- students$Name[students$Exam_Score == lowest_score]
# 
# cat("Highest Score:", highest_score, "\n")
# cat("Lowest Score:", lowest_score, "\n")
# cat("Average Score:", average_score, "\n")
# cat("Student with highest score:", paste(top_students, collapse = " & "), "\n")
# cat("Student with lowest score:", paste(bottom_students, collapse = " & "), "\n")

# Number 3

student_records <- list(
   Name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", 
            "Larson", "Holland", "Paul", "Simu", "Renner"),
   Chemistry = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59),
   Physics = c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)
 )

chem_fails <- sum(student_records$Chemistry <= 49)
phys_fails <- sum(student_records$Physics <= 49)

max_chem <- max(student_records$Chemistry)
best_chem_student <- student_records$Name[student_records$Chemistry == max_chem]

max_phys <- max(student_records$Physics)
best_phys_student <- student_records$Name[student_records$Physics == max_phys]

cat("Number of students who failed Chemistry (<=49):", chem_fails, "\n")
cat("Number of students who failed Physics (<=49):", phys_fails, "\n")
cat("Student(s) with the highest score in Chemistry:", paste(best_chem_student, collapse = " & "), "\n")
cat("Student(s) with the highest score in Physics:", paste(best_phys_student, collapse = " & "), "\n")