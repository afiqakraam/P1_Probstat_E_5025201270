#A
dgeom(x = 3, prob = 0.20)

#B
mean(rgeom(n = 10000, p = 0.20) == 3)

#C
Berdasarkan output dari soal A dan B, diketahui jawaban antara dua soal tersebut tidak selalu sama dan tidak ada perbedaan yang terlalu jauh.

#D
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = 0.20)) %>%
  mutate(Failures = ifelse(x == 3, 3, "Lainnya")) %>%
ggplot(aes(x = factor(x), y = prob, fill = Gagal)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 Kegagalan Sebelum Sukses Pertama",
       subtitle = "Geometric(.2)",
       x = "Kegagalan sebelum kesuksesan pertama (x)",
       y = "Probabilitas") 
       
#E
rata = (1/0.20)
var = (1-0.20)/0.20^2