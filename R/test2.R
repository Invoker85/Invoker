setwd("/Users/invoker/Documents/VSC/Invoker/R/files")
# Lade die benötigten Bibliotheken
library(ggplot2)

# Erstelle zufällige Daten
set.seed(42)  # Für reproduzierbare Ergebnisse
n <- 100
data <- data.frame(
  x = rnorm(n),
  y = rnorm(n),
  color = sample(c("A", "B", "C"), n, replace = TRUE)
)

# Erstelle das Streudiagramm
plot <- ggplot(data, aes(x = x, y = y, color = color)) +
  geom_point(size = 3, alpha = 0.6) +
  theme_minimal() +
  labs(title = "Cooles Streudiagramm in R",
       x = "X-Achse",
       y = "Y-Achse",
       color = "Kategorie") +
  scale_color_manual(values = c("A" = "blue", "B" = "red", "C" = "green"))

# Exportiere das Diagramm als PNG
ggsave("cool_scatter_plot.png", plot, width = 8, height = 6, dpi = 300)

# Alternativ, exportiere das Diagramm als PDF
ggsave("cool_scatter_plot.pdf", plot, width = 8, height = 6)
