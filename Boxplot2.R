#####箱图 
library(ggplot2)
library(ggsignif)
library("agricolae")
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
  a0 <- read.table(paste("D:\\结果\\1variable\\SX0_all\\",VV,".txt",sep=""))
  aa<- a0[which(a0[,2]==10 | a0[,2]==20 | a0[,2]==30 |a0[,2]==40 | a0[,2]==50 |a0[,2]==60 |a0[,2]==70 ),]
  aa <- aa[which(aa[,1] > (-50)),]
  as.factor(aa[,2]); 
  aa[which(aa[,2]==10),2] <- "S1-S0";aa[which(aa[,2]==20),2] <- "S2-S0";aa[which(aa[,2]==30),2] <- "S3-S0";aa[which(aa[,2]==40),2] <- "S4-S0"
  aa[which(aa[,2]==50),2] <- "S5-S0";aa[which(aa[,2]==60),2] <- "S6-S0";aa[which(aa[,2]==70),2] <- "S7-S0";
  aa[which(aa[,2]==52),2] <- "S5-S2";aa[which(aa[,2]==51),2] <- "S5-S1";
  aa[which(aa[,2]==21),2] <- "S2-S1";aa[which(aa[,2]==31),2] <- "S3-S1";aa[which(aa[,2]==32),2] <- "S3-S2";aa[which(aa[,2]==41),2] <- "S4-S1";
  aa[which(aa[,2]==42),2] <- "S4-S2";aa[which(aa[,2]==43),2] <- "S4-S3";aa[which(aa[,2]==65),2] <- "S6-S5";aa[which(aa[,2]==61),2] <- "S6-S1";
  aa[which(aa[,2]==62),2] <- "S6-S2";aa[which(aa[,2]==75),2] <- "S7-S5";aa[which(aa[,2]==76),2] <- "S7-S6";
  
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
    labs(x='Scenarios', y= sx[s])#+ylim(-100,200)

  pot <- ppp+geom_signif(data=aa,mapping=aes(x=V2,y=V1), # 不同组别的显著性
                         comparisons = list(c("S1-S0", "S2-S0"), # 哪些组进行比较
                                            c("S2-S0", "S3-S0"),
                                            c("S3-S0", "S4-S0"),
                                            c("S5-S0", "S6-S0"),
                                            c("S6-S0", "S7-S0"),
                                            c("S1-S0", "S5-S0"),
                                            c("S2-S0", "S6-S0")),
                         annotation=c("**"), # 显著性差异做标记
                         test = "anova",# 检验的类型
                         map_signif_level=T, # T为显著性，F为p value
                         #tip_length=c(0,0,0,0,0,0), # 修改显著性线两端的长短
                         y_position = c(kk,kk,kk,kk,kk,kk+0.08*kk,kk+0.12*kk), vjust = 1,# 设置显著性线的位置高度
                         size=0.5, # 修改线的粗细
                         textsize = 8) # 修改*标记的大小
  # ggarrange(pot, ncol = 2, nrow = 1) 
  #ggsave(paste("D:\\结果\\1variable_pic\\",ss[s],".jpeg",sep=""), plot=pot, width = 10, height= 10, units = "cm")
  
##### 计算均值  
  oneway<-aov(aa$V1~aa$V2,data = aa)
  anova(oneway)
  out <- LSD.test(oneway,"aa$V2",p.adj="none")
  out
  mar<-out$groups
  rownamemar<-row.names(mar)
  newmar<-data.frame(rownamemar,mar$`aa$V1`,mar$groups)
  sort<-newmar[order(newmar$rownamemar),]
  # 将groups的数据框按列名排序，目的是保持与均值标准差的数据一一对应
  rowname<-row.names(out$means)
  mean<-out$means[,1]
  sd<-out$means[,2]
  marker<-sort$mar.groups
  plotdata<-data.frame(rowname,mean,sd,marker)
pot2 <- pot + stat_summary(fun ="mean", geom="point",pch=20,color="black", size=4)
ggsave(paste("D:\\结果\\1variable_pic_S10\\",ss[s],".jpeg",sep=""), plot=pot2, width = 20, height= 15, units = "cm")
}
