library(igraph)
#setwd("/home/nidhog/master_thesis/git-repo/graph_generation/")
name <- "multi_BA_BA"
g1<-read.graph('single_layer/multi_BA_BA_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/multi_BA_BA_R_2.csv', format="edgelist")

ad1 = assortativity.degree(g1, directed = FALSE)
ad2 = assortativity.degree(g2, directed = FALSE)
an1 = assortativity.nominal(g1,V(g1), directed = FALSE)
an2 = assortativity.nominal(g2,V(g2), directed = FALSE)
cc1 = transitivity(g1, type = "undirected")
cc2 = transitivity(g2, type = "undirected")
ap1 = average.path.length(g1, directed=TRUE, unconnected=TRUE)
ap2 = average.path.length(g2, directed=TRUE, unconnected=TRUE)
x <- c(ad1, ad2, an1, an2, cc1, cc2, ap1, ap2)
xn <- c('ad1', 'ad2', 'an1', 'an2', 'cc1', 'cc2', 'ap1', 'ap2')
frame = data.frame(xn, x)
#write.csv(x, file = paste("properties_output/",name,"_Properties.csv", sep = ''))
write.table(frame, file = paste("properties_output/",name,"_Properties.csv", sep=''),sep=',', row.names = FALSE, col.names = FALSE, quote = FALSE) 
# ER
name = "multi_ER_ER"
g1<-read.graph('single_layer/multi_ER_ER_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/multi_ER_ER_R_2.csv', format="edgelist")


ad1 = assortativity.degree(g1, directed = FALSE)
ad2 = assortativity.degree(g2, directed = FALSE)
an1 = assortativity.nominal(g1,V(g1), directed = FALSE)
an2 = assortativity.nominal(g2,V(g2), directed = FALSE)
cc1 = transitivity(g1, type = "undirected")
cc2 = transitivity(g2, type = "undirected")
ap1 = average.path.length(g1, directed=TRUE, unconnected=TRUE)
ap2 = average.path.length(g2, directed=TRUE, unconnected=TRUE)
x <- c(ad1, ad2, an1, an2, cc1, cc2, ap1, ap2)
xn <- c('ad1', 'ad2', 'an1', 'an2', 'cc1', 'cc2', 'ap1', 'ap2')
frame = data.frame(xn, x)
write.table(frame, file = paste("properties_output/",name,"_Properties.csv", sep=''),sep=',', row.names = FALSE, col.names = FALSE, quote = FALSE) 


# Arxiv
name = 'Arxiv'
g1<-read.graph('single_layer/Arxiv_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/Arxiv_R_2.csv', format="edgelist")
g3<-read.graph('single_layer/Arxiv_R_3.csv', format="edgelist")
print("Arxiv: ")
an1 = assortativity.nominal(g1,V(g1), directed = FALSE)
an2 = assortativity.nominal(g2,V(g2), directed = FALSE)
an3 = assortativity.nominal(g3,V(g3), directed = FALSE)
ad1 = assortativity.degree(g1, directed = FALSE)
ad2 = assortativity.degree(g2, directed = FALSE)
ad3 = assortativity.degree(g3, directed = FALSE)
cc1 = transitivity(g1, type = "undirected")
cc2 = transitivity(g2, type = "undirected")
cc3 = transitivity(g3, type = "undirected")
ap1 = average.path.length(g1, directed=TRUE, unconnected=TRUE)
ap2 = average.path.length(g2, directed=TRUE, unconnected=TRUE)
ap3 = average.path.length(g3, directed=TRUE, unconnected=TRUE)
x <- c(ad1, ad2, ad3, 
       an1, an2, an3,
       cc1, cc2, cc3,
       ap1, ap2, ap3)
xn <- c('ad1', 'ad2', 'ad3', 
       'an1', 'an2', 'an3',
       'cc1', 'cc2', 'cc3',
       'ap1', 'ap2', 'ap3')
frame = data.frame(xn, x)
#write.csv(x, file = paste("properties_output/",name,"_Properties.csv", sep = ''))
write.table(frame, file = paste("properties_output/",name,"_Properties.csv", sep=''),sep=',', row.names = FALSE, col.names = FALSE, quote = FALSE) 

#Padgett
name = "Padgett"
g1<-read.graph('single_layer/Padgett_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/Padgett_R_2.csv', format="edgelist")
 
print("Padgett: ")

an1 = assortativity.nominal(g1,V(g1), directed = FALSE)
an2 = assortativity.nominal(g2,V(g2), directed = FALSE)
an3 = assortativity.nominal(g3,V(g3), directed = FALSE)
ad1 = assortativity.degree(g1, directed = FALSE)
ad2 = assortativity.degree(g2, directed = FALSE)
ad3 = assortativity.degree(g3, directed = FALSE)
cc1 = transitivity(g1, type = "undirected")
cc2 = transitivity(g2, type = "undirected")
cc3 = transitivity(g3, type = "undirected")
ap1 = average.path.length(g1, directed=TRUE, unconnected=TRUE)
ap2 = average.path.length(g2, directed=TRUE, unconnected=TRUE)
ap3 = average.path.length(g3, directed=TRUE, unconnected=TRUE)
x <- c(ad1, ad2, ad3, 
       an1, an2, an3,
       cc1, cc2, cc3,
       ap1, ap2, ap3)
