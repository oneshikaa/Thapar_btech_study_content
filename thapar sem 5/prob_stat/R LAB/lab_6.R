# To verify joint density function
library('pracma')

f = function(x, y){
  2*(2*x + 3*y)/5
}

I = integral2(f, xmin=0, xmax=1, ymin=0, ymax=1)
I$Q

gx_1 = function(y){
  f(1, y)
}

gx1 = integral(gx_1, 0, 1)
gx1

hy_0 = function(x){
  f(x, 0)
}
hy0 = integral(gy_1, 0, 1)
hy0

exp = function(x, y){
  f(x,y) * x * y
}

exp_i = integral2(exp, 0, 1, 0, 1)
exp_i$Q



# Q2
# To verify joint probability mass function
f = function(x, y){
  (x + y)/30
}
x = c(0:3)
y = c(0:2)

m1 = matrix(c(f(0, 0:2), f(1, 0:2), f(2, 0:2), f(3, 0:2)), nrow=4, ncol=3, byrow=TRUE)

print(m1)

# to check joint prob mass function
sum(m1)

#marginal of x
hx=apply(m1, 1, sum)
print(hx)

#marginal of y
hy=apply(m1,2,sum)
print(hy)

# conditional prob
m1[1,2]
hy[2]
p = m1[1,2]/hy[2]
print(p)

# expectation and variance 
Ex = sum(x*hx)
print(Ex)

Ey = sum(y*hy)
print(Ey)

Ex2 = sum(x*x*hx)
Ey2 = sum(y*y*hy)

varx = Ex2 - Ex*Ex
print(varx)

vary = Ey2 - Ey*Ey
print(vary)

f1 = function(x,y){x*y*(x+y)/30}
m2 = matrix(c(f(0, 0:2), f(1, 0:2), f(2, 0:2), f(3, 0:2)), nrow=4, ncol=3, byrow=TRUE)
Exy = sum(m2)
print(Exy)

# covariance 
cov = Exy - Ex*Ey
print(cov)







