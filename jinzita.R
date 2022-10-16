
library(DescTools)

# 男性人口
m.pop<-c(3.2,3.5,3.6,3.6,3.5,3.5,3.9,3.7,3.9,3.5,
         3.2,2.8,2.2,1.8,1.5,1.3,0.7,0.4)
# 女性人口
f.pop<-c(3.2,3.4,3.5,3.5,-3.5,3.7,4,3.8,3.9,3.6,3.2,
         2.5,2,1.7,1.5,1.3,1,0.8)
# 年龄分类
age <- c("0-4","5-9","10-14","15-19","20-24","25-29",
         "30-34","35-39","40-44","45-49","50-54",
         "55-59","60-64","65-69","70-74","75-79","80-44","85+")
mydata <- data.frame(m.pop, f.pop, age) # 构建数据集
mydata # 展示数据
PlotPyramid(mydata$m.pop, # 第一列男性人口数据
            mydata$f.pop, # 第二列女性人口数据 
            ylab = mydata$age, # y轴标签，不同年龄段
            #gapwidth=0,
            ylab.x = 0,
            border = "orange2",
            col = c("lightslategray", "orange2"),
            main="年龄分布的金字塔图",
            lxlab="男性（万人）", rxlab="女性（万人）",
            #xlim=c(-5,5)
            )  #col = pal_lancet()(2)
##其他的参数调整还包括xaxt；args.grid为设置网格线的属性，设置为NA表示去掉网格线，不显示。
##cex.axis、cex.lab、cex.names用来设置x坐标轴和变量标签、y坐标轴标签的文字大小；adj用来调整标签的角度等。

par(mfrow=c(1,2))