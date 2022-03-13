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
mydata = read.table("abundance.txt",sep="\t", header=T, row.names=1)

##Lake Xuanwu
tgc <- summarySE(mydata, measurevar="XW", groupvars=c("method","days"))

tgc
ggplot()


p <-ggplot(tgc, aes(x =method , y = XW, fill = days)) +geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = XW - se, ymax = XW + se),position = position_dodge(0.9), width = .2) 


p+theme_bw()+theme(panel.grid = element_blank())+ylim(0,30000)
##6.7:3.3


##Lake Chaohu
tgc <- summarySE(mydata, measurevar="CH", groupvars=c("method","days"))

tgc
ggplot()


p <-ggplot(tgc, aes(x =method , y = CH, fill = days)) +geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = CH - se, ymax = CH + se),position = position_dodge(0.9), width = .2) 


p+theme_bw()+theme(panel.grid = element_blank())+ylim(0,150000)
##6.7:3.3

##artificial pond 
tgc <- summarySE(mydata, measurevar="CT", groupvars=c("method","days"))

tgc
ggplot()


p <-ggplot(tgc, aes(x =method , y = CT, fill = days)) +geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = CT - se, ymax = CT + se),position = position_dodge(0.9), width = .2) 


p+theme_bw()+theme(panel.grid = element_blank())+ylim(0,250000)
##6.7:3.3


##M.homosphaera 
tgc <- summarySE(mydata, measurevar="M", groupvars=c("method","days"))

tgc
ggplot()


p <-ggplot(tgc, aes(x =method , y = M, fill = days)) +geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = M - se, ymax = M + se),position = position_dodge(0.9), width = .2) 


p+theme_bw()+theme(panel.grid = element_blank())+ylim(0,2000000)
##6.7:3.3

