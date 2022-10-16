#####��ͼ 
library(ggplot2)
library(ggsignif)
library("agricolae")
ss <- c("AEVP","AEVT","ALAI","AMLT", "AMSO", "ANAB","ANEP", "ANLT","ANLV","ANPP","ANSL",#��1-11��
        "ANSO","AROF","ARON","ASLWD","ASLWT","ASRS","ATRAN","AWPB","AWS1","AWS2",       #��12-21��
        "AWS3","AWS4","PREC","WTBA","WTIN","WTOT","DEM","SLOPE","TAVE","TMAX","TMIN","VWIN","PARM","RNMX","HURM","SOIL","VEG")
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","EWN(kg/m2)","EWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","VWC1(cm3/cm3)","VWC2(cm3/cm3)","VWC3(cm3/cm3)","VWC4(cm3/cm3)","PREC(cm)","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","VEG")
for (s in 12) {
  
  VV <-ss[s]
  a0 <- read.table(paste("D:\\���\\1variable\\SX0_all\\",VV,".txt",sep=""))
  aa<- a0[which(a0[,2]==10 | a0[,2]==20  | a0[,2]==30 | a0[,2]==40 | a0[,2]==50 | a0[,2]==60 | a0[,2]==70),]
  #idx <- which(aa[,1]> (-50))
  #aa <- aa[idx,]
  as.factor(aa[,2]); 
  aa[which(aa[,2]==10),2] <- "S1-S0";aa[which(aa[,2]==20),2] <- "S2-S0";aa[which(aa[,2]==30),2] <- "S3-S0";aa[which(aa[,2]==40),2] <- "S4-S0"
  aa[which(aa[,2]==50),2] <- "S5-S0";aa[which(aa[,2]==60),2] <- "S6-S0";aa[which(aa[,2]==70),2] <- "S7-S0";
  aa[which(aa[,2]==52),2] <- "S5-S2";aa[which(aa[,2]==51),2] <- "S5-S1";
  aa[which(aa[,2]==21),2] <- "S2-S1";aa[which(aa[,2]==31),2] <- "S3-S1";aa[which(aa[,2]==32),2] <- "S3-S2";aa[which(aa[,2]==41),2] <- "S4-S1";
  aa[which(aa[,2]==42),2] <- "S4-S2";aa[which(aa[,2]==43),2] <- "S4-S3";aa[which(aa[,2]==65),2] <- "S6-S5";aa[which(aa[,2]==61),2] <- "S6-S1";
  aa[which(aa[,2]==62),2] <- "S6-S2";aa[which(aa[,2]==75),2] <- "S7-S5";aa[which(aa[,2]==76),2] <- "S7-S6";
  
  kk = max(aa[,1])+0.05
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
      axis.line.y = element_line(color = 'black', linetype = 'solid'), # y��������
      axis.line.x = element_line (color = 'black',linetype = 'solid'), # x��������
      panel.border = element_rect(linetype = 'solid', size = 1.2,fill = NA))+ # ͼ���ܿ�����
    labs(x='���龰��S1-S7����2015�꣨S0���Ĳ�ֵ', y= sx[s])#+ylim(-100,200)
  
  pot <- ppp+geom_signif(data=aa,mapping=aes(x=V2,y=V1), # ��ͬ����������
                         comparisons = list(c("S1-S0", "S2-S0"), # ��Щ����бȽ�
                                            c("S2-S0", "S3-S0"),
                                            c("S3-S0", "S4-S0"),
                                            c("S5-S0", "S6-S0"),
                                            c("S5-S0", "S7-S0"),
                                            c("S2-S0", "S5-S0"),
                                            c("S2-S0", "S6-S0")),
                         annotation=c("**"), # �����Բ��������
                         test = "anova",# ���������
                         map_signif_level=T, # TΪ�����ԣ�FΪp value
                         #tip_length=c(0,0,0,0,0,0), # �޸������������˵ĳ���
                         y_position = c(kk,kk,kk,kk,kk,kk+0.08*kk,kk+0.12*kk), vjust = 1,# �����������ߵ�λ�ø߶�
                         size=0.5, # �޸��ߵĴ�ϸ
                         textsize = 8) # �޸�*��ǵĴ�С
  # ggarrange(pot, ncol = 2, nrow = 1) 
  #ggsave(paste("D:\\���\\1variable_pic\\",ss[s],".jpeg",sep=""), plot=pot, width = 10, height= 10, units = "cm")
  
  ##### �����ֵ  
  oneway<-aov(aa$V1~aa$V2,data = aa)
  anova(oneway)
  out <- LSD.test(oneway,"aa$V2",p.adj="none")
  out
  mar<-out$groups
  rownamemar<-row.names(mar)
  newmar<-data.frame(rownamemar,mar$`aa$V1`,mar$groups)
  sort<-newmar[order(newmar$rownamemar),]
  # ��groups�����ݿ���������Ŀ���Ǳ������ֵ��׼�������һһ��Ӧ
  rowname<-row.names(out$means)
  mean<-out$means[,1]
  sd<-out$means[,2]
  marker<-sort$mar.groups
  plotdata<-data.frame(rowname,mean,sd,marker)
  pot2 <- pot + stat_summary(fun ="mean", geom="point",pch=20,color="black", size=4)
  ggsave(paste("D:\\���\\1variable_pic_S10\\",ss[s],"_.jpeg",sep=""), plot=pot2, width = 20, height= 15, units = "cm")
}
####



