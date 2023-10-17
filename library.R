library(pdfCluster)#clustering kmeans ecc..
library(fpc) #clusym in plot
library(cluster)#gap, silhouette
gapnc.scal2 <- function(data,FUNcluster=kmeans,
                        K.max=10, B = 100, d.power = 2,
                        spaceH0 ="scaledPCA",  #="original"
                        method ="globalSEmax", SE.factor = 2,...){   #=1
  gap1 <- clusGap(data,kmeans,K.max, B, d.power,spaceH0,...)
  nc <- maxSE(gap1$Tab[,3],gap1$Tab[,4],method, SE.factor)
  kmopt <- kmeans(data,nc,...)
  out <- list()
  out$gapout <- gap1
  out$nc <- nc
  out$kmopt <- kmopt
  out
}
library(sn) #simruns for doing simulations
library(clusterSim)#silhouette ??
library(smacof) #multidimensional scaling
library(mclust) #adjusted rand index, gaussian mixture/cov matrix models
library(teigen)#t distribution
library(mixsmsn)#skew distributions
library(flexmix)#EM algorithm
library(nomclust)#clustering on simple matching distance matrix
library(RColorBrewer)#colors in heatmap
library(fda)#functional data analysis
library(funFEM)#mixture based on functional data
library(scatterplot3d)
library(prabclus)
library(ggplot2)#boxplot
library(robustbase)#huber estimator
library(mixtools)#ellipses defined by covariance matrices.



