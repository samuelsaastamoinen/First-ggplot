install.packages("ggplot2")
library(ggplot2)
cities <- data.frame(
  City = c("Seinäjoki", "Kajaani", "Naantali", "Oulu", "Espoo", "Turku", "Helsinki"),
  Latitude = c(62.791668, 64.222176, 60.466087, 65.021545, 60.205490, 60.454510, 60.192059),
  Longitude = c(22.841667, 27.727850, 22.025087, 25.469885, 24.655899, 22.264824, 24.945831)
)

ggplot(data = cities, aes(x = Longitude, y = Latitude)) +
  geom_point(aes(color = City), size = 3) +
  labs(title = "City Point Map", x = "Longitude", y = "Latitude") +
  theme_minimal()
