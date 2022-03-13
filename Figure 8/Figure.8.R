rm(list=ls())
library(ggplot2)
library(pheatmap)
suppressMessages(library(vegan)) ##不显示warming信息，导入vegan包

setwd("C:/Users/liuch/Desktop/固定方法/work")
getwd()
##Lake Xuanwu
x<-read.table("IXW.txt",sep="\t",header=T,row.names=1)
test <- as.matrix(scale(x))
test<-log10(test+1)
pheatmap(test,  cluster_cols = FALSE,cluster_row = FALSE)

##Lake Chaohu
x<-read.table("ICH.txt",sep="\t",header=T,row.names=1)
test <- as.matrix(scale(x))
test<-log10(test+1)
pheatmap(test,  cluster_cols = FALSE,cluster_row = FALSE)


##Artificial pond
x<-read.table("ICT.txt",sep="\t",header=T,row.names=1)
test <- as.matrix(scale(x))
test<-log10(test+1)
pheatmap(test,  cluster_cols = FALSE,cluster_row = FALSE)
