library(dplyr)
library(readr)

# Activity 1
dfStudentgrade <- data.frame( StudentName = c("Nasser", "Ali", "Ahmed",
                                              "Mohamed", "Mustafa", "Ahmed", "Omar"),
                              StudentID = c(1122, 1123, 1124, 1125, 1126, 1124, 1127),
                              Program = c("BIS", "BIT", "BIS", "BIT", "BIS", "BIS", "BIT"),
                              CourseworkGrade = c(45, 38, 70, NA, 45, 65, NA),
                              FinalExamGrade = c(44, 33, 45, 39, 57, 45, 43))
View(dfStudentgrade)

dfStudentgrade1<-dfStudentgrade[!duplicated(dfStudentgrade$StudentID),]
View(dfStudentgrade1)

median_course <- median(dfStudentgrade$CourseworkGrade, na.rm = TRUE)
dfStudentgrade$CourseworkGrade[dfStudentgrade$CourseworkGrade>50]<-
  median_course
View(dfStudentgrade)

median_exam <- median(dfStudentgrade$FinalExamGrade, na.rm = TRUE)
dfStudentgrade$FinalExamGrade[dfStudentgrade$FinalExamGrade>50]<-
  median_exam
View(dfStudentgrade)

dfStudentgrade <- dfStudentgrade %>% mutate(TotalScore = CourseworkGrade + FinalExamGrade)
View(dfStudentgrade)

dfStudentgrade <- dfStudentgrade %>% arrange(desc(TotalScore))
View(dfStudentgrade)


# Activity 2

Students_Grade <- read.csv("C:\\Project\\Students_Data.csv")
View(Students_Grade)

total <- Students_Grade %>% mutate(Total_Score =
                                     Coursework + Final_Exam)
View(total)

filtered_students <- total %>% filter(Total_Score >
                                        40) %>% arrange(desc(Total_Score))
View(filtered_students)

