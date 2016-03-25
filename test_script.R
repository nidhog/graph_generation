library(igraph)
g<-read.graph('Padgett.csv', format="ncol")
BA <- barabasi.game(1000)
BA2 <- barabasi.game(1000)

write.graph(BA, "BA.csv", format = "ncol")
