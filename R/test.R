# Setze den Plot-Viewer auf httpgd, um sicherzustellen, dass Plots angezeigt
options(device = httpgd::hgd)

# Der Rest deines Codes
options(repos = c(CRAN = "https://cloud.r-project.org/"))
if (!require("ggplot2")) install.packages("ggplot2")
library(ggplot2)

set.seed(42)
data <- rnorm(1000)

ggplot(data = data.frame(x = data), aes(x = x)) +
  geom_histogram(bins = 30, fill = "skyblue", color = "black") +
  labs(title = "Histogramm zufälliger normalverteilten Daten",
       x = "Werte",
       y = "Häufigkeit") +
  theme_minimal()


# library(httpgd)
# hgd()
# >R Plot: Open Httpgd Url
