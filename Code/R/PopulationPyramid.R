#---
#title: " Population Pyramid Animation Homework"
#author: "Wanying Ling"
#date: "10/24/2020"
#output: Country_pyramid.gif
---

devtools::install_github('walkerke/idbr')
library(idbr) 
library(ggplot2)
library(animation)
library(dplyr)
library(ggthemes)
library(dplyr)
library(ggplot2)
library(ggthemes)

## China ##
idb_api_key("5c5be335c198b34d4e596fb4b26108d2e9572243")

male <- idb1('CH', 2010:2050, sex = 'male') %>%
  mutate(POP = POP * -1,
         SEX = 'Male')
female <- idb1('CH', 2010:2050, sex = 'female') %>%
  mutate(SEX = 'Female')
china <- rbind(male, female) %>%
  mutate(abs_pop = abs(POP))

# Animate it with a for loop

saveGIF({
  
  for (i in 2010:2050) {
    
    title <- as.character(i)
    
    year_data <- filter(china, time == i)
    
    g1 <- ggplot(year_data, aes(x = AGE, y = POP, fill = SEX, width = 1)) +
      coord_fixed() + 
      coord_flip() +
      annotate('text', x = 98, y = -800000, 
               label = 'Data: US Census Bureau IDB; idbr R package', size = 3) + 
      geom_bar(data = subset(year_data, SEX == "Female"), stat = "identity") +
      geom_bar(data = subset(year_data, SEX == "Male"), stat = "identity") +
      scale_y_continuous(breaks = seq(-10000000, 10000000, 5000000),
                         labels = paste0(as.character(c(seq(10, 0, -5), c(5, 10))), "m"), 
                         limits = c(min(china$POP), max(china$POP))) +
      theme_economist(base_size = 14) + 
      scale_fill_manual(values = c('#ff9896', '#d62728')) + 
      ggtitle(paste0('Population structure of China, ', title)) + 
      ylab('Population') + 
      xlab('Age') + 
      theme(legend.position = "bottom", legend.title = element_blank()) + 
      guides(fill = guide_legend(reverse = TRUE))
    
    print(g1)
    
  }
  
}, movie.name = 'china_pyramid.gif', interval = 0.1, ani.width = 700, ani.height = 600)
write.csv(china,file = "C://Users//admini//Desktop//硕士//人口分析技术//人口金字塔数据//china.csv")

## Japan ##
idb_api_key("5c5be335c198b34d4e596fb4b26108d2e9572243")

male <- idb1('JA', 2010:2050, sex = 'male') %>%
  mutate(POP = POP * -1,
         SEX = 'Male')
female <- idb1('JA', 2010:2050, sex = 'female') %>%
  mutate(SEX = 'Female')
japan <- rbind(male, female) %>%
  mutate(abs_pop = abs(POP))

# Animate it with a for loop

saveGIF({
  
  for (i in 2010:2050) {
    
    title <- as.character(i)
    
    year_data <- filter(japan, time == i)
    
    g1 <- ggplot(year_data, aes(x = AGE, y = POP, fill = SEX, width = 1)) +
      coord_fixed() + 
      coord_flip() +
      annotate('text', x = 98, y = -800000, 
               label = 'Data: US Census Bureau IDB; idbr R package', size = 3) + 
      geom_bar(data = subset(year_data, SEX == "Female"), stat = "identity") +
      geom_bar(data = subset(year_data, SEX == "Male"), stat = "identity") +
      scale_y_continuous(breaks = seq(-1000000, 1000000, 500000),
                         labels = paste0(as.character(c(seq(1, 0, -0.5), c(0.5, 1))), "m"), 
                         limits = c(min(japan$POP), max(japan$POP))) +
      theme_economist(base_size = 14) + 
      scale_fill_manual(values = c('#ff9896', '#d62728')) + 
      ggtitle(paste0('Population structure of Japan, ', title)) + 
      ylab('Population') + 
      xlab('Age') + 
      theme(legend.position = "bottom", legend.title = element_blank()) + 
      guides(fill = guide_legend(reverse = TRUE))
    
    print(g1)
    
  }
  
}, movie.name = 'japan_pyramid.gif', interval = 0.1, ani.width = 700, ani.height = 600)
write.csv(japan,file = "C://Users//admini//Desktop//硕士//人口分析技术//人口金字塔数据//Japan.csv")

