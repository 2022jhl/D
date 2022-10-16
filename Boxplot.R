prec_all <- data.frame(S10=numeric(49913))
ss <- c("S10","S20","S30","S40","S50","S60","S70")
for (i in 1:16) {
  S10 <- read.table(paste("D:\\结果\\S10_all\\alldata_change_",ss[i],".txt",sep = ""))
  prec_all[,1] <- S10$PREC
}
xxs10 <- stack(prec_all)
xxs20 <- stack()
library(ggplot2)
library(ggsignif)
ggplot(data = ToothGrowth) + geom_boxplot(aes(x = supp, y = len))

names(S10) <- c("AEVP","AEVT","ALAI","AMLT", "AMSO", "ANAB","ANEP", "ANLT","ANLV","ANPP","ANSL",
               "ANSO","AROF","ARON","ASLWD","ASLWT","ASRS","ATRAN","AWPB","AWS1","AWS2",
               "AWS3","AWS4","HUMR0","PARM0","PREC","RNMX0","TAVE0","TMAX0","TMIN0","VWIN0",
               "WTBA","WTIN","WTOT","DEM","SLOPE","TAVE","TMAX","TMIN","VWIN","PARM","RNMX","HURM","SOIL","VEG")
S10 <- read.table(paste("D:\\结果\\0_ALL\\alldata_change_S10",".txt",sep = ""))
S20 <- read.table(paste("D:\\结果\\0_ALL\\alldata_change_S20",".txt",sep = ""))
S30 <- read.table(paste("D:\\结果\\0_ALL\\alldata_change_S30",".txt",sep = ""))
S40 <- read.table(paste("D:\\结果\\0_ALL\\alldata_change_S40",".txt",sep = ""))
S50 <- read.table(paste("D:\\结果\\0_ALL\\alldata_change_S50",".txt",sep = ""))
S60 <- read.table(paste("D:\\结果\\0_ALL\\alldata_change_S60",".txt",sep = ""))
S70 <- read.table(paste("D:\\结果\\0_ALL\\alldata_change_S70",".txt",sep = ""))
xs10 <- as.data.frame(S10$ANPP); names(xs10)=c("S10");xxs10 <- stack(xs10)
xs20 <- as.data.frame(S20$ANPP); names(xs20)="S20";xxs20 <- stack(xs20)
xs30 <- as.data.frame(S30$ANPP); names(xs30)="S30";xxs30 <- stack(xs30)
xs40 <- as.data.frame(S40$ANPP); names(xs40)="S40";xxs40 <- stack(xs40)
xs50 <- as.data.frame(S50$ANPP); names(xs50)="S50";xxs50 <- stack(xs50)
xs60 <- as.data.frame(S60$ANPP); names(xs60)="S60";xxs60 <- stack(xs60)
xs70 <- as.data.frame(S70$ANPP); names(xs70)="S70";xxs70 <- stack(xs70)
anpp <- rbind(xxs10, xxs20, xxs30, xxs40, xxs50, xxs60, xxs70); names(anpp) <- c("NPPy","NPP")
xo10 <- as.data.frame(S10$AMSO);names(xo10)=("S10"); xxo10 <- stack(xo10)
xo20 <- as.data.frame(S20$AMSO);names(xo20)=("S20"); xxo20 <- stack(xo20)
xo30 <- as.data.frame(S30$AMSO);names(xo30)=("S30"); xxo30 <- stack(xo30)
xo40 <- as.data.frame(S40$AMSO);names(xo40)=("S40"); xxo40 <- stack(xo40)
xo50 <- as.data.frame(S50$AMSO);names(xo50)=("S50"); xxo50 <- stack(xo50)
xo60 <- as.data.frame(S60$AMSO);names(xo60)=("S60"); xxo60 <- stack(xo60)
xo70 <- as.data.frame(S70$AMSO);names(xo70)=("S70"); xxo70 <- stack(xo70)
amso <- rbind(xxo10, xxo20, xxo30, xxo40, xxo50, xxo60, xxo70); names(amso) <- c("SOMy","SOM")

