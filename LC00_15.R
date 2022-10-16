library(readxl)
library(reshape2)
library(ggplot2)
ttt2000 = read_excel("D:/LC2000_LC2015/sta/TTT000_year_2000.xls",col_names=F)
ttt2015 = read_excel("D:/LC2000_LC2015/sta/TTT000_year_2015.xls",col_names=F)
pdata = cbind(ttt2000[,43],ttt2000[,12],ttt2015[,12])
names(pdata) <- c("year","NPP2000","NPP2015")
#将宽数据变成长数据
pdata_reshape=melt(data=pdata,id="year",variable.name="npp",value.name="value")
#绘制折线图
theme_set(theme_bw())
ggplot(data=pdata_reshape,aes(x=year,y=value,color=npp))+
  geom_line(size=1)+
  geom_point()+
  labs(x="年份",y="NPP(g/C/m2)")+
  theme(legend.title=element_text(face="bold"))+scale_fill_manual(values=c("green","red"))


ll<-41
X1 <- c(1986:2002)
Y1 <- read_excel("D:/LC2000_LC2015/sta/TTT000_year_2000.xls",col_names = F)
Y2 <- read_excel("D:/LC2000_LC2015/sta/TTT000_year_2015.xls",col_names = F)
Y11 <- Y1[6:22,ll]
Y22 <- Y2[6:22,ll]
XY1 <- as.data.frame(cbind(X1,Y11)); names(XY1) <- c("x","y")
XY2 <- as.data.frame(cbind(X1,Y22)); names(XY2) <- c("x","y")
fit2 <- lm(y~x,XY2)
k2 <- summary(fit2)
k2$coefficients[2,1] # slp LC 2015 红色
k2$coefficients[2,4] #p
sd(XY2[,2])/mean(XY2[,2]) #cv
fit1 <- lm(y~x,XY1)
k1 <- summary(fit1)
k1$coefficients[2,1] # slp LC2000 蓝色
k1$coefficients[2,4] #p
sd(XY1[,2])/mean(XY1[,2]) # CV


X1 <- c(2002:2015)
Y1 <- read_excel("D:/LC2000_LC2015/sta/TTT000_year_2000.xls",col_names = F)
Y2 <- read_excel("D:/LC2000_LC2015/sta/TTT000_year_2015.xls",col_names = F)
Y11 <- Y1[22:35,ll]
Y22 <- Y2[22:35,ll]
XY1 <- as.data.frame(cbind(X1,Y11)); names(XY1) <- c("x","y")
XY2 <- as.data.frame(cbind(X1,Y22)); names(XY2) <- c("x","y")
fit2 <- lm(y~x,XY2)
k2 <- summary(fit2)
k2$coefficients[2,1] # slp LC2015 红色
k2$coefficients[2,4] #p
sd(XY2[,2])/mean(XY2[,2]) #cv
fit1 <- lm(y~x,XY1)
k1 <- summary(fit1)
k1$coefficients[2,1] # slp LC2000 蓝色
k1$coefficients[2,4] #p
sd(XY1[,2])/mean(XY1[,2]) # CV

### 侵蚀

X1 <- c(1986:2002)
Y1 <- read.csv("D:/LC2000_LC2015/sta/ERO_TTT/SLWD_Yearly_sta.csv")
Y11 <- Y1[6:22,c(1,2,5)]

XY2 <- as.data.frame(Y11); names(XY2) <- c("x","y2015","y2000")

fit2 <- lm(y2015~x,XY2)
k2 <- summary(fit2)
k2$coefficients[2,1] # slp LC 2015 红色
k2$coefficients[2,4] #p
sd(XY2[,2])/mean(XY2[,2]) #cv
fit1 <- lm(y2000~x,XY2)
k1 <- summary(fit1)
k1$coefficients[2,1] # slp LC2000 蓝色
k1$coefficients[2,4] #p
sd(XY2[,2])/mean(XY2[,3]) # CV


X1 <- c(2002:2015)
Y1 <- read.csv("D:/LC2000_LC2015/sta/ERO_TTT/SLWD_Yearly_sta.csv")
Y11 <- Y1[22:35,c(1,2,5)]

XY2 <- as.data.frame(Y11); names(XY2) <- c("x","y2015","y2000")

fit2 <- lm(y2015~x,XY2)
k2 <- summary(fit2)
k2$coefficients[2,1] # slp LC 2015 红色
k2$coefficients[2,4] #p
sd(XY2[,2])/mean(XY2[,2]) #cv
fit1 <- lm(y2000~x,XY2)
k1 <- summary(fit1)
k1$coefficients[2,1] # slp LC2000 蓝色
k1$coefficients[2,4] #p
sd(XY2[,2])/mean(XY2[,3]) # CV