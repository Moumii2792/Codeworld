#PERCEPTUAL MAP R CODE
#Ensure that the column that has your row name is called X1
df <- airlinePrcpt
row.names(df) <- df$x1
df
df[1] <- NULL

#The code below would only work if the first column is used as row names
#The following assumes that the dataframe
#is set up correctly

PRCPTDATAST <- as.data.frame(scale(df, scale=T))

PRCPTDATASTPC <- prcomp(df, scale=F)

biplot(PRCPTDATASTPC, choices=c(1,2), cex=c(1, 1))

library(factoextra)
fviz_pca_biplot(PRCPTDATASTPC, axes=c(1,2), repel=T, col.var="grey", col.ind="black")
fviz_pca_var(PRCPTDATASTPC, axes=c(1,2), col.var="contrib", gradient.cols=c("blue", "grey", "red"), repel=T)
fviz_pca_ind(PRCPTDATASTPC, axes=c(1,2), col.ind="contrib", gradient.cols=c("blue", "grey", "red"), repel=T)




#PREFERENCE MAP R CODE
#The following assumes that the dataframe
#is set up correctly
df <- airlinePref
row.names(df) <- df$x1
df


PREFDATAST <- as.data.frame(scale(df, scale=T))

PREFDATASTPC <- prcomp(df, scale=F)

biplot(PREFDATASTPC, choices=c(1,2), cex=c(1, 1))

library(factoextra)
fviz_pca_biplot(PREFDATASTPC, axes=c(1,2), repel=T, col.var="grey", col.ind="black")
fviz_pca_var(PREFDATASTPC, axes=c(1,2), col.var="contrib", gradient.cols=c("blue", "grey", "red"), repel=T)
fviz_pca_ind(PREFDATASTPC, axes=c(1,2), col.ind="contrib", gradient.cols=c("blue", "grey", "red"), repel=T)
