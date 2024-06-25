#Q1
# E ( X ) = μ = ∑ x P ( x ) 
x<-c(0,1,2,3,4)
prob<-c(0.41,0.37,0.16,0.05,0.01)
expec<-sum(x*prob)
print(expec)

expected<-weighted.mean(x,prob)
print(expected)

expected_val<-c(x%*%prob)
print(expected_val)

#Q2
f<-function(t){t*0.1*exp(-0.1*t)}
expval<-integrate(f,lower=0,upper=Inf)
print(expval)

print(expval$value)

#Q3
x<-c(0,1,2,3)
prob<-c(0.1,0.2,0.2,0.5)
#y<-12*x+2*(3-x)-6*x
y<-10*x-12
expectedVal<-sum(y*prob)
print(expectedVal)

#Q4
f1<-function(x){x*0.5*exp(-abs(x))}
moment1<-integrate(f1,lower=1,upper=10)
print(moment1$value) # mean

f2<-function(x){x^2*0.5*exp(abs(x))}
moment2<-integrate(f2,lower=1,upper=10)
print(moment2$value)

f3<-function(m1,m2){return (m2-m1*m1)}
var=f3(moment1$value,moment2$value)
print(var)#variance

#Q5
fy<-function(y){(3/4)*(1/4)^(sqrt(y)-1)}
x<-as.integer(readline(prompt="enter the vaue of x "))
y = x^2
proby<-fy(y)
print(proby)

x<-c(1,2,3,4,5)
y<-x^2
proby<-fy(y)
print(proby)
expval<-sum(y*proby)
print(expval)

m<-expval
y1<-(y-m)^2
proby1<-fy(y1)
var<-sum(y1*proby1)
print(var)


