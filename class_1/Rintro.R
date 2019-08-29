
x <- 5
print(x)

y <- 'hello there'
y

y <- sqrt(10)
y

z <- x+y
z

#R下标从1开始,py下标从0开始
x <- 1:5
x[1] <- 17
x

x[3:5] <- 0
x

#R中 -3代表不要第三个数，py中-3代表取出倒数第三个值
x[-3]

y <- c(1,5,2,4,7)
y
y[2]
y[-3]

y[c(1,4,5)]

i<- (1:3)
i
z <- c(9,10,11)
y[i] <- z
y

y <- y^2
y

#log默认以E为底
y <- 1:10
y <- log(y)
y
y <- exp(y)
y

x <- c(5,4,3,2,1,5,4,3,2,1)
z <- x+y
z

z <- (x ==2)
print(z)

#####x < 5 ?
z <- (x<5);print(z)
x[x<5] <- y[x<5]
x
y[y<5]

#matrix

junk <- c(1,2,3,4,5,0.5,2,6,0,1,1,0)
m <- matrix(junk,ncol = 3) #3列，先列后行，int类型自动转为float
m
m2 <- matrix(junk,ncol = 3,byrow = T) #3列，先行后列
m2

#显示维度
dim(m)

#第一列
y <- m[,1]
y

y <- m[2:3,2:3]
y

z <- m[1,2]
z

#t()行列转置
zz <- t(y)
zz

#矩阵
new <- matrix(1:9,3,3)
new
hello <- z + new
hello

#取某一个值
m[1,3]

#取子集
m[2:3,2:3]

m[,c(2,3)]

m[2,3] <- 99
m
#去掉第二行
m[-2,]

#runif 生成均匀分布随机数
x <- runif(100,0,1)
mean(x)
min(x)
max(x)
summary(x)
#help()显示帮助文档
help(mean)

#list
who <- list(name = 'Joe',age = 45,married = T)
who 
who$name
who[[1]]

#列名
names(who)

who$name <- c('Joe','steve','marry')
who$age <- c(45,23)
who$married <- c(T,F,T)
who


#循环
for(i in 1 :10){
  print(i+1)
}

x <- 101:200
y <- 1:100
#rep : 0重复100次
z <- rep(0,100)
z

for(i in 1:100){
  z[i] <- x[i] + y[i]
}

w <- x + y
w - z


for(i in 1:10){
  for(j in 1:5){
    print(i+j)
  }
}

#source引入自己本地的R文件中的函数
source('other')

#安装第三方包
install.packages('ggplot2')
library('ggplot2')

#函数
my.fun <- function(x,y){
  a <- mean(x) - mean(y)
  return(a)
}

my.fun2 <- function(x,y){
  mx <- mean(x)
  my <- mean(y)
  d <- mx - my
  out <- list(meanx = mx,meany = my,difference = d)
  return(out)
}

x <- runif(50,0,1)
y <- runif(50,0,3)
output <- my.fun(x,y)
output

output2 <- my.fun2(x,y)
output2
output2$difference


for(i in 1:10){
  if( i == 4) print(i)
}

##plot
x <- 1:10
#rnorm 取10个 服从均值为0 方差为1的正态分布
y <- 1+ x + rnorm(10,0,1)
plot(x,y)
plot(x,y,type = 'h')
plot(x,y,type = 'l')
plot(x,y,type = 'l',lwd = 3,col = 6,xlab = 'x',ylab = 'y')

#par()重新设置参数
par(mfrow = c(3,2))
for(i in 1:6){
  plot(x,y+i,type = 'l',led = 3,col=6,xlab = 'x',ylab = 'y')
}
#图片保存
postscript('plot.ps')

plot(x,y,type = 'l',led = 3,col=6,xlab = 'x',ylab = 'y')
#关闭图形设备
dev.off()

par(myfrow = c(1,1))
x <- rnorm(100,0,1)
y <- rpois(500,4)

hist(y)
hist(y,nclass = 50)


if(FALSE){
  'rnorm生成随机正态分布序列
  pnorm可以输出正态分布的分布函数
  dnorm可以输出正态分布的概率密度
  qnorm给定分位数的正太分布'}

pnorm(2,0,1)
pnorm(2,1,4)
qnorm(.3,0,1)

x <- seq(-3,3,length.out = 1000)
f <- dnorm(x,0,1)
plot(x,f,type = 'l',lwd = 3,col = 4)





