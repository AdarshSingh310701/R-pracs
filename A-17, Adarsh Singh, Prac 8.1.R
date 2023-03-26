data(mtcars)
summary(mtcars)
str(mtcars)
hist(mtcars$mpg, breaks=10, xlab = "Miles per gallon", main = "Historgram of Miles per gallon of cars", xlim = range(10:35))
plot(mtcars$mpg ~ as.factor(mtcars$am), mtcars, xlab = "Transmission type", ylab="Miles per gallon", main="Histogram of MPG by transmission type")
fit0 <- lm( mpg ~ as.factor(am), data=mtcars)
summary(fit0)
pp <- cor(mtcars)
pp[1,]
pp[2,]
pp[4,]
pp[5,]
pp[6,]
fit1 <- lm( mtcars$mpg ~ hp + wt + as.factor(am), data=mtcars)
summary(fit1)
fit2 <- lm( mtcars$mpg ~ hp + wt, data=mtcars)
summary(fit2)
plot(resid(fit1))
abline(h=0)
anova(fit0, fit1)
par(mfrow = c(2,2))
plot(fit1)
