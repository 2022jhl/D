library("GD")
mydata <- read.table("D:\\结果\\2_GD\\S30_TypicalSteppe\\alldata_change907.txt")
names(mydata) <- c("AEVP","AEVT","ALAI","AMLT", "AMSO", "ANAB","ANEP", "ANLT","ANLV","ANPP","ANSL",
        "ANSO","AROF","ARON","ASLWD","ASLWT","ASRS","ATRAN","AWPB","AWS1","AWS2",
        "AWS3","AWS4","HUMR0","PARM0","PREC","RNMX0","TAVE0","TMAX0","TMIN0","VWIN0","WTBA","WTIN","WTOT",
        "DEM","SLOPE","TAVE","TMAX","TMIN","VWIN","PARM","RNMX","HUMR","SOIL","VEG")

#AEVP,AEVT,ALAI,AMLT, AMSO, ANAB,ANEP, ANLT,ANLV,ANPP,ANSL,
#ANSO,AROF,ARON,ASLWD,ASLWT,ASRS,ATRAN,AWPB,AWS1,AWS2,
#AWS3,AWS4,HUMR0,PARM0,PREC,RNMX0,TAVE0,TMAX0,TMIN0,VWIN0,WTBA,WTIN,WTOT,
#DEM,SLOPE,TAVE,TMAX,TMIN,VWIN,PARM,RNMX,HURM,SOIL,VEG

discmethod <- c("equal","natural","quantile","geometric","sd")
discitv <- c(3:7)
ndvigdm <- gdm(ANPP ~ ALAI + PREC + AWPB + TMAX +TMIN+TAVE+ AWS1 +AWS2 + AWS3+AWS4+ DEM + SLOPE + VWIN+
                 RNMX + HUMR + SOIL,
               continuous_variable = c("ALAI","PREC","AWPB","TMAX","TMIN","TAVE","AWS1","AWS2","AWS3",
                                       "AWS4","DEM","SLOPE","VWIN","RNMX","HUMR"),
               data = mydata,
               discmethod = discmethod, discitv = discitv) # ~3s
ndvigdm
plot(ndvigdm)
p1 <- ndvigdm[[3]]
pth <- paste("D:\\结果\\2_GD\\S30_TypicalSteppe\\S30_TypicalSteppe",".jpeg",sep="") ####
jpeg(pth,width = 480*12, height = 480*8,pointsize = 12*6,quality = 900)
plot(p1)
dev.off()


#####  加入了降水
library("GD")
mydata <- read.table("D:\\结果\\2_GD\\S30_TypicalSteppe\\alldata_change907P.txt")
names(mydata) <- c("AEVP","AEVT","ALAI","AMLT", "AMSO", "ANAB","ANEP", "ANLT","ANLV","ANPP","ANSL",
                   "ANSO","AROF","ARON","ASLWD","ASLWT","ASRS","ATRAN","AWPB","AWS1","AWS2",
                   "AWS3","AWS4","HUMR0","PARM0","PREC","RNMX0","TAVE0","TMAX0","TMIN0","VWIN0","WTBA","WTIN","WTOT",
                   "DEM","SLOPE","TAVE","TMAX","TMIN","VWIN","PARM","RNMX","HUMR","SOIL","ZPREC","VEG")

#AEVP,AEVT,ALAI,AMLT, AMSO, ANAB,ANEP, ANLT,ANLV,ANPP,ANSL,
#ANSO,AROF,ARON,ASLWD,ASLWT,ASRS,ATRAN,AWPB,AWS1,AWS2,
#AWS3,AWS4,HUMR0,PARM0,PREC,RNMX0,TAVE0,TMAX0,TMIN0,VWIN0,WTBA,WTIN,WTOT,
#DEM,SLOPE,TAVE,TMAX,TMIN,VWIN,PARM,RNMX,HUMR,SOIL,ZPREC,VEG

