getNOAA<-function(pth,year){
  library(tidyr)
  #pth <- "E:\\575160999995.csv"
aa <- read.csv(pth)
lat <- aa[1,4];lon <- aa[1,5];ele <- aa[1,6]; sta <- aa[1,1]
aa <- as.data.frame(cbind(aa$STATION,aa$DATE,aa$REPORT_TYPE,aa$WND,aa$TMP,aa$AA1,aa$MA1))
names(aa) <- c("STATION","DATE","REPORT_TYPE","WND","TMP","AA1","MA1")
#aa2<-aa[,-c(3,4,5,6,7,9,10,12,13,15,16,18:31,33:40)]
aa1 <- aa[-which(aa[,6]==""),]
aa <- aa[which(aa$REPORT_TYPE=="FM-15"),]  #####有的数据只有FM-12
aa[,2] <-gsub("T"," ",aa[,2])
aa1[,2] <-gsub("T"," ",aa1[,2])
for (i in 1:length(aa1[,1])) {
  idx <- which(aa[,2]==aa1[i,2])
  aa[idx,6] <- aa1[i,6]
}

temp <- seq.POSIXt(from = as.POSIXct(paste(year,"-01-01 00:00:00",sep="")),
                   to = as.POSIXct(paste(year,"-12-31 23:00:00 CST",sep="")), by = 'hour')
tindex <- as.character(temp)

ttindex <- as.data.frame(cbind(tindex,rep(NA,length(tindex)),rep(NA,length(tindex)),rep(NA,length(tindex)),
                               rep(NA,length(tindex)),rep(NA,length(tindex)),rep(NA,length(tindex))))
names(ttindex) <- c("STA","DATE","PRETYPE","WND","TEM","PRE","MA1")

for (i in 1:length(aa[,1])) {
  idx <- which(ttindex[,1]==aa[i,2])
  ttindex[idx,2:7] <- aa[i,2:7]
}

bb <- ttindex[,-3]
WND <- as.data.frame(bb[,3])
WND2 <- separate(WND,1,c("WNDDREC","N1","N2","WINDSPE","N3"),sep=",")
WNDDREC <- as.numeric(WND2[,1])
WINDSPE <- as.numeric(WND2[,4])/10
WNDDREC[which(WNDDREC>361)] <- NA
WINDSPE[which(WINDSPE>100)] <- NA
TEM <- as.data.frame(bb[,4])
TEM2 <- separate(TEM,1,c("TEM","TEM1"),sep="([+-,])")
TEM2 <- as.numeric(TEM2[,2])/10

PRE<- as.data.frame(bb[,5])
PRE2 <- separate(PRE,1,c("N1","PREC","N2","N3"),sep=",")
PRE2 <- as.numeric(PRE2[,2])/10
idx <- which(PRE2 ==999.9 | PRE2 == 0)
PRE2[idx] <- 0
PRE2[is.na(PRE2[])] <-0

PPR <- as.data.frame(bb[,6])
PPR <- separate(PPR,1,c("PPR","N1","N2","N3"),sep="([,])")
PPR <- as.numeric(PPR[,1])/100

ele <- rep(ele,length(WND[,1]))
lon <- rep(lon,length(WND[,1]))
lat <- rep(lat,length(WND[,1]))
sta <- rep(sta,length(WND[,1]))

OT <- as.data.frame(cbind(sta,lon,lat,ele,tindex,PRE2,TEM2,WINDSPE,WNDDREC,PPR))
names(OT) <- c("STA","LON","LAT","ELE","DAT","PRE","TEM","WDP","WDR","PPR")
return(OT)
}

