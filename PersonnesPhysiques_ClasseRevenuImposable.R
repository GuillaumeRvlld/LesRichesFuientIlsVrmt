#
# Lien :
# Nom : 



# Installer et charger les bibliothèques nécessaires
# install.packages("ggplot2")
library(ggplot2)

# 1) Données et visualisation simple --------------
## 2001 ---------------
df_2001 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(18389, 25397, 13278, 12702, 11034, 11034, 11645, 11644, 11775, 21716,
               17868, 13935, 10746, 8220, 12792, 6909, 3808, 2371, 4005, 1326,
               630, 893, 377),
  Pourcentage = c(7.9, 10.9, 5.7, 5.5, 4.7, 4.7, 5.0, 5.0, 5.1, 9.3,
                  7.7, 6.0, 4.6, 3.5, 5.5, 3.0, 1.6, 1.0, 1.7, 0.6,
                  0.3, 0.4, 0.2)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2001$Tranche <- factor(df_2001$Tranche, levels = ordre_tranches)
df_2001 <- df_2001[order(df_2001$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2001)

# Visualisation
library(ggplot2)

ggplot(df_2001, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") +
  labs(title = "2001",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2002 -------------
df_2002 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(18122, 25525, 12620, 12644, 10827, 10673, 11434, 11368, 11658, 21593,
               18053, 14424, 11207, 8534, 13633, 7172, 4090, 2562, 4039, 1337,
               658, 793, 289),
  Pourcentage = c(7.8, 10.9, 5.4, 5.4, 4.6, 4.6, 4.9, 4.9, 5.0, 9.3,
                  7.7, 6.2, 4.8, 3.7, 5.8, 3.1, 1.8, 1.1, 1.7, 0.6,
                  0.3, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2002$Tranche <- factor(df_2002$Tranche, levels = ordre_tranches)
df_2002 <- df_2002[order(df_2002$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2002)

# Visualisation
library(ggplot2)

ggplot(df_2002, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") +
  labs(title = "2002",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2003 ----------------
df_2003 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(18999, 25156, 12678, 12333, 11486, 10789, 11375, 11345, 11766, 21821,
               18217, 14343, 11205, 8577, 13634, 7272, 4209, 2619, 4091, 1363,
               680, 814, 294),
  Pourcentage = c(8.1, 10.7, 5.4, 5.2, 4.9, 4.6, 4.8, 4.8, 5.0, 9.3,
                  7.7, 6.1, 4.8, 3.6, 5.8, 3.1, 1.8, 1.1, 1.7, 0.6,
                  0.3, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2003$Tranche <- factor(df_2003$Tranche, levels = ordre_tranches)
df_2003 <- df_2003[order(df_2003$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2003)

# Visualisation
library(ggplot2)

ggplot(df_2003, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2003",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2004 --------------
df_2004 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(18719, 27308, 12772, 12429, 11444, 10969, 11440, 11522, 11821, 21562,
               18136, 13961, 11026, 8447, 13759, 7381, 4172, 2679, 4216, 1462,
               671, 905, 311),
  Pourcentage = c(7.9, 11.5, 5.4, 5.2, 4.8, 4.6, 4.8, 4.9, 5.0, 9.1,
                  7.6, 5.9, 4.7, 3.6, 5.8, 3.1, 1.8, 1.1, 1.8, 0.6,
                  0.3, 0.4, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2004$Tranche <- factor(df_2004$Tranche, levels = ordre_tranches)
df_2004 <- df_2004[order(df_2004$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2004)

# Visualisation
library(ggplot2)

ggplot(df_2004, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2004",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()






## 2005 --------------
df_2005 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(20055, 27717, 12785, 12503, 11729, 10911, 11649, 11377, 11434, 21297,
               17802, 14207, 11083, 8538, 13559, 7573, 4313, 2701, 4457, 1560,
               742, 983, 355),
  Pourcentage = c(8.4, 11.6, 5.3, 5.2, 4.9, 4.6, 4.9, 4.8, 4.8, 8.9,
                  7.4, 5.9, 4.6, 3.6, 5.7, 3.2, 1.8, 1.1, 1.9, 0.7,
                  0.3, 0.4, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2005$Tranche <- factor(df_2005$Tranche, levels = ordre_tranches)
df_2005 <- df_2005[order(df_2005$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2005)

# Visualisation
library(ggplot2)

ggplot(df_2005, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2005",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()



## 2006 ------------
df_2006 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(20275, 28870, 12980, 12659, 11832, 11155, 11451, 11471, 11698, 21068,
               17711, 13971, 11000, 8549, 13619, 7691, 4396, 2691, 4733, 1767,
               873, 1141, 423),
  Pourcentage = c(8.4, 11.9, 5.4, 5.2, 4.9, 4.6, 4.7, 4.7, 4.8, 8.7,
                  7.3, 5.8, 4.5, 3.5, 5.6, 3.2, 1.8, 1.1, 2.0, 0.7,
                  0.4, 0.5, 0.2)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2006$Tranche <- factor(df_2006$Tranche, levels = ordre_tranches)
df_2006 <- df_2006[order(df_2006$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2006)

# Visualisation
library(ggplot2)

ggplot(df_2006, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2006",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2007 ---------------
df_2007 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(20548, 29486, 12752, 12755, 12057, 10890, 11410, 11186, 11355, 20935,
               17733, 13932, 11118, 8789, 14326, 8036, 4741, 2934, 5154, 1934,
               971, 1339, 510),
  Pourcentage = c(8.4, 12.0, 5.2, 5.2, 4.9, 4.4, 4.7, 4.6, 4.6, 8.5,
                  7.2, 5.7, 4.5, 3.6, 5.8, 3.3, 1.9, 1.2, 2.1, 0.8,
                  0.4, 0.5, 0.2)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2007$Tranche <- factor(df_2007$Tranche, levels = ordre_tranches)
df_2007 <- df_2007[order(df_2007$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2007)

# Visualisation
library(ggplot2)

ggplot(df_2007, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2007",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()

## 2008 --------
df_2008 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(21196, 29681, 12953, 12448, 11819, 10820, 11300, 10977, 11060, 20623,
               17974, 14367, 11128, 8895, 14738, 8458, 5008, 3131, 5523, 2093,
               1132, 1495, 515),
  Pourcentage = c(8.6, 12.0, 5.2, 5.0, 4.8, 4.4, 4.6, 4.4, 4.5, 8.3,
                  7.3, 5.8, 4.5, 3.6, 6.0, 3.4, 2.0, 1.3, 2.2, 0.8,
                  0.5, 0.6, 0.2)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2008$Tranche <- factor(df_2008$Tranche, levels = ordre_tranches)
df_2008 <- df_2008[order(df_2008$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2008)

# Visualisation
library(ggplot2)

ggplot(df_2008, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2008",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()

## 2009 ----------
df_2009 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(22979, 29571, 13147, 12410, 11859, 10851, 11121, 11061, 10960, 20475,
               18339, 15161, 11785, 9223, 15374, 8966, 5239, 3330, 5581, 1978,
               1018, 1392, 421),
  Pourcentage = c(9.1, 11.7, 5.2, 4.9, 4.7, 4.3, 4.4, 4.4, 4.3, 8.1,
                  7.3, 6.0, 4.7, 3.7, 6.1, 3.6, 2.1, 1.3, 2.2, 0.8,
                  0.4, 0.6, 0.2)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2009$Tranche <- factor(df_2009$Tranche, levels = ordre_tranches)
df_2009 <- df_2009[order(df_2009$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2009)

# Visualisation
library(ggplot2)

ggplot(df_2009, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2009",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2010 ----------
df_2010 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(28300, 41727, 14335, 12061, 11789, 11516, 11457, 10689, 10082, 18566,
               16042, 13276, 10409, 8041, 13524, 7603, 4568, 2887, 5060, 1818,
               1025, 1247, 353),
  Pourcentage = c(11.0, 16.3, 5.6, 4.7, 4.6, 4.5, 4.5, 4.2, 3.9, 7.2,
                  6.3, 5.2, 4.1, 3.1, 5.3, 3.0, 1.8, 1.1, 2.0, 0.7,
                  0.4, 0.5, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2010$Tranche <- factor(df_2010$Tranche, levels = ordre_tranches)
df_2010 <- df_2010[order(df_2010$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2010)

# Visualisation
library(ggplot2)

ggplot(df_2010, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2010",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2011 ------------
df_2011 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(30181, 42358, 14296, 12131, 11865, 11780, 11585, 10832, 10091, 18810,
               16078, 13332, 10599, 8004, 13739, 7792, 4599, 2965, 5077, 1850,
               993, 1193, 316),
  Pourcentage = c(11.6, 16.3, 5.5, 4.7, 4.6, 4.5, 4.4, 4.2, 3.9, 7.2,
                  6.2, 5.1, 4.1, 3.1, 5.3, 3.0, 1.8, 1.1, 1.9, 0.7,
                  0.4, 0.5, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2011$Tranche <- factor(df_2011$Tranche, levels = ordre_tranches)
df_2011 <- df_2011[order(df_2011$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2011)

# Visualisation
library(ggplot2)

ggplot(df_2011, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2011",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2012 -------------
df_2012 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(32928, 43816, 14245, 11847, 11491, 11336, 11584, 10774, 10221, 19112,
               16423, 13375, 10682, 8161, 13946, 7860, 4657, 3053, 5091, 1823,
               961, 1197, 265),
  Pourcentage = c(12.4, 16.5, 5.4, 4.5, 4.3, 4.3, 4.4, 4.1, 3.9, 7.2,
                  6.2, 5.1, 4.0, 3.1, 5.3, 3.0, 1.8, 1.2, 1.9, 0.7,
                  0.4, 0.5, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2012$Tranche <- factor(df_2012$Tranche, levels = ordre_tranches)
df_2012 <- df_2012[order(df_2012$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2012)

# Visualisation
library(ggplot2)

ggplot(df_2012, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2012",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2013 ----------------
df_2013 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(35245, 44354, 14451, 11997, 11638, 11659, 11771, 11144, 10349, 19377,
               16499, 13887, 10917, 8353, 14154, 8009, 4953, 3200, 5440, 2074,
               992, 1346, 380),
  Pourcentage = c(13.0, 16.3, 5.3, 4.4, 4.3, 4.3, 4.3, 4.1, 3.8, 7.1,
                  6.1, 5.1, 4.0, 3.1, 5.2, 2.9, 1.8, 1.2, 2.0, 0.8,
                  0.4, 0.5, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2013$Tranche <- factor(df_2013$Tranche, levels = ordre_tranches)
df_2013 <- df_2013[order(df_2013$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2013, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2013",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2014 ------------
df_2014 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(38455, 45055, 14490, 11950, 11986, 11956, 12242, 11335, 10863, 20125,
               17050, 13901, 11096, 8451, 14661, 8412, 4994, 3324, 5667, 2097,
               1027, 1432, 449),
  Pourcentage = c(13.7, 16.0, 5.2, 4.3, 4.3, 4.3, 4.4, 4.0, 3.9, 7.2,
                  6.1, 5.0, 4.0, 3.0, 5.2, 3.0, 1.8, 1.2, 2.0, 0.8,
                  0.4, 0.5, 0.2)
)

# Réorganiser le dataframe par tranche dans l'ordre spécifié
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

df_2014$Tranche <- factor(df_2014$Tranche, levels = ordre_tranches)
df_2014 <- df_2014[order(df_2014$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2014, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2014",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2015 --------------
df_2015 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(41396, 45879, 14739, 12218, 12158, 12290, 12626, 11801, 11318, 20638,
               17250, 14219, 11128, 8448, 14673, 8465, 5148, 3323, 5762, 2188,
               1012, 1496, 412),
  Pourcentage = c(14.3, 15.9, 5.1, 4.2, 4.2, 4.3, 4.4, 4.1, 3.9, 7.2,
                  6.0, 4.9, 3.9, 2.9, 5.1, 2.9, 1.8, 1.2, 2.0, 0.8,
                  0.4, 0.5, 0.1)
)

# Réorganiser le dataframe par tranche dans l'ordre spécifié
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

df_2015$Tranche <- factor(df_2015$Tranche, levels = ordre_tranches)
df_2015 <- df_2015[order(df_2015$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2015, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2015",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()

## 2016 ----------
# Créer un DataFrame pour 2016
df_2016 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(43775, 47329, 14810, 12420, 12210, 12239, 12500, 11836, 11214, 20667,
               17226, 13965, 11129, 8645, 14707, 8603, 5176, 3228, 5917, 2153,
               1110, 1450, 453),
  Pourcentage = c(15.0, 16.2, 5.1, 4.2, 4.2, 4.2, 4.3, 4.0, 3.8, 7.1,
                  5.9, 4.8, 3.8, 3.0, 5.0, 2.9, 1.8, 1.1, 2.0, 0.7,
                  0.4, 0.5, 0.2)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

df_2016$Tranche <- factor(df_2016$Tranche, levels = ordre_tranches)
df_2016 <- df_2016[order(df_2016$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2016, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2016",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2017 -------------
# Créer un DataFrame pour 2017
df_2017 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(44734, 49093, 14712, 12149, 11940, 11720, 11919, 11573, 11117, 20407,
               17609, 14147, 11236, 8790, 14919, 8773, 5359, 3417, 6015, 2259,
               1045, 1467, 486),
  Pourcentage = c(15.2, 16.7, 5.0, 4.1, 4.1, 4.0, 4.0, 3.9, 3.8, 6.9,
                  6.0, 4.8, 3.8, 3.0, 5.1, 3.0, 1.8, 1.2, 2.0, 0.8,
                  0.4, 0.5, 0.2)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

df_2017$Tranche <- factor(df_2017$Tranche, levels = ordre_tranches)
df_2017 <- df_2017[order(df_2017$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2017, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2017",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2018 ------------
# Créer un DataFrame pour 2018
df_2018 <- data.frame(
  Tranche = c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
              "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
              "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
              "400k à 500k", "500k à 1Mio", "Plus de 1Mio"),
  Effectif = c(45224, 50143, 14670, 12443, 11857, 11898, 12211, 11696, 11097, 20888,
               17631, 14293, 11419, 8807, 15039, 8867, 5353, 3465, 6257, 2277,
               1107, 1544, 490),
  Pourcentage = c(15.1, 16.8, 4.9, 4.2, 4.0, 4.0, 4.1, 3.9, 3.7, 7.0,
                  5.9, 4.8, 3.8, 3.0, 5.0, 3.0, 1.8, 1.2, 2.1, 0.8,
                  0.4, 0.5, 0.2)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches <- c("Sans revenu imposable", "1 à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
                    "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k",
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 125k", 
                    "125k à 150k", "150k à 175k", "175k à 200k", "200k à 300k", "300k à 400k",
                    "400k à 500k", "500k à 1Mio", "Plus de 1Mio")

df_2018$Tranche <- factor(df_2018$Tranche, levels = ordre_tranches)
df_2018 <- df_2018[order(df_2018$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2018, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") + # Dégradé du rose clair au rouge foncé
  labs(title = "2018",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()






# 2) Comparer deux années (p.ex. 2003 et 2018) ------------
## En nombre sur X --------
# Réorganiser les dataframes par tranche dans l'ordre spécifié
df_2003$Tranche <- factor(df_2003$Tranche, levels = ordre_tranches)
df_2003 <- df_2003[order(df_2003$Tranche), ]

df_2018$Tranche <- factor(df_2018$Tranche, levels = ordre_tranches)
df_2018 <- df_2018[order(df_2018$Tranche), ]

# Créer un graphique à barres horizontales pour 2003
plot_2003 <- ggplot(df_2003, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") +
  labs(title = "2003",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()

# Créer un graphique à barres horizontales pour 2018
plot_2018 <- ggplot(df_2018, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") +
  labs(title = "2018",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()

# Afficher les deux graphiques côte à côte
library(gridExtra)
grid.arrange(plot_2003, plot_2018, nrow = 1)


## En pourcentage sur X --------
# Calculer les totaux pour chaque année
total_2003 <- sum(df_2003$Effectif)
total_2018 <- sum(df_2018$Effectif)

# Pondérer les pourcentages par rapport aux totaux
df_2003$Pourcentage_Pondere <- df_2003$Effectif / total_2003 * 100
df_2018$Pourcentage_Pondere <- df_2018$Effectif / total_2018 * 100

# Créer un graphique à barres horizontales pondéré pour 2003
plot_2003_pondere <- ggplot(df_2003, aes(x = Pourcentage_Pondere, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") +
  labs(title = "2003 (Pondéré)",
       x = "Pourcentage",
       y = "Tranche de revenu") +
  theme_minimal()

# Créer un graphique à barres horizontales pondéré pour 2018
plot_2018_pondere <- ggplot(df_2018, aes(x = Pourcentage_Pondere, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#FFC0CB", high = "#B22222") +
  labs(title = "2018 (Pondéré)",
       x = "Pourcentage",
       y = "Tranche de revenu") +
  theme_minimal()

# Afficher les deux graphiques côte à côte
grid.arrange(plot_2003_pondere, plot_2018_pondere, nrow = 1)






# 3) Evolution par tranche de revenu ------------------------
## "Plus de 1Mio" -------------
tranche <- "Plus de 1Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2001, Effectif = df_2001[df_2001$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2002, Effectif = df_2002[df_2002$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()


## "500k à 1Mio" -----------------
tranche <- "500k à 1Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2001, Effectif = df_2001[df_2001$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2002, Effectif = df_2002[df_2002$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()


## "400k à 500k" -----------------
tranche <- "400k à 500k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()


## "300k à 400k" -----------------
tranche <- "300k à 400k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()


## "200k à 300k" -----------------
tranche <- "200k à 300k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()


## "175k à 200k" -----------------
tranche <- "175k à 200k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()



## "150k à 175k" -----------------
tranche <- "150k à 175k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()



## "125k à 150k" -----------------
tranche <- "125k à 150k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()




## "100k à 125k" -----------------
tranche <- "100k à 125k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()




## "90k à 100k" -----------------
tranche <- "90k à 100k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()


## "80k à 90k" -----------------
tranche <- "80k à 90k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()


## "70k à 80k" -----------------
tranche <- "70k à 80k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()



## "60k à 70k" -----------------
tranche <- "60k à 70k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()



## "50k à 60k" -----------------
tranche <- "50k à 60k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()




## "45k à 50k" -----------------
tranche <- "45k à 50k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()




## "40k à 45k" -----------------
tranche <- "40k à 45k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()




## "35k à 40k" -----------------
tranche <- "35k à 40k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()






## "30k à 35k" -----------------
tranche <- "30k à 35k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()





## "25k à 30k" -----------------
tranche <- "25k à 30k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()





## "20k à 25k" -----------------
tranche <- "20k à 25k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()






## "15k à 20k" -----------------
tranche <- "15k à 20k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()





## "1 à 15k" -----------------
tranche <- "1 à 15k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()




## "Sans revenu imposable" -----------------
tranche <- "Sans revenu imposable"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2003, Effectif = df_2003[df_2003$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004[df_2004$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005[df_2005$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006[df_2006$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007[df_2007$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008[df_2008$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009[df_2009$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010[df_2010$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011[df_2011$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012[df_2012$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013[df_2013$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014[df_2014$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015[df_2015$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016[df_2016$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017[df_2017$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018[df_2018$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") + # Données "Ensemble des contribuables" (https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#1)
  theme_minimal()


# All in one --------
library(ggplot2)
# Liste des tranches de revenu
tranches <- c("Plus de 1Mio", "500k à 1Mio", "400k à 500k", "300k à 400k", 
              "200k à 300k", "180k à 200k", "140k à 160k", "120k à 140k", 
              "90k à 100k", "80k à 90k", "70k à 80k", "60k à 70k", 
              "50k à 60k", "45k à 50k", "40k à 45k", "35k à 40k", 
              "30k à 35k", "25k à 30k", "20k à 25k", "15k à 20k", 
              "10k à 15k", "1 à 5k", "Sans revenu brut")

# Créer un dataframe vide pour stocker toutes les données
df_all_tranches <- data.frame()

# Charger les données par année et tranche de revenu
for (année in 2001:2018) {
  # Charger les données de l'année courante
  df_annuelle <- get(paste0("df_", année))
  
  # Filtrer les tranches et ajouter l'année correspondante
  for (tranche in tranches) {
    effectif <- ifelse(tranche %in% df_annuelle$Tranche,
                       df_annuelle[df_annuelle$Tranche == tranche, ]$Effectif, NA)
    df_all_tranches <- rbind(df_all_tranches, data.frame(Année = année, Tranche = tranche, Effectif = effectif))
  }
}

# Filtrer les valeurs non nulles pour le plot
df_all_tranches <- df_all_tranches[!is.na(df_all_tranches$Effectif), ]

# Créer le graphique
ggplot(df_all_tranches, aes(x = Année, y = Effectif, color = Tranche, group = Tranche)) +
  geom_line() +
  geom_point() +
  labs(title = "Évolution du nombre de contribuables par tranche de revenu (2001-2018)",
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal() +
  theme(legend.position = "bottom", legend.title = element_blank())



# Avec les noms sur le côté
library(dplyr)
# Ajouter une colonne pour l'année maximum afin de positionner les labels à la fin des lignes
df_labels <- df_all_tranches %>%
  group_by(Tranche) %>%
  filter(Année == max(Année))
# Créer le graphique avec les labels à droite
ggplot(df_all_tranches, aes(x = Année, y = Effectif, color = Tranche, group = Tranche)) +
  geom_line() +
  geom_point() +
  geom_text(data = df_labels, aes(label = Tranche), hjust = -0.1, vjust = 0, size = 3) +
  labs(title = "Évolution du nombre de contribuables par tranche de revenu (2001-2018)",
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal() +
  theme(legend.position = "none", legend.title = element_blank()) +
  xlim(2001, 2020)  # Ajuste l'échelle pour laisser de l'espace aux labels



# All in one, interactif ------------
install.packages("plotly")
library(ggplot2)
library(plotly)
library(dplyr)

# Graphique ggplot
p <- ggplot(df_all_tranches, aes(x = Année, 
                                 y = Effectif, 
                                 color = Tranche, 
                                 # group = Tranche
)) +
  geom_line() +
  geom_point() +
  geom_text(data = df_labels, aes(label = Tranche), hjust = -0.1, vjust = 0, size = 3) +
  labs(title = "Canton de Genève - Évolution du nombre de contribuables par tranche de revenu brut (2001-2018)",
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal() +
  theme(legend.position = "none", legend.title = element_blank()) +
  xlim(2001, 2020)

# Convertir en graphique interactif
ggplotly(p)




