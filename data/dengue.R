library(readxl)

province_1 <- read_excel("./data/dengue_nepal/dengue_np.xlsx", 
                        sheet = 1)
province_2 <- read_excel("./data/dengue_nepal/dengue_np.xlsx", 
                         sheet = 2)
province_3 <- read_excel("./data/dengue_nepal/dengue_np.xlsx", 
                         sheet = 3)
province_4 <- read_excel("./data/dengue_nepal/dengue_np.xlsx", 
                         sheet = 4)
province_5 <- read_excel("./data/dengue_nepal/dengue_np.xlsx", 
                         sheet = 5)
province_6 <- read_excel("./data/dengue_nepal/dengue_np.xlsx", 
                         sheet = 6)
province_7 <- read_excel("./data/dengue_nepal/dengue_np.xlsx", 
                         sheet = 7)

library(tidyr)

pv3 <- province_3 %>% 
  pivot_longer(cols = starts_with("20"), names_to = "year", values_to = "cases")

pv3$year <- as.date(pv3$year)

library(dplyr)

pv3 %>% filter(year == "2070") 

library(ggplot2)

ggplot(pv3, aes(x = District, y = cases, fill = year)) +
  geom_bar(stat = "identity")


ggplot(pv3, aes(x = District, y = cases, fill = year)) +
  geom_line() + geom_point()






