data = read.csv("https://people.sc.fsu.edu/~jburkardt/data/csv/ford_escort.csv",
                header = TRUE, fileEncoding = "latin1")
print(data)
head(data)

cor_data = cor(data)
print("Correlation matrix")
print(cor_data)
