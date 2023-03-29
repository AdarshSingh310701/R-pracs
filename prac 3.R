# Verify the package is installed.
any(grepl("xlsx",installed.packages()))

# Load the library into R workspace.
library("xlsx")
install.packages('xlsx')
data <- read.xlsx("input.xlsx", sheetIndex = 1)
print(data)
install.packages("rJava")  
any(grepl("rJava",installed.packages()))  
library(rJava)
library(xlsx)  
data <- read.xlsx("input.xlsx", sheetIndex = 1)
print(data)
