library(rvest)
library(dplyr)
library(stringr)
library(ggplot2)
library(reshape)


# 2019-20 web scraper 

table_url <- read_html('https://www.basketball-reference.com/leagues/NBA_2020_ratings.html')

advance_stats_2019_2020 <- table_url %>% html_node('table') %>% html_table(fill = TRUE)



advance_stats_2019_2020 <- advance_stats_2019_2020 


#### fixing the first row being the incorrect label row ####

colnames(advance_stats_2019_2020 ) <- advance_stats_2019_2020 [1,]

advance_stats_2019_2020 

advance_stats_2019_2020  <- advance_stats_2019_2020 [-1,]

# adding column that says season year 


Season = c('2019-2020 Season')
advance_stats_2019_2020$Season <- Season
advance_stats_2019_2020







# 2020-21 web scraper 

table_url <- read_html('https://www.basketball-reference.com/leagues/NBA_2021_ratings.html')

advance_stats_2020_2021 <- table_url %>% html_node('table') %>% html_table(fill = TRUE)



advance_stats_2020_2021 <- advance_stats_2020_2021 

#### fixing the first row being the incorrect label row ####

colnames(advance_stats_2020_2021 ) <- advance_stats_2020_2021 [1,]

advance_stats_2020_2021 

advance_stats_2020_2021  <- advance_stats_2020_2021 [-1,]

# adding column that says season year 


Season = c('2020-2021 Season')
advance_stats_2020_2021$Season <- Season
advance_stats_2020_2021




# 2021-22 web scraper 

table_url <- read_html('https://www.basketball-reference.com/leagues/NBA_2022_ratings.html')

advance_stats_2021_2022 <- table_url %>% html_node('table') %>% html_table(fill = TRUE)



advance_stats_2021_2022 <- advance_stats_2021_2022 



colnames(advance_stats_2021_2022 ) <- advance_stats_2021_2022 [1,]

advance_stats_2021_2022 

advance_stats_2021_2022  <- advance_stats_2021_2022 [-1,]


# adding column that says season year 

Season = c('2021-2022 Season')
advance_stats_2021_2022$Season <- Season
advance_stats_2021_2022




# 2022-23 web scraper 

table_url <- read_html('https://www.basketball-reference.com/leagues/NBA_2023_ratings.html')

advance_stats_2022_2023 <- table_url %>% html_node('table') %>% html_table(fill = TRUE)



advance_stats_2022_2023 <- advance_stats_2022_2023 



colnames(advance_stats_2022_2023 ) <- advance_stats_2022_2023 [1,]

advance_stats_2022_2023 

advance_stats_2022_2023  <- advance_stats_2022_2023 [-1,]


# adding column that says season year 

Season = c('2022-2023 Season')
advance_stats_2022_2023$Season <- Season
advance_stats_2022_2023




#########################################

advance_stats_2019_2020$ORtg <- as.numeric(as.character(advance_stats_2019_2020$ORtg))
advance_stats_2020_2021$ORtg <- as.numeric(as.character(advance_stats_2020_2021$ORtg))
advance_stats_2021_2022$ORtg <- as.numeric(as.character(advance_stats_2021_2022$ORtg))
advance_stats_2022_2023$ORtg <- as.numeric(as.character(advance_stats_2022_2023$ORtg))


mean(advance_stats_2019_2020$ORtg)
mean(advance_stats_2020_2021$ORtg)
mean(advance_stats_2021_2022$ORtg)
mean(advance_stats_2022_2023$ORtg)






advance_stats_2019_2020$DRtg <- as.numeric(as.character(advance_stats_2019_2020$DRtg))
advance_stats_2020_2021$DRtg <- as.numeric(as.character(advance_stats_2020_2021$DRtg))
advance_stats_2021_2022$DRtg <- as.numeric(as.character(advance_stats_2021_2022$DRtg))
advance_stats_2022_2023$DRtg <- as.numeric(as.character(advance_stats_2022_2023$DRtg))


mean(advance_stats_2019_2020$DRtg)
mean(advance_stats_2020_2021$DRtg)
mean(advance_stats_2021_2022$DRtg)
mean(advance_stats_2022_2023$DRtg)









advance_stats_2019_2020$NRtg <- as.numeric(as.character(advance_stats_2019_2020$NRtg))
advance_stats_2020_2021$NRtg <- as.numeric(as.character(advance_stats_2020_2021$NRtg))
advance_stats_2021_2022$NRtg <- as.numeric(as.character(advance_stats_2021_2022$NRtg))
advance_stats_2022_2023$NRtg <- as.numeric(as.character(advance_stats_2022_2023$NRtg))


mean(advance_stats_2019_2020$NRtg)
mean(advance_stats_2020_2021$NRtg)
mean(advance_stats_2021_2022$NRtg)
mean(advance_stats_2022_2023$NRtg)



########################## Combining the 4 seasons advanced stats ###############################################




combined.advanced.stats <- rbind(advance_stats_2019_2020,advance_stats_2020_2021,advance_stats_2021_2022,advance_stats_2022_2023)


############################################### line graph of the offensive rating for each season  ###############################################



pl <-ggplot(combined.advanced.stats,aes(x = ORtg, y = Season)) +
         geom_point(color = Season, alpha = 4) + 
            geom_smooth(method=lm) 

print(pl)
