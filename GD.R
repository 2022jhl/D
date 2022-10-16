
library("GD")
#最优化参数
ndvi_40 <- read.table("C:\\Users\\JHL\\Desktop\\Deter\\GeoDetect\\ndvidehw.txt")
names(ndvi_40) <- c("de_hw","lucc","crop_trend","mdsp_trend","slope")

#因子探测器
discmethod <- c("equal","natural","quantile","geometric","sd")
discitv <- c(3:7)
data.ndvi <- ndvi_40

data.continuous <- data.ndvi[, c(1,c(3:5))]

odc1 <- optidisc(de_hw ~ ., data = data.continuous, discmethod, discitv) # ~14s
data.continuous <- do.call(cbind, lapply(1:3, function(x)
  data.frame(cut(data.continuous[, -1][, x], unique(odc1[[x]]$itv), include.lowest = TRUE))))
# add stratified data to explanatory variables
data.ndvi[, c(3:5)] <- data.continuous

g3 <- gd(de_hw ~ ., data = data.ndvi)
g3
plot(g3)

#风险探测器
rm2 <- riskmean(de_hw ~ ., data = data.ndvi)
rm2
plot(rm2)
