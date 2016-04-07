library(igraph)
setwd("/home/nidhog/master_thesis/git-repo/graph_generation/")
g1<-read.graph('single_layer/multi_BA_BA_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/multi_BA_BA_R_2.csv', format="edgelist")

assortativity.degree(g1, directed = FALSE)
assortativity.degree(g2, directed = FALSE)
# ER
g1<-read.graph('single_layer/multi_ER_ER_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/multi_ER_ER_R_2.csv', format="edgelist")

assortativity.degree(g1, directed = FALSE)
assortativity.degree(g2, directed = FALSE)

assortativity.degree(g3, directed = FALSE)