## South Korea ##
idb_api_key("5c5be335c198b34d4e596fb4b26108d2e9572243")

male <- idb1('KS', 2010:2050, sex = 'male') %>%
  mutate(POP = POP * -1,
         SEX = 'Male')
female <- idb1('KS', 2010:2050, sex = 'female') %>%
  mutate(SEX = 'Female')
Southkorea <- rbind(male, female) %>%
  mutate(abs_pop = abs(POP))

# Animate it with a for loop

saveGIF({
  
  for (i in 2010:2050) {
    
    title <- as.character(i)
    
    year_data <- filter(Southkorea, time == i)
    
    g1 <- ggplot(year_data, aes(x = AGE, y = POP, fill = SEX, width = 1)) +
      coord_fixed() + 
      coord_flip() +
      annotate('text', x = 98, y = -800000, 
               label = 'Data: US Census Bureau IDB; idbr R package', size = 3) + 
      geom_bar(data = subset(year_data, SEX == "Female"), stat = "identity") +
      geom_bar(data = subset(year_data, SEX == "Male"), stat = "identity") +
      scale_y_continuous(breaks = seq(-1000000, 1000000, 500000),
                         labels = paste0(as.character(c(seq(1, 0, -0.5), c(0.5, 1))), "m"), 
                         limits = c(min(Southkorea$POP), max(Southkorea$POP))) +
      theme_economist(base_size = 14) + 
      scale_fill_manual(values = c('#ff9896', '#d62728')) + 
      ggtitle(paste0('Population structure of South Korea, ', title)) + 
      ylab('Population') + 
      xlab('Age') + 
      theme(legend.position = "bottom", legend.title = element_blank()) + 
      guides(fill = guide_legend(reverse = TRUE))
    
    print(g1)
    
  }
  
}, movie.name = 'Southkorea_pyramid.gif', interval = 0.1, ani.width = 700, ani.height = 600)
write.csv(Southkorea,file = "C://Users//admini//Desktop//硕士//人口分析技术//人口金字塔数据//Southkorea.csv")

## Nouth Korea ##
idb_api_key("5c5be335c198b34d4e596fb4b26108d2e9572243")

male <- idb1('KN', 2010:2050, sex = 'male') %>%
  mutate(POP = POP * -1,
         SEX = 'Male')
female <- idb1('KN', 2010:2050, sex = 'female') %>%
  mutate(SEX = 'Female')
Northkorea <- rbind(male, female) %>%
  mutate(abs_pop = abs(POP))

# Animate it with a for loop

saveGIF({
  
  for (i in 2010:2050) {
    
    title <- as.character(i)
    
    year_data <- filter(Northkorea, time == i)
    
    g1 <- ggplot(year_data, aes(x = AGE, y = POP, fill = SEX, width = 1)) +
      coord_fixed() + 
      coord_flip() +
      annotate('text', x = 98, y = -800000, 
               label = 'Data: US Census Bureau IDB; idbr R package', size = 3) + 
      geom_bar(data = subset(year_data, SEX == "Female"), stat = "identity") +
      geom_bar(data = subset(year_data, SEX == "Male"), stat = "identity") +
      scale_y_continuous(breaks = seq(-1000000, 1000000, 500000),
                         labels = paste0(as.character(c(seq(1, 0, -0.5), c(0.5, 1))), "m"), 
                         limits = c(min(Northkorea$POP), max(Northkorea$POP))) +
      theme_economist(base_size = 14) + 
      scale_fill_manual(values = c('#ff9896', '#d62728')) + 
      ggtitle(paste0('Population structure of North Korea, ', title)) + 
      ylab('Population') + 
      xlab('Age') + 
      theme(legend.position = "bottom", legend.title = element_blank()) + 
      guides(fill = guide_legend(reverse = TRUE))
    
    print(g1)
    
  }
  
}, movie.name = 'Northkorea_pyramid.gif', interval = 0.1, ani.width = 700, ani.height = 600)
write.csv(Northkorea,file = "C://Users//admini//Desktop//硕士//人口分析技术//人口金字塔数据//Northkorea.csv")

