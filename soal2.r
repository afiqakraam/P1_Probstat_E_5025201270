#A
dbinom(4, 20, 0.2)

#B
library(dplyr)
library(ggplot2)

data.frame(heads = 0:10, prob) %>%
  mutate(Heads = ifelse(heads == 4, "4", "Lainnya")) %>%
  ggplot(aes(x = factor(heads), y = prob, fill = Heads)) +
  geom_col(colour = "white")+
  geom_text(aes(label = round(prob, 2), y = prob + 0.01)) +
  labs(title = "Peluang apabila X = 4 sembuh.", x = "Sukses (x)", y = "Probabilitas") 

#C
n = 20
p = 0.2
rata = n*p
var = n*p*(1-p)
