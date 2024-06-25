#1
vector<-c(5,10,15,20,25,30)
print(paste("max element : ",max(vector)))
print(paste("max element : ",min(vector)))

#2
num<-as.integer(readline(prompt="enter a number "))

if(num<0){
  print("error")
}

#3
fibonacci<-function(n){
  fib<-c(0,1)
  if(n==1){
    print(fib[1])
  }else if(n==2){
    print(fib)
  }
  
  for(i in 3:n){
    next_term<-fib[i-1]+fib[i-2]
    fib<-c(fib,next_term)
    
  }
  print(fib)
}

fibonacci(5)

#4
add <- function(a, b) {
  return(a + b)
}

subtract <- function(a, b) {
  return(a - b)
}

multiply <- function(a, b) {
  return(a * b)
}

divide <- function(a, b) {
  if (b == 0) {
    return("Error: Division by zero")
  } else {
    return(a / b)
  }
}

while (TRUE) {
  cat("Simple Calculator\n")
  cat("1. Addition\n")
  cat("2. Subtraction\n")
  cat("3. Multiplication\n")
  cat("4. Division\n")
  cat("5. Exit\n")
  
  choice <- as.numeric(readline("Enter your choice (1/2/3/4/5): "))
  
  if (choice == 5) {
    cat("Exiting the calculator. Goodbye!\n")
    break
  }
  
  if (choice %in% c(1, 2, 3, 4)) {
    num1 <- as.numeric(readline("Enter the first number: "))
    num2 <- as.numeric(readline("Enter the second number: "))
    
    if (choice == 1) {
      result <- add(num1, num2)
      cat("Result:", result, "\n")
    } else if (choice == 2) {
      result <- subtract(num1, num2)
      cat("Result:", result, "\n")
    } else if (choice == 3) {
      result <- multiply(num1, num2)
      cat("Result:", result, "\n")
    } else if (choice == 4) {
      result <- divide(num1, num2)
      cat("Result:", result, "\n")
    }
  } else {
    cat("Invalid choice. Please enter a valid option (1/2/3/4/5).\n")
  }
}


#5
plot(c(3,5),c(5,2))

x<-c(4,5,6,7)
y<-c(4,5,6,7)
plot(x,y)

x<-c(4,5,6,7)
y<-c(4,5,6,7)
plot(x,y,cex=1,pch=6,xlab="x-axis",ylab="y-axis",col="black")
points(3:7, 4:8, col = "red", pch = 19, cex = 1.5)

x<-c(4,5,6,7)
pie(x,edges = 20,radius = 0.8,clockwise = FALSE)

x<-c(7,12,14,7)
barplot(x)
