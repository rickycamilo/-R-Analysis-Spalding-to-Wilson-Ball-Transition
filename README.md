# NBA’s 2021-2022 Spalding to Wilson Ball Transition (using R)

What’s so Interesting About this Switch?

The transition from Spalding basketballs to Wilson basketballs in the NBA marked a significant change for the league and its players. For over three decades, Spalding had been the official basketball supplier for the NBA, but in 2021, the league announced a new partnership with Wilson Sporting Goods. This switch brought/bring(s) about several noteworthy adjustments in the game. "The NBA players are incredibly skilled, so even very small, subtle changes can take time to adjust to. And, in some cases, maybe impossible to adjust their playing styles to, he said. Since it's still a leather ball, my guess would be that the players would adapt and adjust to it after a while. Now, how long is 'after a while? Is it weeks? Is it months? That I don't know. There is no word yet on the future of this ball. But for now, it seems like the league will wait and adjust.” Sundaresan. (2001).

Players noticed a slightly different texture and bounce, requiring some time to adjust their shooting and dribbling techniques accordingly. This shift to Wilson equipment also prompted a period of adaptation for teams as they incorporated the new basketballs into their training and game strategies. Additionally, the transition sparked discussions about the impact on shooting percentages and overall game performance, with players expressing mixed opinions on the change. “Not to make an excuse about the ball, but it’s a different basketball. It doesn’t have the same touch/softness that the Spalding ball had, and you’ll see this year. It’s gonna be a lot of bad misses,” said Clippers forwards Paul George. Chow. (2001).

Wilson who intended to make the new ball as close as possible to the Spalding one has had a lot to answer to since it took over. “The NBA and its players will work jointly with Wilson to develop and approve the new game ball.” Wilson says the ball is almost identical to the Spalding ball as they didn’t try to change anything. “Wilson will manufacture the NBA, WNBA and NBA G League game balls using the same materials, eight-panel configuration and performance specifications as current game balls and will also source the same leather currently used in the NBA,” said the NBA. Mangubat. (2020).

This partnership emphasized the NBA's pursuit of enhancing the game's integrity and maintaining the highest standards of play. With the introduction of Wilson basketballs, the NBA entered a new era, marked by a familiar but fresh collaboration but also criticism from its own players. Does the statistical data agree or disagree with the players grievances?

How Will We Analyze and Munge This Data?

NBAStatR is an R library specifically designed for analyzing and extracting insights from NBA basketball data. It serves as a valuable resource for statisticians, analysts, and enthusiasts interested in diving deep into the world of basketball analytics. NBAStatR provides a wide range of functions and tools to efficiently access, preprocess, and analyze NBA data, making it an indispensable tool for understanding the intricacies of the game.

One of the notable features of NBAStatR is its ability to retrieve and import NBA data directly from various sources, including popular APIs and databases. This streamlined data access saves analysts time and effort, allowing them to focus on the analytical aspects of their work. In our case we will be using the default basketballreference.com which is the golden standard for comprehensive NBA data.

We will be using NBAStatR in conjunction with dplyr and ggplot2 in R Studio to clean, filter, visualize and do some statistical measurements to really get to know our data. Dplyr is a powerful R library that provides a wide range of functions for efficient data manipulation and cleaning. When it comes to data cleaning, dplyr offers several essential functions that facilitate the process and ensure data integrity. With ggplot2, you can create a variety of plots, including scatter plots, line plots, bar charts, histograms, box plots, and more. It provides a flexible and intuitive syntax that allows users to specify the data, aesthetics (such as mapping variables to visual attributes like color or size), and layers of a plot.

We will later analyze some advanced analytics using a web scraper and put our clean and shaped data into a K-means clustering algorithm to see if we recognize any patterns that might support the players claims that the new ball is responsible for the slight scoring slump early in the 2021-2022 season.


  
![image](https://github.com/rickycamilo/R-Comparing-NBA-2021-2022-Season-Shooting-to-Seasons-Past/assets/81391266/45b28364-879c-4332-9535-65babe3ce7c1)


https://github.com/rickycamilo/R-Comparing-NBA-2021-2022-Season-Shooting-to-Seasons-Past

![image](https://github.com/rickycamilo/R-Comparing-NBA-2021-2022-Season-Shooting-to-Seasons-Past/assets/81391266/0a8fd29b-ba9e-45a4-9028-e582386a737e)

