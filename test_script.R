library(igraph)
setwd("/home/nidhog/master_thesis/git-repo/graph_generation/")
g1<-read.graph('single_layer/TwYtFf.csv_R_1_ff.gml', format="gml")
g2<-read.graph('single_layer/TwYtFf.csv_R_2_tw.csv', format="gml")
g3<-read.graph('single_layer/TwYtFf.csv_R_3_yt.csv', format="gml")

assortativity.degree(g1, directed = FALSE)
assortativity.degree(g2, directed = FALSE)
assortativity.degree(g3, directed = FALSE)
