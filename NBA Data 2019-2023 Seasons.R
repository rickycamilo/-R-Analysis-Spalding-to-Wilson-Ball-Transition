library(dplyr)
library(ggplot2)
library(nbastatR)

Sys.setenv("VROOM_CONNECTION_SIZE" = 131072 * 2)


# dataframe with stats for each of the last 4 seasons from NBAStatR

season2019_20 <- nbastatR::metrics_leaders(seasons = 2020, metric = "pts", season_types = "Regular Season", modes = c("PerGame"), return_message = TRUE, nest_data = FALSE)

season2020_21 <- nbastatR::metrics_leaders(seasons = 2021, metric = "pts", season_types = "Regular Season", modes = c("PerGame"), return_message = TRUE, nest_data = FALSE)

season2021_22 <- nbastatR::metrics_leaders(seasons = 2022, metric = "pts", season_types = "Regular Season", modes = c("PerGame"), return_message = TRUE, nest_data = FALSE)

season2022_23 <- nbastatR::metrics_leaders(seasons = 2023, metric = "pts", season_types = "Regular Season", modes = c("PerGame"), return_message = TRUE, nest_data = FALSE)

# data frames filtered for players who played 58 games and qualify as a full season and qualify for awards
season2019_20 <- filter(season2019_20, gp >=58)
season2020_21 <- filter(season2020_21, gp >=58)
season2021_22 <- filter(season2021_22, gp >=58)
season2022_23 <- filter(season2022_23, gp >=58)

# average fg%, ft%, and ppg, and 3pm%
mean(season2019_20$pctFG)
mean(season2020_21$pctFG)
mean(season2021_22$pctFG)
mean(season2022_23$pctFG)

mean(season2019_20$pctFT)
mean(season2020_21$pctFT)
mean(season2021_22$pctFT)
mean(season2022_23$pctFT)

mean(season2019_20$pctFG3)
mean(season2020_21$pctFG3)
mean(season2021_22$pctFG3)
mean(season2022_23$pctFG3)

mean(season2019_20$pts)
mean(season2020_21$pts)
mean(season2021_22$pts)
mean(season2022_23$pts)

range(season2019_20$pts)
range(season2020_21$pts)
range(season2021_22$pts)
range(season2022_23$pts)

# combined dataframes for spalding 19-21 and wilson 21-23
spalding_data <- rbind(season2019_20,season2020_21)
wilson_data <- rbind(season2021_22,season2022_23)

last_four_seasons_data <- rbind(spalding_data,wilson_data)


last_four_seasons_truncated <- select(last_four_seasons_data,pctFG,pts,pctFG3,pctFT,namePlayer,slugSeason)

# Checking if any rows are N/A
any(is.na(wilson_data))
any(is.na(spalding_data))



#EDA and GGplot graphs
summary(spalding_data$pctFG)
summary(wilson_data$pctFG)

boxplot(spalding_data$pctFG)
boxplot(wilson_data$pctFG)


ggplot(spalding_data, aes(pctFG, pts, color = slugSeason)) + geom_point()
ggplot(wilson_data, aes(pctFG, pts, color = slugSeason)) + geom_point()


