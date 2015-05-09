#! /usr/bin/Rscript

args <- commandArgs(trailingOnly = TRUE)
data_file = args[1]
print(data_file)
load(data_file)
study_hours <- studyhabits["StudyHrs"]
study_hours <- study_hours[[1]]
study_hours_hist <- hist(x=study_hours)
jpeg(filename="study_hours_hist.jpg")
plot(study_hours_hist, labels=TRUE, main="Hours per week students spent studying -- Trevor Assaf", xlab="Hours", ylab="Number of Students")
dev.off()
