library("GD")
mydata <- read.table("C:\\Users\\JHL\\Desktop\\GD\\alldata_change903.txt")
names(mydata) <- c("AROF","ARON","ATRN", "AEVP", "ALAI", "PREC","WTIN", "WTOT", "WTBA", "AWPB",
                   "AWS1","AWS2","AWS3","AWS4","DEM","SLOPE", "TAVE", "TMAX",
                   "TMIN","VWIN", "PARM", "RNMX", "HUMR", "SOIL", "vegs30")
discmethod <- c("equal","natural","quantile","geometric","sd")
discitv <- c(3:7)
ndvigdm <- gdm(AROF ~ ALAI + PREC + AWPB + TMAX +TMIN+TAVE+ AWS1 +AWS2 + AWS3+AWS4+ DEM + SLOPE + VWIN+
                 RNMX + HUMR + SOIL,
               continuous_variable = c("ALAI","PREC","AWPB","TMAX","TMIN","TAVE","AWS1","AWS2","AWS3",
                                       "AWS4","DEM","SLOPE","VWIN","RNMX","HUMR"),
               data = mydata,
               discmethod = discmethod, discitv = discitv) # ~3s
ndvigdm
plot(ndvigdm)
