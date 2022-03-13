rm(list=ls())
setwd("C:/Users/liuch/Desktop/固定方法/work")
getwd()

suppressMessages(library(vegan))
library("ggplot2")
library("RColorBrewer")
library("SuppDists")


###Lake Xuanwu
mydata = read.table("XWBRAY.txt",sep="\t", header=T, row.names=1)
ggplot()
p<-ggplot(mydata, aes(method,bray))+geom_boxplot(aes(fill=method),outlier.shape = NA,notch = FALSE)+geom_jitter(aes(fill=method),position = position_jitter(width=0.2),size=1.5)
p+theme_bw()+theme(panel.grid = element_blank())
##4.8:3.3

###Lake Chaohu
mydata = read.table("CHBRAY.txt",sep="\t", header=T, row.names=1)
ggplot()
p<-ggplot(mydata, aes(method,bray))+geom_boxplot(aes(fill=method),outlier.shape = NA,notch = FALSE)+geom_jitter(aes(fill=method),position = position_jitter(width=0.2),size=1.5)
p+theme_bw()+theme(panel.grid = element_blank())
##4.8:3.3


###Artificial pond 
mydata = read.table("CTBRAY.txt",sep="\t", header=T, row.names=1)
ggplot()
p<-ggplot(mydata, aes(method,bray))+geom_boxplot(aes(fill=method),outlier.shape = NA,notch = FALSE)+geom_jitter(aes(fill=method),position = position_jitter(width=0.2),size=1.5)
p+theme_bw()+theme(panel.grid = element_blank())
##4.8:3.3