discmethod <- c("equal","natural","quantile","geometric","sd")
discitv <- c(3:7)
ndvigdm1 <- gdm(ANPP ~ AEVP+AEVT+ALAI+AMLT+ AMSO+ ANAB+ANEP+ ANLT+ANLV+ANSL+ANSO+AROF+ARON+ASLWD+ASLWT+ASRS+ATRAN+AWPB+AWS1+AWS2+AWS3+AWS4+
                 PREC+DEM+SLOPE+TAVE+TMAX+TMIN+VWIN+PARM+RNMX+HUMR+ZPREC+SOIL, #38
               continuous_variable = c("ANPP","AEVP","AEVT","ALAI","AMLT", "AMSO", "ANAB","ANEP", "ANLT","ANLV","ANSL",
                                       "ANSO","AROF","ARON","ASLWD","ASLWT","ASRS","ATRAN","AWPB","AWS1","AWS2",
                                       "AWS3","AWS4","PREC","DEM","SLOPE","TAVE","TMAX","TMIN","VWIN","PARM","RNMX","HUMR","ZPREC"),#37
               data = mydata,
               discmethod = discmethod, discitv = discitv) # ~3s
ndvigdm1
plot(ndvigdm1)
p1 <- ndvigdm[[3]]
pth <- paste("D:\\结果\\2_GD\\S30_TypicalSteppe\\S30_TypicalSteppe",".jpeg",sep="") ####
jpeg(pth,width = 480*12, height = 480*8,pointsize = 12*6,quality = 900)
plot(p1)
dev.off()



#####  加入了降水
library("GD")
mydata <- read.table("D:\\结果\\3_Typical_Steppe\\2_GD\\S30_TypicalSteppe\\alldata_change907P.txt")
names(mydata) <- c("AEVP","AEVT","ALAI","AMLT", "AMSO", "ANAB","ANEP", "ANLT","ANLV","ANPP","ANSL",
                   "ANSO","AROF","ARON","ASLWD","ASLWT","ASRS","ATRAN","AWPB","AWS1","AWS2",
                   "AWS3","AWS4","HUMR0","PARM0","PREC","RNMX0","TAVE0","TMAX0","TMIN0","VWIN0","WTBA","WTIN","WTOT",
                   "DEM","SLOPE","TAVE","TMAX","TMIN","VWIN","PARM","RNMX","HUMR","SOIL","ZPREC","VEG")

#AEVP,AEVT,ALAI,AMLT, AMSO, ANAB,ANEP, ANLT,ANLV,ANPP,ANSL,
#ANSO,AROF,ARON,ASLWD,ASLWT,ASRS,ATRAN,AWPB,AWS1,AWS2,
#AWS3,AWS4,HUMR0,PARM0,PREC,RNMX0,TAVE0,TMAX0,TMIN0,VWIN0,WTBA,WTIN,WTOT,
#DEM,SLOPE,TAVE,TMAX,TMIN,VWIN,PARM,RNMX,HUMR,SOIL,ZPREC,VEG

discmethod <- c("equal","natural","quantile","geometric","sd")
discitv <- c(3:7)
ndvigdm <- gdm(ANPP ~ AEVP+AEVT+ALAI+TAVE+ANLV+ZPREC+PREC+AWPB + TMAX +TMIN + AWS1 +AWS2 + DEM + SLOPE + VWIN+
                 RNMX + HUMR + SOIL, 
               continuous_variable = c("ANPP","AEVP","AEVT","ALAI","TAVE","ANLV","ZPREC","PREC","AWPB","TMAX","TMIN","AWS1","AWS2","DEM","SLOPE","VWIN","RNMX","HUMR"),
               data = mydata,
               discmethod = discmethod, discitv = discitv) # ~3s
ndvigdm
plot(ndvigdm)
p1 <- ndvigdm[[3]]
pth <- paste("D:\\结果\\2_GD\\S30_TypicalSteppe\\S30_TypicalSteppe",".jpeg",sep="") ####
jpeg(pth,width = 480*12, height = 480*8,pointsize = 12*6,quality = 900)
plot(p1)
dev.off()