xx<- cbind(anpp, amso); xx<-xx[,-2];names(xx) <- c("NPP","SOM","Scenarios");


##### 箱图
ggplot(data = xx) + geom_boxplot(aes(x = Scenarios, y = NPP))
ylim1 = boxplot.stats(xx$Scenarios)$stats[c(1,5)]
ppp <- ggplot(xx,aes(Scenarios,values,fill=Scenarios))+geom_boxplot(width=0.5)+
  stat_boxplot(geom = "errorbar", width = 0.3, size=0.75) + geom_boxplot(lwd=0.2)+
  coord_cartesian(ylim = ylim1*1.05)+
  theme(plot.title=element_text(size = 25),axis.text.x=element_text(size=15,angle=0),
        axis.text.y=element_text(size=15),axis.title.x=element_text(size = 23),
        axis.title.y=element_text(size = 23))+labs(x='Scenarios', y= 'Net primary production')
ppp+geom_signif(data=xx,mapping=aes(x=Scenarios,y=values), # 不同组别的显著性
                   comparisons = list(c("S10", "S20"), # 哪些组进行比较
                                      c("S20", "S30"),
                                      c("S30", "S40"),
                                      c("S10", "S50"),
                                      c("S50", "S60"),
                                      c("S60", "S70")),
                   annotation=c("*"), # 显著性差异做标记
                   test = "anova",# 检验的类型
                   map_signif_level=T, # T为显著性，F为p value
                   #tip_length=c(0,0,0,0,0,0), # 修改显著性线两端的长短
                   y_position = c(400-50,450-50,400-50,500-50,400-50,450-50), # 设置显著性线的位置高度
                   size=0.5, # 修改线的粗细
                   textsize = 8) # 修改*标记的大小

