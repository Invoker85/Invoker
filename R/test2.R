# Setze den Plot-Viewer auf httpgd, um sicherzustellen, dass Plots angezeigt werden
options(device = httpgd::hgd)

# Setze den CRAN-Spiegel
options(repos = c(CRAN = "https://cloud.r-project.org/"))

# Installiere ggplot2, falls es noch nicht installiert ist
if (!require("ggplot2")) install.packages("ggplot2")
library(ggplot2)

# Generiere zufällige Daten
set.seed(42)  # Für Reproduzierbarkeit
x <- rnorm(1000)  # 1000 zufällige normalverteilte Werte für x
y <- 2 * x + rnorm(1000)  # Lineare Beziehung zu x plus zufälliger Fehler für y

# Erstelle das Streudiagramm und zeige es an
ggplot(data = data.frame(x = x, y = y), aes(x = x, y = y)) +
  geom_point(color = "blue", alpha = 0.6) +  # Streudiagramm mit blauen Punkten
  labs(title = "Streudiagramm der Zufallsdaten",
       x = "x-Werte",
       y = "y-Werte") +
  theme_minimal()  # Minimalistisches Design
