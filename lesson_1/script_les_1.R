## объекты
x.1 <- 17 # переменная
x.1
rm(x.1)
x.1

# основные функции
1+6
1-6

10/2
10*2

x <- 200:167
x
x[1:8]

sqrt(25)
log2(8)
help(log)
log(27, 3)

10^3
10**3
exp(1)
log(exp(1))
factorial(6)

## работа функции
sqrt(log2(16))
## доступные пакеты https://cran.r-project.org
install.packages("effsize")
library(effsize)

## part 2
a <- c(0, 1, 2, 3)
a
a[2]

b<-rep(2, time=3)
b
a+b # ошибка!

b.1 <- rep(2,4)
b.1

a+b.1
a

10:3

seq(2, 8, by=2) # чётные

seq(1,9,2) # нечётные

?seq

seq(1,10,length.out = 5)
(10-1)/(5-1)

s<-1:10
s

class(letters)
letters

class(s)

set.seed(1)

rnorm(50, mean=5, sd=0.3) # задаем нормальное распределение
o<-rnorm(50, mean=5, sd=0.3)
mean(o)

plot(density(o))

rpois(100, 10) # распределение Пуассона
?rpois

rbinom(100,10, 0.5) # биномиальное распределение

set.seed(1)

rbinom(100,10,0.5)

rep(c(0,2), time=2)
rep(c(0,2), each=2)

a<-c(rep(1,10))
a
class(a)

b<-letters
b
class(b)

class(2!=0)

class(factorial)

d<- c(rep("a", 4), rep("b", 6), rep("c", 2))
d
sample(d)

d.table<-table(d)
class(d.table)
d.table

r <- seq(10,1)
r
sum(r)
mean.1<-sum(r)/length(r)
mean.1

mean.2<-mean(r)
mean.2

set.seed(1)
popul<-rnorm(100)
popul

popul.1=round(popul, 3)
popul.1

sort(popul.1)
sort(popul.1, decreasing = TRUE)

set.seed(1)
lets<-sample(letters,100,replace = TRUE)
lets

df<-data.frame(lets, popul.1)
head(df)

# нужно разместить по возрастанию, но теперь каждому значению соотвествует буква
df$popul.1
ind<-order(df$popul.1)
ind

df.new<-df[ind,]
head(df.new, 10)

g<-seq(31, 45)
g
length(g)

g[1]
g[c(1,5,15)]
g[-c(1,5,15)]
g[1:5]

h<-1:15
g+h
g*2

# текстовые векторы
letters
class(letters)

LETTERS
class(LETTERS)

paste(letters, set="_", seq(1, 26))
paste(letters, set="_",1)

paste0(letters, set="_", seq(1,26))

?ISOdate
ISOdate(2019,9,1:30)

format(ISOdate(2019,9,1:30), "%A")
format(ISOdate(2019,9,1:30), "%D")
format(ISOdate(2019,9,1:30), "%a")
format(ISOdate(2019,9,1:30), "%b")
format(ISOdate(2019,9,1:30), "%d")

paste(format(ISOdate(2019,9,1:30), "%d"),set="_", format(ISOdate(2019,9,1:30), "%b"))

paste0(format(ISOdate(2019,9,1:30), "%d"),set="_",rep("сен", time=30))

## прочие функции
# обучающие наборы данных
help(sort)
data()
data(package=.packages(all.available = TRUE))

install.packages("cluster")
library(cluster)
data()
animals
?animals

5>6
5<100

2!=2

3==3

10>=10


6>7 | 8>9

6>7 | 10>9

6>7 & 10>9

12>7 & 10>9

((T==F)&(1==1))&100 == 100
((T==F)&(1==1))|100 == 100

is.na(animals)

sum(is.na(animals))

animals

head(animals,3)

tail(animals)
tail(animals, 3)

animals $gro
class(animals $gro)


animals[,5]
animals[3,]
animals$gro[!is.na(animals$gro)]
animals$gro[!is.na(animals[,5])]

?iris
head(iris,10)
dim(iris)

tail(iris)
str(iris)

unique(iris$Species)

levels(iris$Species)

iris[1,1]

traindat<-iris[1:5,c(2,3,5)]
traindat

traindat[traindat$Sepal.Width>3,]

traindat[traindat$Sepal.Width>3 & traindat$Petal.Length>1.4,]

weight<-c(78,56,67,48,69,90)
height<-c(170,160,165,159,170,185)

sex<-c(rep("F", 3), rep("M",3))
sex

class(sex)

df.1<-data.frame(weight,height,sex, stringsAsFactors = F)

df.1
class(df.1)

str(df.1)

df.2<-data.frame(weight,height,sex, stringsAsFactors = T)
df.2

sex
str(df.2)

# строим матрицу

m<-1:30
m

z<-c(10,3)
z

dim(m)

dim(m)<-z
m
class(m)

# 2 способ
y<-1:50
y

mt<-matrix(y,10,5)

mt

imena<-LETTERS[1:10]
imena

cbind(imena,mt)

class(mt)

######
?rownames

rownames(mt)
colnames(mt)

rownames(mt, do.NULL = TRUE, prefix = "row")
rownames(mt)<-imena
mt

colnames(mt, do.NULL = TRUE, prefix = "col")
colnames(mt) <- paste("day",1:5)
mt
