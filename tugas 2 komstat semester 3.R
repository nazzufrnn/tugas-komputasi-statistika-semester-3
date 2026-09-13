set.seed(2026)
data(iris)

#No.1 
data_iris <- iris %>%
  select(Sepal.Length)
data_iris

#No.2
sapply(iris, class)

#No.3
data_iris <- iris %>%
  mutate(
    turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil")
  )
data_iris

#No.4 
data_iris <- data_iris %>%
  rename(sepal = turunan)
data_iris

#No.5
sepal_besar <- filter(data_iris, sepal == "Besar", Species == "virginica")
sepal_besar

#No.6
jumlah_spesies <- data_iris %>%
  summarise(jumlah = n_distinct(Species))
jumlah_spesies

#No.7
setosa <- data_iris %>%
  filter(Species == "setosa")
setosa
versicolor <- data_iris %>%
  filter(Species == "versicolor")
versicolor
virginica <- data_iris %>%
  filter(Species == "virginica")
virginica

#No.8
setosa <- setosa %>%
  arrange(Sepal.Width)
setosa
versicolor <- versicolor %>%
  arrange(Sepal.Width)
versicolor
virginica <- virginica %>%
  arrange(Sepal.Width)
virginica