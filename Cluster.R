library(factoextra)

setwd("C:\\Users\\guihi\\Desktop\\Analise Doutorado\\Cluster")

#importar os dados
dados <- read.csv("C:\\Users\\guihi\\Desktop\\Analise Doutorado\\Cluster\\Dados_Validacao.csv", sep=";")
View(dados)


#informa o número ideal de clustes

fviz_nbclust(dados, kmeans, method = "gap_stat")


#kmeans

res_kmeans <- kmeans(dados, 2)

fviz_cluster(res_kmeans, data = dados, ylab = "", xlab = "")

base_clus <- cbind(dados, res_kmeans$cluster)


#exportando os resultados
write.csv2(base_clus, file = "resultadoClus.csv")
