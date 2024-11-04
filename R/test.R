# Setze den CRAN-Spiegel
options(repos = c(CRAN = "https://cloud.r-project.org/"))

# Installiere ggplot2, falls es noch nicht installiert ist
if (!require("ggplot2")) install.packages("ggplot2")
library(ggplot2)

# Generiere zufällige Daten
set.seed(42)  # Für Reproduzierbarkeit
data <- rnorm(1000)  # 1000 zufällige normalverteilte Werte

# Speichere das Histogramm als PNG-Datei
png("histogram.png", width = 800, height = 600)  # Erstelle eine PNG-Datei
ggplot(data = data.frame(x = data), aes(x = x)) +
  geom_histogram(bins = 30, fill = "skyblue", color = "black") +
  labs(title = "Histogramm zufälliger normalverteilten Daten",
       x = "Werte",
       y = "Häufigkeit") +
  theme_minimal()
dev.off()  # Schließe das Grafikgerät

cat("Das Histogramm wurde als 'histogram.png' gespeichert.\n")