#####  加入了降水
library("GD")
mydata <- read.table("D:\\结果\\3_Typical_Steppe\\2_GD\\S30_TypicalSteppe\\alldata_change907P.txt")
names(mydata) <- c("AEVP","AEVT","ALAI","AMLT", "AMSO", "ANAB","ANEP", "ANLT","ANLV","ANPP","ANSL",
                   "ANSO","AROF","ARON","ASLWD","ASLWT","ASRS","ATRAN","AWPB","AWS1","AWS2",
                   "AWS3","AWS4","HUMR0","PARM0","PREC","RNMX0","TAVE0","TMAX0","TMIN0","VWIN0","WTBA","WTIN","WTOT",
                   "DEM","SLOPE","TAVE","TMAX","TMIN","VWIN","PARM","RNMX","HUMR","SOIL","ZPREC","VEG")

#AEVP,AEVT,ALAI,AMLT, AMSO, ANAB,ANEP, ANLT,ANLV,ANPP,ANSL,
#ANSO,AROF,ARON,ASLWD,ASLWT,ASRS,ATRAN,AWPB,AWS1,AWS2,
#AWS3,AWS4,HUMR0,PARM0,PREC,RNMX0,TAVE0,TMAX0,TMIN0,VWIN0,WTBA,WTIN,WTOT,
#DEM,SLOPE,TAVE,TMAX,TMIN,VWIN,PARM,RNMX,HUMR,SOIL,ZPREC,VEG

discmethod <- c("equal","natural","quantile","geometric","sd")
discitv <- c(3:7)
ndvigdm <- gdm(ANPP ~ TAVE, 
               continuous_variable = c("ANPP","TAVE"),
               data = mydata,
               discmethod = discmethod, discitv = discitv) # ~3s
ndvigdm
plot(ndvigdm)
p1 <- ndvigdm[[3]]
pth <- paste("D:\\结果\\2_GD\\S30_TypicalSteppe\\S30_TypicalSteppe",".jpeg",sep="") ####
jpeg(pth,width = 480*12, height = 480*8,pointsize = 12*6,quality = 900)
plot(p1)
dev.off()
######PLOT
plot(mydata)
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
ggplot(mydata,aes(x=`TRAN(cm/year)`,y=`WS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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
  panel.border = element_rect(linetype = 'solid', size = 1.2,fill = NA)) # 图四周框起来

#####
k<-4
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD\\TRAN_WS1",".jpeg",sep="")
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TRAN(cm/year)`,y=`WS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 16*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 16*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 16*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 16*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 1.2*k,fill = NA)) # 图四周框起来
dev.off()


library("GD")
mydata <- read.table("D:\\结果\\3_Typical_Steppe\\2_GD\\S30_TypicalSteppe\\alldata_change907P.txt")
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
k<-4
pth <- paste("D:\\结果\\3_Typical_Steppe\\2_GD\\GD\\LAI_PREC",".jpeg",sep="")
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`LAI`,y=`PREC(cm)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
  theme(
    legend.position = "none",
    axis.text.x   = element_text(color = 'black', size = 16*k, angle = 0),
    axis.text.y   = element_text(color = 'black', size = 16*k, angle = 0),
    axis.title.x  = element_text(color = 'black', size = 16*k, angle = 0),
    axis.title.y  = element_text(color = 'black', size = 16*k, angle = 90),
    axis.line.y = element_line(color = 'black', linetype = 'solid'), # y轴线特征
    axis.line.x = element_line (color = 'black',linetype = 'solid'), # x轴线特征
    panel.border = element_rect(linetype = 'solid', size = 1.2*k,fill = NA)) # 图四周框起来
dev.off()
#####

#mydata <- read.table("D:\\结果\\3_Typical_Steppe\\2_GD\\S30_TypicalSteppe\\alldata_change907P.txt")
#sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
#        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
#        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
#        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
##       "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
#        "HURM(%)","SOIL","Precipitation(mm)","VEG")
#names(mydata) <- sx#

#npp0 <- mydata[which(mydata[,10]<0),]
#npp1 <- mydata[which(mydata[,10]>=0),]

#prec01 <- cbind(npp0$`Precipitation(mm)`,npp0)









