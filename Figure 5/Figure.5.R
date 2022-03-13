rm(list=ls())
setwd("C:/Users/liuch/Desktop/固定方法/work")
getwd()

suppressMessages(library(vegan))
library("ggplot2")
library("RColorBrewer")
library("SuppDists")
library("dplyr")
library("reshape2")
library("Rmisc")
mydata = read.table("bray.txt",sep="\t", header=T, row.names=1)
tgc <- summarySE(mydata, measurevar="bray", groupvars=c("method","days"))

tgc
ggplot()


p <-ggplot(tgc, aes(x =method , y = bray, fill = days)) +geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = bray - se, ymax = bray + se),position = position_dodge(0.9), width = .2) 


p+theme_bw()+theme(panel.grid = element_blank())+ylim(0,1)
##6.7:3.3

