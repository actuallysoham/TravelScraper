library(factoextra)


hotels <- read.csv("VizData_Singapore.csv")

rownames(hotels) <- hotels[,1] #Assigning row names from 1st column 
hotels[,1] <- NULL #Removing the first column

png(file = "SingaporeClusters.png")
km <- kmeans(hotels, centers = 2)
# Visualize the clusters
fviz_cluster(km, data = hotels)
# saving the file 
dev.off()
