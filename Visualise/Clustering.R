library(factoextra)


hotels <- read.csv("VizData_KualaLumpur.csv")

rownames(hotels) <- hotels[,1] #Assigning row names from 1st column 
hotels[,1] <- NULL #Removing the first column
hotels[,2] <- NULL #Removing the first column
png(file = "KLClusters4.png")
km <- kmeans(hotels, centers = 4)
# Visualize the clusters
fviz_cluster(km, data = hotels)
# saving the file 
dev.off()

