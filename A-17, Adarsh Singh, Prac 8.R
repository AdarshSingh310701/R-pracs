install.packages("ggplot2")
library("ggplot2")
x <- c(580, 7813, 28266, 59287, 75700,
       87820, 95314, 126214, 218843, 471497,
       936851, 1508725, 2072113)

# library required for decimal_date() function
library(lubridate)

# creating time series object
# from date 22 January, 2020
mts <- ts(x, start = decimal_date(ymd("2020-01-22")),
          frequency = 365.25 / 7)

# plotting the graph
plot(mts, xlab ="Weekly Data of sales",
     ylab ="Total Revenue",
     main ="Sales vs Revenue",
     col.main ="darkgreen")

x <- c(580, 7813, 28266, 59287, 75700,
       87820, 95314, 126214, 218843,
       471497, 936851, 1508725, 2072113)

# library required for decimal_date() function
library(lubridate)

# library required for forecasting
library(forecast)

# output to be created as png file
png(file ="forecastSalesRevenue.png")

# creating time series object
# from date 22 January, 2020
mts <- ts(x, start = decimal_date(ymd("2020-01-22")),
          frequency = 365.25 / 7)

# forecasting model using arima model
fit <- auto.arima(mts)

# Next 5 forecasted values
forecast(fit, 5)

# plotting the graph with next
# 5 weekly forecasted values
plot(forecast(fit, 5), xlab ="Weekly Data of Sales",
     ylab ="Total Revenue",
     main ="Sales vs Revenue", col.main ="darkgreen")

# saving the file
dev.off()


