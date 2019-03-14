
# Draw ReLU
x=seq(-10,10)
y=c((rep(0,10)), x[11:21])

plot(x,y,type="l",lwd=2, main="ReLU",planel.first=grid())
abline(v = 0, col = "gray60", lty=2)


# Draw Step Fn
y0 <- c(0,0,1,1)
sfun0  <- stepfun(0:2, y0, f = 0)
plot(sfun0)
plot(sfun0, lwd=4, main="Step Function",cex.axis=1.2,planel.first=grid())
abline(v = 0, col = "gray60", lty=2)

# Draw Sigmoid
x=seq(-5,5)
sigmoid = function(x) {
  1 / (1 + exp(-x))
}
plot(x, sigmoid(x), type="l",lwd=4, main="Sigmoid", cex.axis=1.2, planel.first=grid())
abline(v = 0, col = "gray60", lty=2)
abline(v = -2, col = "gray60", lty=3)
abline(v = -4, col = "gray60", lty=3)
abline(v = 2, col = "gray60", lty=3)
abline(v = 4, col = "gray60", lty=3)


# Draw Tanh 
x=seq(-10,10,0.2)
plot(x,tanh(x), type="l",lwd=2, main="tanh",planel.first=grid())
abline(v = 0, col = "gray60", lty=2)


#Softmax
#The range will 0 to 1, and the sum of all the probabilities will be equal to one
x=seq(-10,10)
softmax <- exp(x[10:20])/sum(exp(x[10:20]))
plot(x[10:20],softmax, main="softmax", xlab="sum of all the probabilities will be equal to one", pch=19)