#####Ȩ��
library(ggplot2)
library(ggsignif)
library("agricolae")
ss <- c("AEVP","AEVT","ALAI","AMLT", "AMSO", "ANAB","ANEP", "ANLT","ANLV","ANPP","ANSL",#��1-11��
        "ANSO","AROF","ARON","ASLWD","ASLWT","ASRS","ATRAN","AWPB","AWS1","AWS2",       #��12-21��
        "AWS3","AWS4","PREC","WTBA","WTIN","WTOT","DEM","SLOPE","TAVE","TMAX","TMIN","VWIN","PARM","RNMX","HURM","SOIL","VEG") #��22-38��
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","EWN(kg/m2)","EWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","VWC1(cm3/cm3)","VWC2(cm3/cm3)","VWC3(cm3/cm3)","VWC4(cm3/cm3)","PREC(cm)","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","VEG")
sj <- c("TRN","LAI","SOM","TN","NEP","NPP","ROF","VWC","EWN","EWT")
bb<-as.data.frame(matrix(NaN,nrow=808759,ncol=38));names(bb)<- ss
for (s in 1:38) {
  
  VV <-ss[s]
  a0 <- read.table(paste("D:\\���\\1variable\\SX0_all\\",VV,".txt",sep=""))
  aa<- a0[which(a0[,2]==10 | a0[,2]==20  | a0[,2]==30 | a0[,2]==40 | a0[,2]==50 | a0[,2]==60 | a0[,2]==70),]
  #aa<- a0[which(a0[,2]==10),]
  bb[,s] <- aa[,1]
  #idx <- which(aa[,1]> (-50))
}
bb[,39] <- aa[,2]; 

###

##

library("PerformanceAnalytics")
cc <- bb[which(bb[,39]==10),]
my_data <- cc[,c(18,3,5,12,7,10,14,20,15,16)]
names(my_data) <- sj
pth <- paste("D:\\���\\4_TradeOff\\s10",".jpeg",sep="") ####
jpeg(pth,quality = 600)
chart.Correlation(my_data, histogram=FALSE, method = "pearson",pch=1)
dev.off()
##
cc <- bb[which(bb[,39]==20),]
my_data <- cc[,c(18,3,5,12,7,10,14,20,15,16)]
names(my_data) <- sj
pth <- paste("D:\\���\\4_TradeOff\\s20",".jpeg",sep="") ####
jpeg(pth,quality = 600)
chart.Correlation(my_data, histogram=FALSE, method = "pearson",pch=1)
dev.off()
##
cc <- bb[which(bb[,39]==30),]
my_data <- cc[,c(18,3,5,12,7,10,14,20,15,16)]
names(my_data) <- sj
pth <- paste("D:\\���\\4_TradeOff\\s30",".jpeg",sep="") ####
jpeg(pth,quality = 600)
chart.Correlation(my_data, histogram=FALSE, method = "pearson",pch=1)
dev.off()
##
cc <- bb[which(bb[,39]==40),]
my_data <- cc[,c(18,3,5,12,7,10,14,20,15,16)]
names(my_data) <- sj
pth <- paste("D:\\���\\4_TradeOff\\s40",".jpeg",sep="") ####
jpeg(pth,quality = 600)
chart.Correlation(my_data, histogram=FALSE, method = "pearson",pch=1)
dev.off()
##
cc <- bb[which(bb[,39]==50),]
my_data <- cc[,c(18,3,5,12,7,10,14,20,15,16)]
names(my_data) <- sj
pth <- paste("D:\\���\\4_TradeOff\\s50",".jpeg",sep="") ####
jpeg(pth,quality = 600)
chart.Correlation(my_data, histogram=FALSE, method = "pearson",pch=1)
dev.off()
##
cc <- bb[which(bb[,39]==60),]
my_data <- cc[,c(18,3,5,12,7,10,14,20,15,16)]
names(my_data) <- sj
pth <- paste("D:\\���\\4_TradeOff\\s60",".jpeg",sep="") ####
jpeg(pth,quality = 600)
chart.Correlation(my_data, histogram=FALSE, method = "pearson",pch=1)
dev.off()
##
cc <- bb[which(bb[,39]==70),]
my_data <- cc[,c(18,3,5,12,7,10,14,20,15,16)]
names(my_data) <- sj
pth <- paste("D:\\���\\4_TradeOff\\s70",".jpeg",sep="") ####
jpeg(pth,quality = 600)
chart.Correlation(my_data, histogram=FALSE, method = "pearson",pch=1)
dev.off()


##
cp <- function(SCE,NNN){
library(corrplot)
cc <- bb[which(bb[,39]==SCE),]
my_data <- cc[,c(18,3,5,12,7,10,14,20,15,16)]
names(my_data) <- sj
M = cor(my_data)
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
return(corrplot(M, method = "shade", type = {"upper"}, shade.col = NA, 
                tl.col = "black", tl.srt = 0, col = col(200), addCoef.col = "black", 
                cl.pos = NULL,title = NNN,mar = c(0,0,1,0)))
}
cp1 <- cp(SCE=10,NNN="��������(S1(-20%)-S0)")
cp2 <- cp(SCE=20,NNN="��������(S2(-40%)-S0)")
cp3 <- cp(SCE=30,NNN="��������(S3(-60%)-S0)")
cp4 <- cp(SCE=40,NNN="ȫ���˸�(S4(-100%)-S0)")
cp5 <- cp(SCE=50,NNN="��̬����(S5(-20%)-S0)")
cp6 <- cp(SCE=60,NNN="��̬����(S6(-40%)-S0)")
cp7 <- cp(SCE=70,NNN="��̬����(S7(45%)-S0)")

