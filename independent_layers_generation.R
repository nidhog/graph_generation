library(igraph)
number_of_vetices = 10**4
# generate two layers based on BA model
BA_1 = barabasi.game(number_of_vetices)
BA_2 = barabasi.game(number_of_vetices)
# generate two layers based on ER model
ER_1 = erdos.renyi.game(number_of_vetices, 0.01)
ER_2 = erdos.renyi.game(number_of_vetices, 0.01)
# shuffle the second layer for each model

# connect layers

# print to file

