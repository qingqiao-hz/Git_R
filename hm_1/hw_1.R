#chapter 1
usingData = load("usingR.RData")
ls()

austpop <- read.table('austpop.txt',header=TRUE)

#pch:画图形状
plot(ACT ~ Year, data=austpop, pch=16)

names(austpop)

elasticband <- data.frame(stretch=c(46,54,48,50,44,42,52),distance=c(148,182,173,166,109,141,166))

#edit用不了
#elasticband <- edit(elasticband)

#attach 缓存数据到内存
attach("usingR.RData")


##exercises 1.1
elasticband <- data.frame(stretch=c(46,54,48,50,44,42,52),distance=c(148,182,173,166,109,141,166))
plot(elasticband$stretch,elasticband$distance)

##exerciese 1.2
snow_data <- data.frame(year = 1970:1979,snow.cover = c(6.5,12.0,14.9,10.0,10.7,7.9,21.9,12.5,14.5,9.2))

plot(snow_data$year,snow_data$snow.cover)

hist(snow_data$snow.cover)

plot(snow_data$year,log(snow_data$snow.cover))
hist(log(snow_data$snow.cover))

##exercise 1.3
launches_data <- data.frame(Temperature = c(53,57,63,70,70,75),Erosion  = c(3,1,1,1,1,0),Blowby = c(2,0,0,0,0,2),Total = c(5,1,1,1,1,1))
plot(launches_data$Temperature,launches_data$Erosion)

#chapter 2
load('hills.Rdata')
summary(hills)

#散点图矩阵
pairs(hills)

# 数字小数位数设置为3
options(digits=3)
cor(hills)
cor(log(hills))

install.packages('DAAG')
library(DAAG)

plot(DAAG::elasticband$distance ~ DAAG::elasticband$stretch,data=elasticband, pch=16)
#lm:线性回归
elastic.lm <- lm(DAAG::elasticband$distance ~ DAAG::elasticband$stretch,data=elasticband)
summary(elastic.lm)

celsius <- 25:30
fahrenheit <- 9/5*celsius+32
conversion <- data.frame(Celsius=celsius, Fahrenheit=fahrenheit)

#当前环境中的对象
ls()
#保存数据对象
save.image(file = 'ave_test.RData')

#移出不需要的对象
rm(hills)

#保存数据
save.image(file = 'ave_test.RData')

#循环 
for(i in 1:10) print(i)

for(celines in 25:30) print(c(celines,9/5*celines +32))

answer <- 0
for(j in c(31,51,91)){answer <- j+answer}
answer

sum(c(31,51,91))

#向量,vector,有大小
x <- c(2,3,5,7,1)
y <- c(10,15,12)
z <- c(x,y)
z

#按下标找子集
x[c(2,3)]
x[-c(2,3)]

x[x>5]

y <- c(1,NA,3,0,NA)

y[is.na(y)] <- 0

gender <- c(rep('female',691),rep('male',692))

#factor 因子，只有等级的概念 不涉及大小,level默认以字符串大小排序

gender <- factor(gender)
levels(gender)

#relevel()函数在列表中制作一个特定水平，male放在第一位
gender <- relevel(gender,ref = 'male')

gender <- factor(c(rep('female',691), rep('male',692)))
table(gender)

gender <- factor(gender, levels=c('male', 'female'))
table(gender)

#水平中没有的值 会变成空值
#table统计个数
gender <- factor(gender, levels=c('Male', 'female'))
table(gender)
rm(gender) 

#数据中有空值也作为一个水平
x <- c(1,5,NA,8) 
factor(x) 

factor(x,exclude=NULL)

#dataframe 数据框
DAAG::Cars93.summary

row.names(Cars93.summary)
names(Cars93.summary)

#取某一列
type <- Cars93.summary$abbrev
type <- Cars93.summary[,4]
type <- Cars93.summary[,'abbrev']
type <- Cars93.summary[[4]]
#某行某列的值
Cars93.summary[1, 4]

#as.is读取字符型数据时是否转换为因子型变量，FALSE：转换为因子型数据，TRUE：字符型数据。
#stringsAsFactors，标记处字符向量是否需要转化为因子，默认是TRUE。
austpop <- read.table('austpop.txt',header=TRUE,stringsAsFactors=TRUE,as.is = TRUE)

summary(trees)

#查看包中的数据集
data()

#cat可以顺序输出各种类型
x <- c(1, 20, 2, 5, 22)
cat(x)
cat(c("AB","C"),c("E","F"),"n",sep = "/")
length(x) # Number of elements in a vector or of a list
mean(x)
median(x)
range(x)
unique(x) # Gives the vector of distinct values

sort(x) 
order(x) #输出排序的下标
cumsum(x) #累加

diff(x) #相邻两数的差
cumprod(x) #排序
rev(x) # 逆向排序

#sapply 可以将结果整理以向量，矩阵，列表 的形式输出。
sapply(rainforest, is.factor)

#range返回一个向量，该向量包含给定参数的最大值和最小值。
sapply(rainforest[,-7], range)
range(rainforest$branch, na.rm=TRUE)
sapply(rainforest[,-7], range, na.rm=TRUE)

library(lattice)
table(barley$year, barley$site)

#交叉表，按species的值统计branch空值的个数
table(rainforest$species, !is.na(rainforest$branch))

#查看所有可用对象，包括引入的包
search()

library(MASS)
search()


names(primates)
Bodywt

