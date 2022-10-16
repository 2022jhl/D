nn<-dir("D:\\ģ����֤\\getdata.csv")
for (i in 7:12) {
  idx<-which(nn==paste(i,".txt",sep = ""))
  idx1<-which(nn==paste(i,"-1",".txt",sep = ""))
  nnm<-paste("D:\\ģ����֤\\getdata.csv",nn[idx],sep="")
  nnm1<-paste("D:\\ģ����֤\\getdata.csv",nn[idx1],sep="")
  aa<-read.table(nnm)
  bb<-read.table(nnm1)
  aa<-data.frame(aa,NA)
  aa$NA.<-c("��ʵֵ")
  bb<-data.frame(bb,NA)
  bb$NA.<-c("Ԥ��ֵ")
  aa<-data.frame(aa,NA)
  aa$NA..1<-i
  bb<-data.frame(bb,NA)
  bb$NA..1<-i
  cc<-rbind(aa,bb)
  dd<-rbind(dd,cc)
}
write.csv(dd,"D:\\ģ����֤\\getdata\\getdata.csv")


library(ggplot2)
dd<-read.csv("D:\\ģ����֤\\getdata.csv")

colnames(dd)[3:4]<-c("group","xxx")
p1<-ggplot()+
  geom_point(data=dd[which(dd$xxx==1 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==1 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  xlim(1975,1990)

p2<-ggplot()+
  geom_point(data=dd[which(dd$xxx==2 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==2 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  xlim(1960,1990)

p3<-ggplot()+
  geom_point(data=dd[which(dd$xxx==3 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==3 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  xlim(1960,2000)

p4<-ggplot()+
  geom_point(data=dd[which(dd$xxx==4 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==4 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  xlim(1980,2000)

p5<-ggplot()+
  geom_point(data=dd[which(dd$xxx==5 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==5 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  xlim(1986,1996)

p6<-ggplot()+
  geom_point(data=dd[which(dd$xxx==6 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==6 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  xlim(1986,1994)

p7<-ggplot()+
  geom_point(data=dd[which(dd$xxx==7 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==7 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  scale_x_continuous(limits = c(1983,1992),breaks = seq(1983,1992,3))

p8<-ggplot()+
  geom_point(data=dd[which(dd$xxx==8 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==8 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  xlim(1984,1992)

p9<-ggplot()+
  geom_point(data=dd[which(dd$xxx==9 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==9 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  xlim(1984,1990)

p10<-ggplot()+
  geom_point(data=dd[which(dd$xxx==10 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==10 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  xlim(1982,1990)

p11<-ggplot()+
  geom_point(data=dd[which(dd$xxx==11 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==11 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  xlim(1987,1991)

p12<-ggplot()+
  geom_point(data=dd[which(dd$xxx==12 & dd$group=="��ʵֵ"),],aes(V1,V2),color=c("red"),size=2.5)+
  geom_line(data = dd[which(dd$xxx==12 & dd$group=="Ԥ��ֵ"),],aes(V1,V2),color=c("black"),size=1)+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        axis.text = element_text(size = 15,color = "black"),axis.title = element_blank(),
        panel.border = element_rect(size = 1.5))+
  xlim(1984,1994)

library(cowplot)
plot_grid(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,
          ncol = 4, align = "v",label_x = 0.08,label_y = 0.95)

#plot_grid(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,labels = c("a R2=0.96","b R2=0.99","c R2=0.99","d R2=0.97","e R2=0.91","f R2=0.99",
#                                                            "g R2=0.71","h R2=0.84","i R2=0.74","j R2=0.55","k R2=0.68","l R2=0.32"),
#          ncol = 4, align = "v",label_x = 0.08,label_y = 0.95)








data <- read.csv("D:\\ģ����֤\\Getdata(1).csv")
ggplot(data,aes(X,Y,shape=����))+
  geom_point(size=3)+
  scale_shape_manual(values = c(19,17,21,15,24,18))+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+
  scale_x_continuous(breaks = c(0,20,40,60,80,100,120,140))+
  scale_y_continuous(breaks = c(0,20,40,60,80,100,120,140))+
  theme(axis.text  = element_text(size=15,family = "serif",face = "bold"),axis.title = element_text(size=15))+
  xlab("")+
  ylab(expression(paste("Predicted soil erosion(g",L^{-1},")")))+
  geom_abline(intercept = 0,slope = 1,size=1)




data<-read.csv("D:\\ģ����֤\\Getdata(1).csv")
library(ggplot2)
p<-ggplot(data,aes(X,Y,shape=����,color=����))+
  geom_point(size=3)+
  scale_shape_manual(values = c(19,17,21,15,24,18))+
  theme_bw()+
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank())+
  scale_x_continuous(breaks = c(0,20,40,60,80,100,120,140))+
  scale_y_continuous(breaks = c(0,20,40,60,80,100,120,140))+
  theme(axis.text  = element_text(size=15,family = "serif",face = "bold"),axis.title = element_text(size=15))+
  xlab(expression(paste("��ʴ�۲�ֵ(g ",L^{-1},")")))+
  ylab(expression(paste("��ʴģ��ֵ(g ",L^{-1},")")))+
  geom_abline(intercept = 0,slope = 1,size=1,color=c("red"))

ggsave(
  filename = "p.bmp", # ������ļ����ơ�ͨ����׺����������ʲô��ʽ��ͼƬ
  width = 10,             # ��
  height = 7,            # ��
  units = "in",          # ��λ
  dpi = 300              # �ֱ���DPI
)