#####箱图 
library(ggplot2)
library(ggsignif)
ss <- c("AEVP","AEVT","ALAI","AMLT", "AMSO", "ANAB","ANEP", "ANLT","ANLV","ANPP","ANSL",
  "ANSO","AROF","ARON","ASLWD","ASLWT","ASRS","ATRAN","AWPB","AWS1","AWS2",
  "AWS3","AWS4","PREC","WTBA","WTIN","WTOT","DEM","SLOPE","TAVE","TMAX","TMIN","VWIN","PARM","RNMX","HURM","SOIL","VEG")
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","PREC(cm)","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","VEG")
for (s in 1:45) {

VV <-ss[s]
aa <- read.table(paste("D:\\结果\\1variable\\SX0_all\\",VV,".txt",sep=""))
as.factor(aa[,2]); 
aa[which(aa[,2]==10),2] <- "S10";aa[which(aa[,2]==20),2] <- "S20";aa[which(aa[,2]==30),2] <- "S30";aa[which(aa[,2]==40),2] <- "S40"
aa[which(aa[,2]==50),2] <- "S50";aa[which(aa[,2]==60),2] <- "S60";aa[which(aa[,2]==70),2] <- "S70";
aa[which(aa[,2]==52),2] <- "S52";aa[which(aa[,2]==51),2] <- "S51";
aa[which(aa[,2]==21),2] <- "S21";aa[which(aa[,2]==31),2] <- "S31";aa[which(aa[,2]==32),2] <- "S32";aa[which(aa[,2]==41),2] <- "S41";
aa[which(aa[,2]==42),2] <- "S42";aa[which(aa[,2]==43),2] <- "S43";aa[which(aa[,2]==65),2] <- "S65";aa[which(aa[,2]==61),2] <- "S61";
aa[which(aa[,2]==62),2] <- "S62";aa[which(aa[,2]==75),2] <- "S75";aa[which(aa[,2]==76),2] <- "S76";
kk = max(aa[,1])
#ggplot(data = aa) + geom_boxplot(aes(x = V2, y = V1))
ppp <- ggplot(aa,aes(V2,V1,fill=V2))+geom_boxplot(width=0.5,lwd=0.2,outlier.alpha = 0.01)+
  stat_boxplot(geom = "errorbar", width = 0.3, size=0.75) + 
  theme_bw()+
  theme(
    legend.position = "none",
    plot.title = element_text(color = 'black', size   = 16, hjust = 0.5),
        plot.subtitle = element_text(color = 'black', size   = 16,hjust = 0.5),
        plot.caption  = element_text(color = 'black', size   = 16,face = 'italic', hjust = 1),
        axis.text.x   = element_text(color = 'black', size = 16, angle = 0),
        axis.text.y   = element_text(color = 'black', size = 16, angle = 0),
        axis.title.x  = element_text(color = 'black', size = 16, angle = 0),
        axis.title.y  = element_text(color = 'black', size = 16, angle = 90),
        legend.title  = element_text(color = 'black', size  = 16),
        legend.text   = element_text(color = 'black', size   = 16),
        axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
        axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
        panel.border = element_rect(linetype = 'solid', size = 1.2,fill = NA))+ # 图四周框起来
  labs(x='Scenarios', y= sx[s])
pot <- ppp+geom_signif(data=aa,mapping=aes(x=V2,y=V1), # 不同组别的显著性
                comparisons = list(c("S10", "S20"), # 哪些组进行比较
                                   c("S20", "S30"),
                                   c("S30", "S40"),
                                   c("S50", "S60"),
                                   c("S60", "S70"),
                                   c("S10", "S50"),
                                   c("S20", "S60")),
                annotation=c("**"), # 显著性差异做标记
                test = "anova",# 检验的类型
                map_signif_level=T, # T为显著性，F为p value
                #tip_length=c(0,0,0,0,0,0), # 修改显著性线两端的长短
                y_position = c(kk,kk,kk,kk,kk,kk+0.08*kk,kk+0.12*kk), vjust = 1,# 设置显著性线的位置高度
                size=0.5, # 修改线的粗细
                textsize = 8) # 修改*标记的大小
# ggarrange(pot, ncol = 2, nrow = 1) 
ggsave(paste("D:\\结果\\1variable_pic\\",ss[s],".jpeg",sep=""), plot=pot, width = 10, height= 10, units = "cm")
}



#####
library("agricolae")
oneway<-aov(xx$NPP~xx$Scenarios,data = xx)
anova(oneway)
out <- LSD.test(oneway,"xx$Scenarios",p.adj="none")
out
mar<-out$groups
rownamemar<-row.names(mar)
newmar<-data.frame(rownamemar,mar$`xx$NPP`,mar$groups)
sort<-newmar[order(newmar$rownamemar),]
# 将groups的数据框按列名排序，目的是保持与均值标准差的数据一一对应
rowname<-row.names(out$means)
mean<-out$means[,1]
sd<-out$means[,2]
marker<-sort$mar.groups
plotdata<-data.frame(rowname,mean,sd,marker)
plotdata
ggplot(plotdata,aes(x=factor(rowname),y=mean))+
  geom_bar(position=position_dodge(0.6),width = 0.5,stat = "identity")+
  geom_errorbar(aes(ymin=mean,ymax=mean+sd),position=position_dodge(0.6),width=0.2)+
  geom_text(aes(x=factor(rowname),y=mean+sd+2.0,label=marker),size=6,position= position_dodge(0.6))+
  xlab("Scenarios")+ylab("NPP")+
  theme_bw()+theme(axis.title =element_text(size = 12),
                   axis.text =element_text(size=12),
                   panel.grid.major =element_line(color ="white"),
                   panel.grid.minor =element_line(colour = "white"),
                   axis.text.x =element_text(size = 12,angle=0,vjust=0,hjust=0,color = "black"),
                   axis.text.y =element_text(size = 12,color ="black"))
  #coord_cartesian(ylim = c(0,200),expand =TRUE)#的expand改为TRUE