#attach RData 或者dataframe 可以直接使用df中的列，detach后不可直接引用
attach(primates)

#创建函数
miles.to.km <- function(miles){miles*8/5}
miles.to.km(175)


attach(florida)
plot(BUSH, BUCHANAN, xlab="Bush", ylab="Buchanan") 

plot.florida <- function(xvar='BUSH', yvar='BUCHANAN'){
  x <- florida[,xvar]
  y <- florida[,yvar]
  plot(x, y, xlab=xvar,ylab=yvar)
  mtext(side=3, line=1.75,
        'Votes in Florida, by county, in \nthe 2000 US Presidential election')
}
plot.florida(yvar='NADER') # yvar=”NADER” over-rides the default 
plot.florida(xvar='GORE', yvar='NADER')

detach(florida) 

##exercise 2.1
answer <- 0
for (j in 3:5){ answer <- j+answer }
# 12
answer<- 10
for (j in 3:5){ answer <- j+answer }
#22
answer <- 10
for (j in 3:5){ answer <- j*answer }
#600
##exercise 2.2
prod(c(3:5,10))
##exercise 2.3
sum(1:100)
answer <- 0
for(i in 1:100){answer <- answer + i}
##exercise 2.4
prod(1:50)
answer <- 1
for(i in 1:50){answer <- answer * i}

##exercise 2.5
radii <- c(3:20)
volume <- 4 * radii^3/3
volume_df <- data.frame(radii=radii, volume=volume)

##exercise 2.6
sapply(tinting,is.factor)
sapply(tinting,levels)
sapply(tinting,is.ordered)


#第三章 Plotting
demo(graphics)

plot((0:20)*pi/10, sin((0:20)*pi/10))
plot((1:30)*0.92, sin((1:30)*0.92))

attach(elasticband) 
plot(ACT ~ Year, data=austpop, type="l")
points(ACT ~ Year)
#lines(Year~ACT,data = austpop,type = 'b')
text <- 'this is text'
mtext(text, side = 3, line = 0, outer = FALSE, at = NA)


plot(ACT ~ Year, data=austpop, type="b")
attach(austpop)
plot(spline(Year, ACT), type="l")

points(ACT ~ Year)

#== pairs,对数据集画图等价于任意两坐标的散点图
plot(hills)

#重新设置参数的值,cex:对默认的绘图文本和符号放大多少倍，mex：对边界扩大多少倍

attach(elasticband)
plot(distance ~ stretch)
oldpar <- par(cex=1.5, mex=1.25)
plot(distance ~ stretch)
oldpar <- par(cex=1.25)
on.exit(par(oldpar))

#子图
oldpar <- par(cex=1, mex=1)
par(mfrow=c(2,2), pch=16)
attach(Animals) # This dataset is in the MASS package, which must be attached plot(body, brain)
plot(sqrt(body), sqrt(brain))
plot((body)^0.1, (brain)^0.1)
plot(log(body),log(brain))
detach(Animals)
par(mfrow=c(1,1), pch=1) #恢复原来的设置

attach(primates)
plot(Bodywt, Brainwt,pch=16,xlab="Body weight (kg)", ylab="Brain weight (g)", xlim=c(0,280), ylim=c(0,1350))
text(x=Bodywt, y=Brainwt, labels=row.names(primates), pos=4)
# pos=4 点的说明位置，1:下 2:左 3:上 4:右


plot(1, 1, xlim=c(1, 7.5), ylim=c(1.75,5), type="n", axes=F, xlab="",ylab="")   # Do not plot points
box()
#points ：画点，cex:放大n倍，col：颜色，pch：形状，前两个参数为横轴和纵轴的位置
points(1:7, rep(4.5, 7), cex=1:7, col=1:7, pch=0:6) 
text(1:7,rep(3.5, 7), labels=paste(0:6), cex=1:7, col=1:7)

#点和文字的形状颜色
points(1:7,rep(2.5,7), pch=(0:6)+7) # Plot symbols 7 to 13 
text((1:7), rep(2.5,7), paste((0:6)+7), pos=4) # Label with symbol number 
points(1:7,rep(2,7), pch=(0:6)+14) # Plot symbols 14 to 20 
text((1:7), rep(2,7), paste((0:6)+14), pos=4) # Labels with symbol number

#边界加文字
mtext( 'this is text', side = 3, line = 0, outer = FALSE, at = NA)


#查看颜色
view.colours <- function(){
  plot(1, 1, xlim=c(0,14), ylim=c(0,3), type="n", axes=F,
       xlab="",ylab="")
  text(1:6, rep(2.5,6), paste(1:6), col=palette()[1:6], cex=2.5)
  text(10, 2.5, "Default palette", adj=0)
  rainchars <- c("R","O","Y","G","B","I","V")
  text(1:7, rep(1.5,7), rainchars, col=rainbow(7), cex=2.5)
  text(10, 1.5, "rainbow(7)", adj=0)
  cmtxt <- substring("cm.colors", 1:9,1:9)
  # Split “cm.colors” into its 9 characters
  text(1:9, rep(0.5,9), cmtxt, col=cm.colors(9), cex=3)
  text(10, 0.5, "cm.colors(9)", adj=0)
}
view.colours()


#在散点图中标识异常点，在图上的点处点击，会返回这个点的索引值。
attach(florida)
plot(BUSH, BUCHANAN, xlab='Bush', ylab='Buchanan') 
identify(BUSH, BUCHANAN, County)
detach(florida)














