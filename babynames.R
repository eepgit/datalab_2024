# baby names

library(babynames)
bb_names <- babynames 

#10 Create a histogram of the name Marie since 1982
library(tidyverse)


ggplot(bb_names %>% 
         filter( name =="Marie", year >= "1982")) +
  geom_histogram(aes(x=year),binwidth=3,)

# better to see tally, use geom_col (column), NB y=n
ggplot(bb_names %>% 
         filter( name =="Marie", year >= "1982")) +
  geom_col( aes(x=year, y=n),fill="pink")

#11) Create a line plot for proportion of the name Joe, colored by sex. Make the lines a bit thicker and more transparent.
ggplot(bb_names %>% 
         filter( name =="Joe")) +
  geom_line( aes(x=year, y=prop,color=sex), alpha=0.5, lwd=2)

# 12) Add new x and y axis labels, as well as a chart title.
ggplot(bb_names %>% 
         filter( name =="Joe")) +
  geom_line( aes(x=year, y=prop,color=sex), alpha=0.5, lwd=2)+
  labs(x="Year", y="Proportion", title="Proportion of Babies Named Joe, by Sex")

# 13) Create a bar chart of all female names in 2002.
#reduce the data set to what we are interested in 
bb_F2002 <- bb_names %>% filter(sex=="F", year=="2002" ) 
         
# too many names, so identify the most popular                 
bb_F2002 %>% arrange(desc(prop)) 

# Top 10 names: Emily, Madison, Hannah, Emma, Alexis, Ashley, Abigail, Sarah, Samantha, Olivia


ggplot(data=bb_F2002 %>% filter(name %in% c("Emily", "Madison", "Hannah", "Emma", "Alexis", "Ashley", "Abigail", "Sarah", "Samantha", "Olivia")))+
  geom_col(aes(x=name, y=prop)) +
  coord_flip()

# 14) Make the bars transparent and filled with the color blue.
ggplot(data=bb_F2002 %>% filter(name %in% c("Emily", "Madison", "Hannah", "Emma", "Alexis", "Ashley", "Abigail", "Sarah", "Samantha", "Olivia")))+
  geom_col(aes(x=name, y=prop), fill="lightblue", alpha=0.75) +
  coord_flip()

#15) Create a new data set called the_nineties that only contains years from the 1990s.

the_nineties <- bb_names %>% filter( year >= 1990, year <= 1999)

#16) Save this dataset to your repository (use write_csv()).
write_csv(the_nineties, file ="babynames_nineties.csv")

 


