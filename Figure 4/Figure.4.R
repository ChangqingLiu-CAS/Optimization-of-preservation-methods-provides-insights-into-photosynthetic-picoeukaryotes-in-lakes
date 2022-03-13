rm(list=ls())

setwd("C:/Users/liuch/Desktop/固定方法/work") ##设置工作目录
getwd()
suppressMessages(library(vegan))

library(ggplot2)
library(ade4)
x<-read.table("bray_NMDS.txt",sep="\t",header=T,row.names=1)
head(x)
p<-ggplot(x)+geom_point(aes(x=MDS1,y=MDS2,shape=method,color=Lake),size=3)

p+theme_bw()+theme(panel.grid = element_blank())

##5.4:3.6
