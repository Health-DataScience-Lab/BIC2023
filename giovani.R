
library(ggplot2)

ggplot(iris, aes(iris$Sepal.Width, iris$Sepal.Length,
                 shape = Species, color = Species, fill = Species )) +
  geom_point(size = 3) +
  geom_smooth(method = "lm") +
  theme_classic() +
  labs(x = "Largura (cm)", y = "Comprimento (cm)" , title = "Proporções das Espécies") +
  theme(plot.title = element_text(size = 15, colour = "black", face = "bold")) +
  theme(axis.title = element_text(size = 12, colour = "black", face = "bold")) +
  theme(axis.text = element_text(size = 10, colour = "black")) +
  theme(axis.text.x = element_text(angle = 12, vjust = .25)) +
  theme(axis.text.y = element_text(angle = 20, vjust = .25)) +
  scale_x_continuous(limits = c(1,5), breaks = seq(1, 5, 0.5)) +
  scale_y_continuous(breaks = seq(0, 10, 0.25)) 
