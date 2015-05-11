#! /usr/bin/Rscript

# Constants
LAB1_END_IDX <- 26

# Main
args <- commandArgs(trailingOnly = TRUE)
load(args[1])
exam1 <- Exam1scores['exam1'][[1]]
lab1 <- exam1[1:26]
lab2 <- exam1[27:53]
lab1
lab2
box_plots <- boxplot(
                     lab1,
                     lab2,
                     main='Exam 1 Score Distributions For Labs 1 and 2')

# z <- c("lab1", "lab2")
# dataList <- lapply(z, get, envir=environment())
# names(dataList) <- z
# box_plots <- boxplot(dataList)
