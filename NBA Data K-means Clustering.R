library(ggplot2)

# scatter plot for the combined last 4 seasons data frame

pl <- ggplot(last_four_seasons_data, aes(pctFG, pts, color = slugSeason))

print(pl + geom_point(size = 4))


# building the k means algothrim (set see)


nba.data.cluster <- kmeans(last_four_seasons_truncated[,1:4],4,nstart = 10)

print(nba.data.cluster)



# checking against actual values

table(nba.data.cluster$cluster,last_four_seasons_truncated$slugSeason)


# plotting above clusters

library(cluster)
clusplot(last_four_seasons_data,nba.data.cluster$cluster, color = T, shade = T, labels = 0, lines = 0)