xn <- c('ad1', 'ad2', 'ad3', 
        'an1', 'an2', 'an3',
        'cc1', 'cc2', 'cc3',
        'ap1', 'ap2', 'ap3')
frame = data.frame(xn, x)
#write.csv(x, file = paste("properties_output/",name,"_Properties.csv", sep = ''))
write.table(frame, file = paste("properties_output/",name,"_Properties.csv", sep=''),sep=',', row.names = FALSE, col.names = FALSE, quote = FALSE) 

# Higgs
name = "Higgs"
g1<-read.graph('single_layer/Higgs_R_MT.csv', format="edgelist")
g2<-read.graph('single_layer/Higgs_R_RE.csv', format="edgelist")
g3<-read.graph('single_layer/Higgs_R_RT.csv', format="edgelist")
print("Higgs: ")
an1 = assortativity.nominal(g1,V(g1), directed = FALSE)
an2 = assortativity.nominal(g2,V(g2), directed = FALSE)
an3 = assortativity.nominal(g3,V(g3), directed = FALSE)
ad1 = assortativity.degree(g1, directed = FALSE)
ad2 = assortativity.degree(g2, directed = FALSE)
ad3 = assortativity.degree(g3, directed = FALSE)
cc1 = transitivity(g1, type = "undirected")
cc2 = transitivity(g2, type = "undirected")
cc3 = transitivity(g3, type = "undirected")
ap1 = average.path.length(g1, directed=TRUE, unconnected=TRUE)
ap2 = average.path.length(g2, directed=TRUE, unconnected=TRUE)
ap3 = average.path.length(g3, directed=TRUE, unconnected=TRUE)
x <- c(ad1, ad2, ad3, 
       an1, an2, an3,
       cc1, cc2, cc3,
       ap1, ap2, ap3)
xn <- c('ad1', 'ad2', 'ad3', 
        'an1', 'an2', 'an3',
        'cc1', 'cc2', 'cc3',
        'ap1', 'ap2', 'ap3')
frame = data.frame(xn, x)
#write.csv(x, file = paste("properties_output/",name,"_Properties.csv", sep = ''))
write.table(frame, file = paste("properties_output/",name,"_Properties.csv", sep=''),sep=',', row.names = FALSE, col.names = FALSE, quote = FALSE) 

# Arabidopsis
name = 'Arabidopsis'
g1<-read.graph('single_layer/Arabidopsis_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/Arabidopsis_R_2.csv', format="edgelist")
g3<-read.graph('single_layer/Arabidopsis_R_3.csv', format="edgelist")
print("Arabidopsis: ")
an1 = assortativity.nominal(g1,V(g1), directed = FALSE)
an2 = assortativity.nominal(g2,V(g2), directed = FALSE)
an3 = assortativity.nominal(g3,V(g3), directed = FALSE)
ad1 = assortativity.degree(g1, directed = FALSE)
ad2 = assortativity.degree(g2, directed = FALSE)
ad3 = assortativity.degree(g3, directed = FALSE)
cc1 = transitivity(g1, type = "undirected")
cc2 = transitivity(g2, type = "undirected")
cc3 = transitivity(g3, type = "undirected")
ap1 = average.path.length(g1, directed=TRUE, unconnected=TRUE)
ap2 = average.path.length(g2, directed=TRUE, unconnected=TRUE)
ap3 = average.path.length(g3, directed=TRUE, unconnected=TRUE)
x <- c(ad1, ad2, ad3, 
       an1, an2, an3,
       cc1, cc2, cc3,
       ap1, ap2, ap3)
xn <- c('ad1', 'ad2', 'ad3', 
        'an1', 'an2', 'an3',
        'cc1', 'cc2', 'cc3',
        'ap1', 'ap2', 'ap3')
frame = data.frame(xn, x)
#write.csv(x, file = paste("properties_output/",name,"_Properties.csv", sep = ''))
write.table(frame, file = paste("properties_output/",name,"_Properties.csv", sep=''),sep=',', row.names = FALSE, col.names = FALSE, quote = FALSE) 

