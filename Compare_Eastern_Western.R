##### Pettitt突变点检测
library('trend')
library('readxl')
##FVC
a <- as.data.frame(read_excel("D:\\LUCCPe\\LUC_ALL\\NDVI_FVC\\分区的箱图比较\\年降水和温度和FVC和NDVI.xlsx",col_names = T,sheet="残差分析"))

pettitt.test(a[22:55,20])  #降水-17  FVC-17*   NDVI-8*
pettitt.test(a[22:55,21])  #降水-15  FVC-17*   NDVI-13*
pettitt.test(a[22:55,7])  #降水-28  FVC-20*   NDVI-20*
pettitt.test(a[22:55,8])  #降水-15,17    FVC-20*     NDVI-12*


x=as.matrix(a[1:17,2]);y=as.matrix(a[1:17,3])   #东部
summary(lm(y~x))
x=as.matrix(a[18:34,2]);y=as.matrix(a[18:34,3]) #东部
summary(lm(y~x))
x=as.matrix(a[1:15,10]);y=as.matrix(a[1:15,11]) #中部
summary(lm(y~x))
x=as.matrix(a[16:34,10]);y=as.matrix(a[16:34,11]) #中部
summary(lm(y~x))
x=as.matrix(a[1:17,18]);y=as.matrix(a[1:17,19])  #西部
summary(lm(y~x))
x=as.matrix(a[18:34,18]);y=as.matrix(a[18:34,19])  #西部
summary(lm(y~x))
x=as.matrix(a[1:17,26]);y=as.matrix(a[1:17,27])  #全区
summary(lm(y~x))
x=as.matrix(a[18:34,26]);y=as.matrix(a[18:34,27])  #全区
summary(lm(y~x))
cor.test(x,y)
t.test(x,y)

plot(x=c(1982:2015),y=a[,1])
lines(x=c(1982:2015),a[,1],type = "l")
plot(x=c(1982:2015),y=a[,2])
lines(x=c(1982:2015),a[,2],type = "l")
plot(x=c(1982:2015),y=a[,3])
lines(x=c(1982:2015),a[,3],type = "l")

##NDVI
a <- as.data.frame(read_excel("D:\\LUCCPe\\LUC_ALL\\NDVI_FVC\\东中西年均_NDVI.xlsx",col_names = F))
a <-a
pettitt.test(a[,1])
a <- as.data.frame(read_excel("D:\\LUCCPe\\LUC_ALL\\NDVI_FVC\\东中西年均_NDVI.xlsx",col_names = F))
a <-a
pettitt.test(a[,2])
a <- as.data.frame(read_excel("D:\\LUCCPe\\LUC_ALL\\NDVI_FVC\\东中西年均_NDVI.xlsx",col_names = F))
a <-a
pettitt.test(a[,3])


plot(x=c(1982:2015),y=a[,1])
lines(x=c(1982:2015),a[,1],type = "l")
plot(x=c(1982:2015),y=a[,2])
lines(x=c(1982:2015),a[,2],type = "l")
plot(x=c(1982:2015),y=a[,3])
lines(x=c(1982:2015),a[,3],type = "l")


##
library(readxl)
library(ggplot2)
library(ggsignif)
aa <- as.data.frame(read_excel("D:\\LUCCPe\\LUC_ALL\\NDVI_FVC\\分区的箱图比较\\年降水和温度和FVC和NDVI.xlsx",col_names = T,sheet = "箱图_P_T_FVC"))
ggplot(aa,aes(GroupPRE,`Temperature(℃)`,fill = GroupPRE))+geom_boxplot(width=0.5,lwd=0.2,outlier.alpha = 0.01)+
  scale_fill_manual(values=c("dodgerblue3", "dodgerblue1","darkolivegreen3","darkolivegreen1","darkorchid3", "darkorchid1","goldenrod3","goldenrod1"))+
  stat_boxplot(geom = "errorbar", width = 0.15, size=0.5) + 
  theme_bw()+
  theme(legend.position = "none",
    plot.title = element_text(color = 'black', size   = 16, hjust = 0.5),
    plot.subtitle = element_text(color = 'black', size   = 16,hjust = 0.5),
    plot.caption  = element_text(color = 'black', size   = 16,face = 'italic', hjust = 1),
    axis.text.x   = element_text(color = 'black', size = 10, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10, angle = 90),
    legend.title  = element_text(color = 'black', size  = 16),
    legend.text   = element_text(color = 'black', size   = 16),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.5,fill = NA)) # 图四周框起来
