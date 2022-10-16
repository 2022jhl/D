k<-4
#mydata <- read.table("C:\\Users\\win\\Desktop\\alldata_change907P.txt")
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最高温NPP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMAX(centidegree)`,y=`NPP(g/m2/year)`))+geom_point(shape=1,alpha=0.6)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\降水NPP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`Precipitation(mm)`,y=`NPP(g/m2/year)`))+geom_point(shape=1,alpha=0.6)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最低温NPP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMIN(centidegree)`,y=`NPP(g/m2/year)`))+geom_point(shape=1,alpha=0.6)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\光和有效辐射NPP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`PARM(mol/m2/h)`,y=`NPP(g/m2/year)`))+geom_point(shape=1,alpha=0.6)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\叶面积指数NPP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`LAI`,y=`NPP(g/m2/year)`))+geom_point(shape=1,alpha=0.6)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\叶氮含量NPP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`NLV(g/m2)`,y=`NPP(g/m2/year)`))+geom_point(shape=1,alpha=1)+theme_bw()+
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
#####
#####
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\降水TRAN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`Precipitation(mm)`,y=`TRAN(cm/year)`))+geom_point(shape=1,alpha=1)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最高温TRAN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMAX(centidegree)`,y=`TRAN(cm/year)`))+geom_point(shape=1,alpha=1)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最低温TRAN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMIN(centidegree)`,y=`TRAN(cm/year)`))+geom_point(shape=1,alpha=1)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\平均温TRAN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`TRAN(cm/year)`))+geom_point(shape=1,alpha=1)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\净辐射TRAN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`RNMX(W/m2)`,y=`TRAN(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIN(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\叶面积指数TRAN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`LAI`,y=`TRAN(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\风速TRAN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`WIND(m/s)`,y=`TRAN(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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
#####
#####
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\风速EVP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`WIND(m/s)`,y=`EVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\叶面积指数EVP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`LAI`,y=`EVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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


sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\降水EVP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`Precipitation(mm)`,y=`EVP(cm/year)`))+geom_point(shape=1,alpha=0.1)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\平均温EVP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`EVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最低温EVP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMIN(centidegree)`,y=`EVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\净辐射EVP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`RNMX(W/m2)`,y=`EVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\土壤水EVP",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`WS1(cm3/cm3)`,y=`EVP(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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
#####
#####
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\风速ROF",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`WIND(m/s)`,y=`ROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\叶面积指数ROF",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`LAI`,y=`ROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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


sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\降水ROF",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`Precipitation(mm)`,y=`ROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最高温ROF",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMAX(centidegree)`,y=`ROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最低温ROF",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMIN(centidegree)`,y=`ROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\平均温ROF",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`ROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\净辐射温ROF",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`RNMX(W/m2)`,y=`ROF(cm/year)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\降水WS1",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`Precipitation(mm)`,y=`WS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\平均温WS1",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`WS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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


sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最高温WS1",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMAX(centidegree)`,y=`WS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最低温WS1",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMIN(centidegree)`,y=`WS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\蒸腾WS1",".jpeg",sep="") ####
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\径流WS1",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`ROF(cm/year)`,y=`WS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "MSO(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","NSO(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\径流WS1",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`ROF(cm/year)`,y=`WS1(cm3/cm3)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\土壤水SOM",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`WS1(cm3/cm3)`,y=`SOM(g/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\平均温SOM",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`SOM(g/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最高温SOM",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMAX(centidegree)`,y=`SOM(g/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最低温SOM",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMIN(centidegree)`,y=`SOM(g/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\NPPSOM",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`NPP(g/m2/year)`,y=`SOM(g/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\NPPTN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`NPP(g/m2/year)`,y=`TN(mg/kg)`))+geom_point(shape=1,alpha=0.5)+theme_bw()+
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

sx <- c("ΔEVP(cm/year)","ΔEVT(cm/year)","ΔLAI","ΔMLT(g/m2/year)", "ΔSOM(g/kg)", "ΔNAB(g/m2/year)","ΔNEP(g/m2/year)", "ΔNLT(g/m2)","ΔNLV(g/m2)",
        "ΔNPP(g/m2/year)","ΔNSL(g/m2)","ΔTN(mg/kg)","ΔROF(cm/year)","ΔRON(cm/year)","ΔSLWD(kg/m2)","ΔLWT(t/hm2)","ΔSRS(g/m2/year)",
        "ΔTRAN(cm/year)","ΔWPB(MPa)","ΔWS1(cm3/cm3)","ΔWS2(cm3/cm3)","ΔWS3(cm3/cm3)","ΔWS4(cm3/cm3)","NNHUMR0","NNPARM0","ΔPREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\TN_NLV",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TN(mg/kg)`,y=`NLV(g/m2)`))+geom_point(shape=1,alpha=1)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最高温TN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMAX(centidegree)`,y=`TN(mg/kg)`))+geom_point(shape=1,alpha=1)+theme_bw()+
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
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\最低温TN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TMIN(centidegree)`,y=`TN(mg/kg)`))+geom_point(shape=1,alpha=1)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\平均温TN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`TAVE(centidegree)`,y=`TN(mg/kg)`))+geom_point(shape=1,alpha=1)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\土壤水TN",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`WS1(cm3/cm3)`,y=`TN(mg/kg)`))+geom_point(shape=1,alpha=1)+theme_bw()+
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

sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata)<-sx
pth <- paste("C:\\Users\\win\\Desktop\\JHL\\降水SOM",".jpeg",sep="") ####
jpeg(pth,width = 480*2, height = 480*2,quality = 900)
ggplot(mydata,aes(x=`Precipitation(mm)`,y=`SOM(g/kg)`))+geom_point(shape=1,alpha=1)+theme_bw()+
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
##################################################################################################################
discmethod <- c("equal","natural","quantile","geometric","sd")
discitv <- c(3:7)
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP(g/m2/year)","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
ndvigdm <- gdm(`NPP(g/m2/year)` ~ `LAI` + `PREC(cm)` + `TMAX(centidegree)` +`TMIN(centidegree)` +`TAVE(centidegree)`+
                 `WS1(cm3/cm3)` + `DEM(m)` + `SLOPE(degree)` + `WIND(m/s)`+ `RNMX(W/m2)`  +`Precipitation(mm)`+ SOIL,
               continuous_variable = c("NPP(g/m2/year)","LAI","PREC(cm)","TMAX(centidegree)","TMIN(centidegree)","TAVE(centidegree)",
                                       "WS1(cm3/cm3)","DEM(m)","SLOPE(degree)","WIND(m/s)","RNMX(W/m2)","Precipitation(mm)"),
               data = mydata,
               discmethod = discmethod, discitv = discitv) # ~3s
ndvigdm

discmethod <- c("equal","natural","quantile")
discitv <- c(4:7)
sx <- c("EVP(cm/year)","EVT(cm/year)","LAI","MLT(g/m2/year)", "SOM(g/kg)", "NAB(g/m2/year)","NEP(g/m2/year)", "NLT(g/m2)","NLV(g/m2)",
        "NPP","NSL(g/m2)","TN(mg/kg)","ROF(cm/year)","RON(cm/year)","SLWD(kg/m2)","SLWT(t/hm2)","SRS(g/m2/year)",
        "TRAN(cm/year)","WPB(MPa)","WS1(cm3/cm3)","WS2(cm3/cm3)","WS3(cm3/cm3)","WS4(cm3/cm3)","NNHUMR0","NNPARM0","PREC(cm)","NNRNMX0",
        "NNTAVE0","NNTMAX0","NNTMIN0","NNVWIN0","WTBA(cm/year)","WTIN(cm/year)","WTOT(cm/year)",
        "DEM(m)","SLOPE(degree)","TAVE(centidegree)","TMAX(centidegree)","TMIN(centidegree)","WIND(m/s)","PARM(mol/m2/h)","RNMX(W/m2)",
        "HURM(%)","SOIL","Precipitation(mm)","VEG")
names(mydata) <- sx
continuous_variable <- colnames(mydata)[-c(1:2,4:9,11:46)]
ndvigdm <- gdm(`NPP` ~ `LAI`,
               continuous_variable = continuous_variable,
               data = mydata,
               discmethod = discmethod, 
               discitv = discitv) # ~3s
ndvigdm