# transp_London
name = 'transp_London'
g1<-read.graph('single_layer/transp_London_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/transp_London_R_2.csv', format="edgelist")
g3<-read.graph('single_layer/transp_London_R_3.csv', format="edgelist")
print("transp_London: ")
an1 = assortativity.nominal(g1,V(g1), directed = FALSE)
an2 = assortativity.nominal(g2,V(g2), directed = FALSE)
an3 = assortativity.nominal(g3,V(g3), directed = FALSE)
ad1 = assortativity.degree(g1, directed = FALSE)
ad2 = assortativity.degree(g2, directed = FALSE)
ad3 = assortativity.degree(g3, directed = FALSE)
cc1 = transitivity(g1, type = "undirected")
cc2 = transitivity(g2, type = "undirected")
cc3 = transitivity(g3, type = "undirected")
ap1 = average.path.length(g1, directed=TRUE, unconnected=TRUE)
ap2 = average.path.length(g2, directed=TRUE, unconnected=TRUE)
ap3 = average.path.length(g3, directed=TRUE, unconnected=TRUE)
x <- c(ad1, ad2, ad3, 
       an1, an2, an3,
       cc1, cc2, cc3,
       ap1, ap2, ap3)
xn <- c('ad1', 'ad2', 'ad3', 
        'an1', 'an2', 'an3',
        'cc1', 'cc2', 'cc3',
        'ap1', 'ap2', 'ap3')
frame = data.frame(xn, x)
#write.csv(x, file = paste("properties_output/",name,"_Properties.csv", sep = ''))
write.table(frame, file = paste("properties_output/",name,"_Properties.csv", sep=''),sep=',', row.names = FALSE, col.names = FALSE, quote = FALSE) 

# transp_Airlines
name = 'transp_Airlines'
g1<-read.graph('single_layer/transp_Airlines_R_1.csv', format="edgelist")
g2<-read.graph('single_layer/transp_Airlines_R_2.csv', format="edgelist")
g3<-read.graph('single_layer/transp_Airlines_R_3.csv', format="edgelist")
print("transp_Airlines: ")
an1 = assortativity.nominal(g1,V(g1), directed = FALSE)
an2 = assortativity.nominal(g2,V(g2), directed = FALSE)
an3 = assortativity.nominal(g3,V(g3), directed = FALSE)
ad1 = assortativity.degree(g1, directed = FALSE)
ad2 = assortativity.degree(g2, directed = FALSE)
ad3 = assortativity.degree(g3, directed = FALSE)
cc1 = transitivity(g1, type = "undirected")
cc2 = transitivity(g2, type = "undirected")
cc3 = transitivity(g3, type = "undirected")
ap1 = average.path.length(g1, directed=TRUE, unconnected=TRUE)
ap2 = average.path.length(g2, directed=TRUE, unconnected=TRUE)
ap3 = average.path.length(g3, directed=TRUE, unconnected=TRUE)
x <- c(ad1, ad2, ad3, 
       an1, an2, an3,
       cc1, cc2, cc3,
       ap1, ap2, ap3)
xn <- c('ad1', 'ad2', 'ad3', 
        'an1', 'an2', 'an3',
        'cc1', 'cc2', 'cc3',
        'ap1', 'ap2', 'ap3')
frame = data.frame(xn, x)
#write.csv(x, file = paste("properties_output/",name,"_Properties.csv", sep = ''))
write.table(frame, file = paste("properties_output/",name,"_Properties.csv", sep=''),sep=',', row.names = FALSE, col.names = FALSE, quote = FALSE) 



# TwYtFf
name = 'TwYtFf'
g1<-read.graph('single_layer/TwYtFf_R_tw.csv', format="edgelist")
g2<-read.graph('single_layer/TwYtFf_R_yt.csv', format="edgelist")
g3<-read.graph('single_layer/TwYtFf_R_ff.csv', format="edgelist")
print("TwYtFf: ")
an1 = assortativity.nominal(g1,V(g1), directed = FALSE)
an2 = assortativity.nominal(g2,V(g2), directed = FALSE)
an3 = assortativity.nominal(g3,V(g3), directed = FALSE)
ad1 = assortativity.degree(g1, directed = FALSE)
ad2 = assortativity.degree(g2, directed = FALSE)
ad3 = assortativity.degree(g3, directed = FALSE)
cc1 = transitivity(g1, type = "undirected")
cc2 = transitivity(g2, type = "undirected")
cc3 = transitivity(g3, type = "undirected")
ap1 = average.path.length(g1, directed=TRUE, unconnected=TRUE)
ap2 = average.path.length(g2, directed=TRUE, unconnected=TRUE)
ap3 = average.path.length(g3, directed=TRUE, unconnected=TRUE)
x <- c(ad1, ad2, ad3, 
       an1, an2, an3,
       cc1, cc2, cc3,
       ap1, ap2, ap3)
xn <- c('ad1', 'ad2', 'ad3', 
        'an1', 'an2', 'an3',
        'cc1', 'cc2', 'cc3',
        'ap1', 'ap2', 'ap3')
frame = data.frame(xn, x)
#write.csv(x, file = paste("properties_output/",name,"_Properties.csv", sep = ''))
write.table(frame, file = paste("properties_output/",name,"_Properties.csv", sep=''),sep=',', row.names = FALSE, col.names = FALSE, quote = FALSE) 

