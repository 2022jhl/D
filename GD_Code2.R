library("ggplot2")
k<-4
mydata <- read.table("D:\\结果\\3_Typical_Steppe\\2_GD\\S30_TypicalSteppe\\alldata_change907P.txt")
sx <- c("ΔEVP(cm/year)","ΔEVT(cm/year)","ΔLAI","ΔMLT(g/m2/year)", "ΔSOM(g/kg)", "ΔNAB(g/m2/year)","ΔNEP(g/m2/year)", "ΔNLT(g/m2)","ΔNLV(g/m2)",
        "ΔNPP(g/m2/year)","ΔNSL(g/m2)","ΔTN(mg/kg)","ΔROF(cm/year)","ΔRON(cm/year)","ΔEWN(kg/m2)","ΔEWT(t/hm2)","ΔSRS(g/m2/year)",
        "ΔTRN(cm/year)","ΔWPB(MPa)","ΔVWC1(cm3/cm3)","ΔWS2(cm3/cm3)","ΔWS3(cm3/cm3)","ΔWS4(cm3/cm3)","ΔNNHUMR0","ΔNNPARM0","PREC(cm)","ΔNNRNMX0",
        "ΔNNTAVE0","ΔNNTMAX0","ΔNNTMIN0","ΔNNVWIN0","ΔWTBA(cm/year)","ΔWTIN(cm/year)","ΔWTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","ΔRNMX(W/m2)",
        "ΔHURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最高温NPP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TMAX(centidegree)`,y=`ΔNPP(g/m2/year)`))+geom_point(shape=1,alpha=0.4)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\平均温NPP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`ΔNPP(g/m2/year)`))+geom_point(shape=1,alpha=0.4)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\土壤水NPP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`WS1(cm3/cm3)`,y=`ΔNPP(g/m2/year)`))+geom_point(shape=1,alpha=0.4)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\降水NPP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔPrecipitation(mm)`,y=`ΔNPP(g/m2/year)`))+geom_point(shape=1,alpha=0.6)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最低温NPP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTMIN(centidegree)`,y=`ΔNPP(g/m2/year)`))+geom_point(shape=1,alpha=0.6)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\光和有效辐射NPP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔPARM(mol/m2/h)`,y=`ΔNPP(g/m2/year)`))+geom_point(shape=1,alpha=0.6)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\叶面积指数NPP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔLAI`,y=`ΔNPP(g/m2/year)`))+geom_point(shape=1,alpha=0.6)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\叶氮含量NPP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔNLV(g/m2)`,y=`ΔNPP(g/m2/year)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()
#####
#####
#####

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\降水TRN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔPrecipitation(mm)`,y=`ΔTRN(cm/year)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最高温TRN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTMAX(centidegree)`,y=`ΔTRN(cm/year)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最低温TRN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTMIN(centidegree)`,y=`ΔTRN(cm/year)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\平均温TRN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTAVE(centidegree)`,y=`ΔTRN(cm/year)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\净辐射TRN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔRNMX(W/m2)`,y=`ΔTRN(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\光合有效辐射TRN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`PARM(mol/m2/h)`,y=`ΔTRN(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\叶面积指数TRN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔLAI`,y=`ΔTRN(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\风速TRN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔWIND(m/s)`,y=`ΔTRN(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

#####
#####
#####

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\风速EVP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔWIND(m/s)`,y=`ΔEVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\叶面积指数EVP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔLAI`,y=`ΔEVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()



names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\降水EVP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔPrecipitation(mm)`,y=`ΔEVP(cm/year)`))+geom_point(shape=1,alpha=0.1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\平均温EVP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTAVE(centidegree)`,y=`ΔEVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最低温EVP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTMIN(centidegree)`,y=`ΔEVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\净辐射EVP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔRNMX(W/m2)`,y=`ΔEVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\土壤水EVP",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔWS1(cm3/cm3)`,y=`ΔEVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()
#####
#####
#####

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\风速ROF",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔWIND(m/s)`,y=`ΔROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\叶面积指数ROF",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔLAI`,y=`ΔROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()



names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\降水ROF",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`Precipitation(mm)`,y=`ΔROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最高温ROF",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TMAX(centidegree)`,y=`ΔROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最低温ROF",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TMIN(centidegree)`,y=`ΔROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\平均温ROF",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`ΔROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\净辐射温ROF",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`RNMX(W/m2)`,y=`ΔROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()
#####

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\降水WS1",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`Precipitation(mm)`,y=`ΔWS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\平均温WS1",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTAVE(centidegree)`,y=`ΔWS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最高温WS1",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTMAX(centidegree)`,y=`ΔWS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最低温WS1",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTMIN(centidegree)`,y=`ΔWS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\蒸腾WS1",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTRN(cm/year)`,y=`ΔWS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\径流WS1",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔROF(cm/year)`,y=`ΔWS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\径流WS1",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔROF(cm/year)`,y=`ΔWS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()
#####

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\土壤水SOM",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔVWC1(cm3/cm3)`,y=`ΔSOM(g/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\平均温SOM",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`ΔSOM(g/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最高温SOM",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TMAX(centidegree)`,y=`ΔSOM(g/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最低温SOM",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TMIN(centidegree)`,y=`ΔSOM(g/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\NPPSOM",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔNPP(g/m2/year)`,y=`ΔSOM(g/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\叶面积指数SOM",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔLAI`,y=`ΔSOM(g/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\降水SOM",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`Precipitation(mm)`,y=`ΔSOM(g/kg)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\叶面积指数TN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔLAI`,y=`ΔTN(mg/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\NPPTN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔNPP(g/m2/year)`,y=`ΔTN(mg/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\TN_NLV",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTN(mg/kg)`,y=`ΔNLV(g/m2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最高温TN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TMAX(centidegree)`,y=`ΔTN(mg/kg)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\最低温TN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TMIN(centidegree)`,y=`ΔTN(mg/kg)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\平均温TN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`ΔTN(mg/kg)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\土壤水TN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔVWC1(cm3/cm3)`,y=`ΔTN(mg/kg)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\有效降水_TN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`PREC(cm)`,y=`ΔTN(mg/kg)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()
##
#sx <- c("ΔEVP(cm/year)","ΔEVT(cm/year)","ΔLAI","ΔMLT(g/m2/year)", "ΔSOM(g/kg)", "ΔNAB(g/m2/year)","ΔNEP(g/m2/year)", "ΔNLT(g/m2)","ΔNLV(g/m2)",
#        "ΔNPP(g/m2/year)","ΔNSL(g/m2)","ΔTN(mg/kg)","ΔROF(cm/year)","ΔRON(cm/year)","ΔSLWD(kg/m2)","ΔEWN(kg/m2)","ΔEWT(t/hm2)",
#        "ΔTRN(cm/year)","ΔWPB(MPa)","ΔVWC1(cm3/cm3)","ΔWS2(cm3/cm3)","ΔWS3(cm3/cm3)","ΔWS4(cm3/cm3)","ΔNNHUMR0","ΔNNPARM0","PREC(cm)","ΔNNRNMX0",
#        "ΔNNTAVE0","ΔNNTMAX0","ΔNNTMIN0","ΔNNVWIN0","ΔWTBA(cm/year)","ΔWTIN(cm/year)","ΔWTOT(cm/year)",
#        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","ΔRNMX(W/m2)",
#        "ΔHURM(%)","SOIL","Precipitation(mm)","VEG")
#######
names(mydata)<-sx
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\叶面积指数_EWN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔLAI`,y=`ΔEWN(kg/m2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\NPP_EWN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔNPP(g/m2/year)`,y=`ΔEWN(kg/m2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\SOM_EWN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔSOM(g/kg)`,y=`ΔEWN(kg/m2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\TN_EWN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTN(mg/kg)`,y=`ΔEWN(kg/m2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\风速_EWN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`WIND(m/s)`,y=`ΔEWN(kg/m2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\土壤水_EWN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔVWC1(cm3/cm3)`,y=`ΔEWN(kg/m2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\降水_EWN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`Precipitation(mm)`,y=`ΔEWN(kg/m2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\平均温_EWN",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`ΔEWN(kg/m2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

##########

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\叶面积指数_EWT",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔLAI`,y=`ΔEWT(t/hm2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\NPP_EWT",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔNPP(g/m2/year)`,y=`ΔEWT(t/hm2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()


pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\SOM_EWT",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔSOM(g/kg)`,y=`ΔEWT(t/hm2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\TN_EWT",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔTN(mg/kg)`,y=`ΔEWT(t/hm2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\径流_EWT",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔROF(cm/year)`,y=`ΔEWT(t/hm2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\土壤水_EWT",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`ΔVWC1(cm3/cm3)`,y=`ΔEWT(t/hm2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\降水_EWT",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`Precipitation(mm)`,y=`ΔEWT(t/hm2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\平均温_EWT",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`ΔEWT(t/hm2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\坡度_EWT",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(mydata,aes(x=`SLOPE(degree)`,y=`ΔEWT(t/hm2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()

##################################################################################################################
library(GD)
discmethod <- c("equal","natural","quantile","geometric","sd")
discitv <- c(3:7)
mydata <- read.table("D:\\结果\\3_Typical_Steppe\\2_GD\\S30_TypicalSteppe\\alldata_change907P.txt")
sx <- c("ΔEVP(cm/year)","ΔEVT(cm/year)","ΔLAI","ΔMLT(g/m2/year)", "ΔSOM(g/kg)", "ΔNAB(g/m2/year)","ΔNEP(g/m2/year)", "ΔNLT(g/m2)","ΔNLV(g/m2)",
        "ΔNPP(g/m2/year)","ΔNSL(g/m2)","ΔTN(mg/kg)","ΔROF(cm/year)","ΔRON(cm/year)","ΔEWN(kg/m2)","ΔEWT(t/hm2)","ΔSRS(g/m2/year)",
        "ΔTRN(cm/year)","ΔWPB(MPa)","ΔVWC1(cm3/cm3)","ΔWS2(cm3/cm3)","ΔWS3(cm3/cm3)","ΔWS4(cm3/cm3)","ΔNNHUMR0","ΔNNPARM0","ΔPREC(cm)","ΔNNRNMX0",
        "ΔNNTAVE0","ΔNNTMAX0","ΔNNTMIN0","ΔNNVWIN0","ΔWTBA(cm/year)","ΔWTIN(cm/year)","ΔWTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","ΔRNMX(W/m2)",
        "ΔHURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata) <- sx
ndvigdm1 <- gdm(`ΔEWN(kg/m2)` ~ `ΔLAI` + `ΔSOM(g/kg)` +`ΔNPP(g/m2/year)`+`ΔTN(mg/kg)`+`TMAX(centidegree)` +`TAVE(centidegree)`+`TMIN(centidegree)`+
                 `ΔVWC1(cm3/cm3)` +`ΔPREC(cm)`+`WIND(m/s)`+`Precipitation(mm)`+
                 `DEM(m)`+`SLOPE(degree)`+SOIL,
               continuous_variable = c("ΔLAI","ΔSOM(g/kg)","ΔNPP(g/m2/year)","ΔTN(mg/kg)","TMAX(centidegree)","TAVE(centidegree)",
                                       "TMIN(centidegree)","ΔVWC1(cm3/cm3)","ΔPREC(cm)","WIND(m/s)","Precipitation(mm)"),
               data = mydata,    ##注意，连续变量不包括因变量
               discmethod = discmethod, discitv = discitv) # ~3s
plot(ndvigdm1)

ndvigdm2 <- gdm(`ΔEWT(t/hm2)` ~ `ΔLAI` + `ΔSOM(g/kg)` +`ΔNPP(g/m2/year)`+`ΔTN(mg/kg)`+`TMAX(centidegree)` +`TAVE(centidegree)`+`TMIN(centidegree)`+
                  `ΔVWC1(cm3/cm3)` +`ΔPREC(cm)`+`WIND(m/s)`+`Precipitation(mm)`+ `ROF(cm/year)`+
                  `DEM(m)`+`SLOPE(degree)`+SOIL,
                continuous_variable = c("ΔLAI","ΔSOM(g/kg)","ΔNPP(g/m2/year)","ΔTN(mg/kg)","TMAX(centidegree)","TAVE(centidegree)",
                                        "TMIN(centidegree)","ΔVWC1(cm3/cm3)","ΔPREC(cm)","WIND(m/s)","Precipitation(mm)","ROF(cm/year)"),
                data = mydata,    ##注意，连续变量不包括因变量
                discmethod = discmethod, discitv = discitv) # ~3s
plot(ndvigdm2)

rk_nd <- ndvigdm[[3]]
plot(rk_nd)

dt <- as.data.frame(rk_nd)
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD_2\\XXXXX",".jpeg",sep="") ####
jpeg(pth,width = 400*2, height = 260*2,quality = 600)
ggplot(data=dt,aes(x=`ΔLAI.itv`,y=`ΔLAI.meanrisk`))+geom_bar(stat = 'identity')+coord_flip()+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 5*k, angle = 75,vjust = 0.5,hjust = 0.5),
    axis.text.y   = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 10*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 10*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 0.6*k,fill = NA)) # 图四周框起来
dev.off()
