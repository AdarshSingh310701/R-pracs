print("Choice of Operations")
print("1.Addition")
print("2.Subtraction")
print("3.Multiplication")
print("4.Division")

choice <- as.integer(readline(prompt=("Enter your choice:  ")))
num1<-as.double(readline(prompt=("Enter your first number:  ")))
num2<-as.double(readline(prompt=("Enter your second number:  ")))

result<- switch(choice, (num1+num2), (num1-num2), (num1*num2), (num1/num2))
print(paste("The result is: ", result))

