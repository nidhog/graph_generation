library(igraph)
#number_of_vetices = 14488
number_of_vetices = 100000
# generate two layers based on BA model
#BA_1 = random.graph.game(number_of_vetices, 0.01)
#BA_2 = random.graph.game(number_of_vetices, 0.01)
BA_1 = barabasi.game(number_of_vetices)
assortativity.degree(BA_1, directed = FALSE)
BA_2 = barabasi.game(number_of_vetices)
# generate two layers based on ER model
ER_1 = erdos.renyi.game(number_of_vetices, 0.01)
assortativity.degree(ER_1, directed = FALSE)

ER_2 = erdos.renyi.game(number_of_vetices, 0.01)
# random permutation map
rp_map = sample(1:number_of_vetices,size=number_of_vetices,replace=FALSE)
rp_map_2 = sample(1:number_of_vetices,size=number_of_vetices,replace=FALSE)
# shuffle the second layer for each model
BA_2 = permute.vertices(BA_2, rp_map)
ER_2 = permute.vertices(ER_2, rp_map)
# print to file
listBA1 = as_edgelist(BA_1)
listBA2 = as_edgelist(BA_2)
listER1 = as_edgelist(ER_1)
listER2 = as_edgelist(ER_2)
# BA_BA
# print BA1
write.graph(BA_1, "BA1.csv", format = "ncol")
lay1 = read.csv("BA1.csv", header = FALSE, sep = " ")
layer_number1 = data.frame(rep(1,length(listBA1)))
names(layer_number1)<-c("layer_number")
write.graph(BA_2, "BA2.csv", format = "ncol")
lay2 = read.csv("BA2.csv", header = FALSE, sep = " ")
layer_number2 = data.frame(rep(2,length(listBA2)))
names(layer_number2)<-c("layer_number")
# binding
lay1_c = cbind(lay1, layer_number1)
lay2_c = cbind(lay2, layer_number2)
graph_complete = rbind(lay1_c, lay2_c)
write.table(graph_complete, "multi_BA_BA.csv", sep=",", row.names = FALSE, col.names = FALSE) 
# ER_ER
# print ER
write.graph(ER_1, "ER1.csv", format = "ncol")
lay1 = read.csv("ER1.csv", header = FALSE, sep = " ")
layer_number1 = data.frame(rep(1,length(listER1)))
names(layer_number1)<-c("layer_number")
write.graph(ER_2, "ER2.csv", format = "ncol")
lay2 = read.csv("ER2.csv", header = FALSE, sep = " ")
layer_number2 = data.frame(rep(2,length(listER2)))
names(layer_number2)<-c("layer_number")
# binding
lay1_c = cbind(lay1, layer_number1)
lay2_c = cbind(lay2, layer_number2)
graph_complete = rbind(lay1_c, lay2_c)
write.table(graph_complete, "multi_ER_ER.csv", sep=",", row.names = FALSE, col.names = FALSE) 



