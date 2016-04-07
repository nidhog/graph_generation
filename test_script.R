library(igraph)
#setwd("/home/nidhog/master_thesis/git-repo/graph_generation/")
g1<-read.graph('single_layer/multi_BA_BA_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/multi_BA_BA_R_2.csv', format="edgelist")

assortativity.degree(g1, directed = FALSE)
assortativity.degree(g2, directed = FALSE)
assortativity.nominal(g1,V(g1), directed = FALSE)
assortativity.nominal(g2,V(g2), directed = FALSE)
transitivity(g1, type = "undirected")
transitivity(g2, type = "undirected")

average.path.length(g1, directed=TRUE, unconnected=TRUE)
average.path.length(g2, directed=TRUE, unconnected=TRUE)
# ER
g1<-read.graph('single_layer/multi_ER_ER_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/multi_ER_ER_R_2.csv', format="edgelist")

assortativity.degree(g1, directed = FALSE)
assortativity.degree(g2, directed = FALSE)
assortativity.nominal(g1,V(g1), directed = FALSE)
assortativity.nominal(g2,V(g2), directed = FALSE)
transitivity(g1, type = "undirected")
transitivity(g2, type = "undirected")
average.path.length(g1, directed=TRUE, unconnected=TRUE)
average.path.length(g2, directed=TRUE, unconnected=TRUE)


# Arxiv
g1<-read.graph('single_layer/Arxiv_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/Arxiv_R_2.csv', format="edgelist")
g3<-read.graph('single_layer/Arxiv_R_3.csv', format="edgelist")
print("Arxiv: ")
assortativity.nominal(g1,V(g1), directed = FALSE)
assortativity.nominal(g2,V(g2), directed = FALSE)
assortativity.nominal(g3,V(g3), directed = FALSE)
assortativity.degree(g1, directed = FALSE)
assortativity.degree(g2, directed = FALSE)
assortativity.degree(g3, directed = FALSE)
transitivity(g1, type = "undirected")
transitivity(g2, type = "undirected")
transitivity(g3, type = "undirected")
average.path.length(g1, directed=TRUE, unconnected=TRUE)
average.path.length(g2, directed=TRUE, unconnected=TRUE)
average.path.length(g3, directed=TRUE, unconnected=TRUE)

# Padgett
# g1<-read.graph('single_layer/Padgett_R_1.csv', format="edgelist")
# g2<-read.graph('single_layer/Padgett_R_2.csv', format="edgelist")
# 
# print("Padgett: ")
# assortativity.degree(g1, directed = FALSE)
# assortativity.degree(g2, directed = FALSE)

# Higgs
g1<-read.graph('single_layer/Higgs_R_MT.csv', format="edgelist")
g2<-read.graph('single_layer/Higgs_R_RE.csv', format="edgelist")
g3<-read.graph('single_layer/Higgs_R_RT.csv', format="edgelist")
print("Higgs: ")
assortativity.nominal(g1,V(g1), directed = FALSE)
assortativity.nominal(g2,V(g2), directed = FALSE)
assortativity.nominal(g3,V(g3), directed = FALSE)
assortativity.degree(g1, directed = FALSE)
assortativity.degree(g2, directed = FALSE)
assortativity.degree(g3, directed = FALSE)
transitivity(g1, type = "undirected")
transitivity(g2, type = "undirected")
transitivity(g3, type = "undirected")
average.path.length(g1, directed=TRUE, unconnected=TRUE)
average.path.length(g2, directed=TRUE, unconnected=TRUE)
average.path.length(g3, directed=TRUE, unconnected=TRUE)


# TwYtFf
# g1<-read.graph('single_layer/TwYtFf_R_tw.csv', format="edgelist")
# g2<-read.graph('single_layer/TwYtFf_R_yt.csv', format="edgelist")
# g3<-read.graph('single_layer/TwYtFf_R_ff.csv', format="edgelist")
# print("TwYtFf: ")
# assortativity.degree(g1, directed = FALSE)
# assortativity.degree(g2, directed = FALSE)
# assortativity.degree(g3, directed = FALSE)
# 
# 
# 
# 
