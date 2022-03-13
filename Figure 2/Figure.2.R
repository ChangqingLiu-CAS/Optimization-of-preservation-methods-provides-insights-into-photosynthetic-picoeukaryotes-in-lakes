rm(list=ls())
setwd("C:/Users/liuch/Desktop/PPE/work")
getwd()

suppressMessages(library(vegan))
library("ggplot2")
library("RColorBrewer")
library("SuppDists")
library("dplyr")
library("reshape2")
library("Rmisc")


##Lake Xuanwu
##PPE
mydata = read.table("XWPPERichness.txt",sep="\t", header=T, row.names=1)
tgc <- summarySE(mydata, measurevar="Richness", groupvars=c("method","days"))

tgc
ggplot()


p <-ggplot(tgc, aes(x =method , y = Richness, fill = days)) +geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = Richness - se, ymax = Richness + se),position = position_dodge(0.9), width = .2) 


p+theme_bw()+theme(panel.grid = element_blank())+ylim(0,200)
##6.7:3.3

#Non-PPE
mydata = read.table("XWNPRichness.txt",sep="\t", header=T, row.names=1)
tgc <- summarySE(mydata, measurevar="Richness", groupvars=c("method","days"))

tgc
ggplot()


p <-ggplot(tgc, aes(x =method , y = Richness, fill = days)) +geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = Richness - se, ymax = Richness + se),position = position_dodge(0.9), width = .2) 


p+theme_bw()+theme(panel.grid = element_blank())+ylim(0,200)
##6.7:3.3




##Lake Chaohu
##PPE
mydata = read.table("CHPPERichness.txt",sep="\t", header=T, row.names=1)
tgc <- summarySE(mydata, measurevar="Richness", groupvars=c("method","days"))

tgc
ggplot()


p <-ggplot(tgc, aes(x =method , y = Richness, fill = days)) +geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = Richness - se, ymax = Richness + se),position = position_dodge(0.9), width = .2) 


p+theme_bw()+theme(panel.grid = element_blank())+ylim(0,150)
##6.7:3.3

#Non-PPE
mydata = read.table("CHNPRichness.txt",sep="\t", header=T, row.names=1)
tgc <- summarySE(mydata, measurevar="Richness", groupvars=c("method","days"))

tgc
ggplot()


p <-ggplot(tgc, aes(x =method , y = Richness, fill = days)) +geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = Richness - se, ymax = Richness + se),position = position_dodge(0.9), width = .2) 


p+theme_bw()+theme(panel.grid = element_blank())+ylim(0,250)
##6.7:3.3



##Artificial pond 
##PPE
mydata = read.table("CTPPERichness.txt",sep="\t", header=T, row.names=1)
tgc <- summarySE(mydata, measurevar="Richness", groupvars=c("method","days"))

tgc
ggplot()


p <-ggplot(tgc, aes(x =method , y = Richness, fill = days)) +geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = Richness - se, ymax = Richness + se),position = position_dodge(0.9), width = .2) 


p+theme_bw()+theme(panel.grid = element_blank())+ylim(0,200)
##6.7:3.3

#Non-PPE
mydata = read.table("CTNPRichness.txt",sep="\t", header=T, row.names=1)
tgc <- summarySE(mydata, measurevar="Richness", groupvars=c("method","days"))

tgc
ggplot()


p <-ggplot(tgc, aes(x =method , y = Richness, fill = days)) +geom_col(position = "dodge") +
  geom_errorbar(aes(ymin = Richness - se, ymax = Richness + se),position = position_dodge(0.9), width = .2) 


p+theme_bw()+theme(panel.grid = element_blank())+ylim(0,250)
##6.7:3.3