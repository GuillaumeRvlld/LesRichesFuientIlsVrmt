# Taxations des contribuables personnes physiques imposés au barème ordinaire, selon la classe de revenu brut, depuis 2001
# Lien : https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#3
# Nom : T 20.02.1.01 	Taxations des contribuables personnes physiques imposés au barème ordinaire, selon la classe de revenu brut, depuis 2001

# Installer et charger les bibliothèques nécessaires
# install.packages("ggplot2")
library(ggplot2)

# 1) Données et visualisation simple --------------
## 2001 ---------------
df_2001 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", 
              "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", "160k à 180k", 
              "180k à 200k", "200k à 300k", "300k à 400k", "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(12361, 6923, 6312, 6782, 9959, 10209, 9086, 8096, 8342, 8241, 8726, 17129, 16757, 15706, 
               13504, 11231, 17549, 11870, 7996, 5591, 4018, 9235, 2882, 1375, 1857, 487, 270),
  Pourcentage = c(5.3, 3.0, 2.7, 2.9, 4.3, 4.4, 3.9, 3.5, 3.6, 3.5, 3.8, 7.4, 7.2, 6.8, 5.8, 4.8, 7.5, 
                  5.1, 3.4, 2.4, 1.7, 4.0, 1.2, 0.6, 0.8, 0.2, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", 
                    "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", 
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", 
                    "140k à 160k", "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2001$Tranche <- factor(df_2001$Tranche, levels = ordre_tranches)
df_2001 <- df_2001[order(df_2001$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2001)

# Créer un graphique à barres horizontales pour les données de 2001
library(ggplot2)

ggplot(df_2001, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2001",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2002 -----------
df_2002 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", 
              "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", "160k à 180k", 
              "180k à 200k", "200k à 300k", "300k à 400k", "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(11299, 7035, 6290, 6677, 9333, 10361, 9291, 7981, 8442, 8229, 8641, 16984, 16875, 15728, 
               13537, 11568, 17740, 12322, 8306, 5878, 4212, 9758, 2922, 1372, 1809, 474, 191),
  Pourcentage = c(4.8, 3.0, 2.7, 2.9, 4.0, 4.4, 4.0, 3.4, 3.6, 3.5, 3.7, 7.3, 7.2, 6.7, 5.8, 5.0, 7.6, 
                  5.3, 3.6, 2.5, 1.8, 4.2, 1.3, 0.6, 0.8, 0.2, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", 
                    "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", 
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", 
                    "140k à 160k", "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2002$Tranche <- factor(df_2002$Tranche, levels = ordre_tranches)
df_2002 <- df_2002[order(df_2002$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2002)

# Créer un graphique à barres horizontales pour les données de 2002
library(ggplot2)

ggplot(df_2002, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2002",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()

## 2003 -------------
df_2003 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", 
              "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", "160k à 180k", 
              "180k à 200k", "200k à 300k", "300k à 400k", "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(10908, 7477, 6083, 6601, 9274, 9439, 10084, 8286, 8489, 8191, 8708, 16879, 17123, 15832, 
               13823, 11527, 17958, 12500, 8659, 5894, 4329, 10015, 3089, 1366, 1889, 460, 183),
  Pourcentage = c(4.6, 3.2, 2.6, 2.8, 3.9, 4.0, 4.3, 3.5, 3.6, 3.5, 3.7, 7.2, 7.3, 6.7, 5.9, 4.9, 7.6, 
                  5.3, 3.7, 2.5, 1.8, 4.3, 1.3, 0.6, 0.8, 0.2, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", 
                    "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", 
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", 
                    "140k à 160k", "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2003$Tranche <- factor(df_2003$Tranche, levels = ordre_tranches)
df_2003 <- df_2003[order(df_2003$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2003)

# Créer un graphique à barres horizontales pour les données de 2003
library(ggplot2)

ggplot(df_2003, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2003",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()

## 2004 ------------
df_2004 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", 
              "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", "160k à 180k", 
              "180k à 200k", "200k à 300k", "300k à 400k", "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(9382, 10054, 6142, 6583, 9094, 9681, 10103, 8256, 8536, 8293, 8649, 16879, 17030, 15838, 
               13867, 11514, 17775, 12582, 8727, 6180, 4298, 10245, 3247, 1456, 2018, 477, 206),
  Pourcentage = c(4.0, 4.2, 2.6, 2.8, 3.8, 4.1, 4.3, 3.5, 3.6, 3.5, 3.6, 7.1, 7.2, 6.7, 5.8, 4.9, 7.5, 
                  5.3, 3.7, 2.6, 1.8, 4.3, 1.4, 0.6, 0.9, 0.2, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", 
                    "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", 
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", 
                    "140k à 160k", "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2004$Tranche <- factor(df_2004$Tranche, levels = ordre_tranches)
df_2004 <- df_2004[order(df_2004$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2004)

# Créer un graphique à barres horizontales pour les données de 2004
library(ggplot2)

ggplot(df_2004, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2004",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()

## 2005 -----------------
df_2005 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", 
              "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", "160k à 180k", 
              "180k à 200k", "200k à 300k", "300k à 400k", "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(10246, 10294, 6298, 6514, 8980, 9586, 10151, 8566, 8508, 8246, 8801, 16642, 16623, 15670, 
               14021, 11698, 17645, 12586, 8784, 6226, 4496, 10728, 3475, 1601, 2175, 518, 252),
  Pourcentage = c(4.3, 4.3, 2.6, 2.7, 3.8, 4.0, 4.2, 3.6, 3.6, 3.4, 3.7, 7.0, 6.9, 6.5, 5.9, 4.9, 7.4, 
                  5.3, 3.7, 2.6, 1.9, 4.5, 1.5, 0.7, 0.9, 0.2, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", 
                    "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", 
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", 
                    "140k à 160k", "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2005$Tranche <- factor(df_2005$Tranche, levels = ordre_tranches)
df_2005 <- df_2005[order(df_2005$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2005)

# Créer un graphique à barres horizontales pour les données de 2005
library(ggplot2)

ggplot(df_2005, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2005",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()



## 2006 ------------------
df_2006 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", 
              "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", "160k à 180k", 
              "180k à 200k", "200k à 300k", "300k à 400k", "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(10469, 10805, 6317, 6586, 9351, 9789, 9867, 8594, 8677, 8316, 8691, 16729, 16613, 15662, 
               13990, 11498, 17825, 12466, 9086, 6258, 4631, 10898, 3707, 1760, 2528, 620, 291),
  Pourcentage = c(4.3, 4.5, 2.6, 2.7, 3.9, 4.0, 4.1, 3.6, 3.6, 3.4, 3.6, 6.9, 6.9, 6.5, 5.8, 4.8, 7.4, 
                  5.2, 3.8, 2.6, 1.9, 4.5, 1.5, 0.7, 1.0, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", 
                    "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", 
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", 
                    "140k à 160k", "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2006$Tranche <- factor(df_2006$Tranche, levels = ordre_tranches)
df_2006 <- df_2006[order(df_2006$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2006)

# Créer un graphique à barres horizontales pour les données de 2006
library(ggplot2)

ggplot(df_2006, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2006",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2007 ---------------
df_2007 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", 
              "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", "160k à 180k", 
              "180k à 200k", "200k à 300k", "300k à 400k", "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(10527, 11370, 6392, 6824, 9231, 9702, 10141, 8673, 8573, 8309, 8471, 16422, 16045, 15295, 
               14098, 11861, 17809, 12749, 9303, 6531, 4821, 11645, 4095, 1938, 2927, 788, 351),
  Pourcentage = c(4.3, 4.6, 2.6, 2.8, 3.8, 4.0, 4.1, 3.5, 3.5, 3.4, 3.5, 6.7, 6.6, 6.2, 5.8, 4.8, 7.3, 
                  5.2, 3.8, 2.7, 2.0, 4.8, 1.7, 0.8, 1.2, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", 
                    "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", 
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", 
                    "140k à 160k", "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2007$Tranche <- factor(df_2007$Tranche, levels = ordre_tranches)
df_2007 <- df_2007[order(df_2007$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2007)

# Créer un graphique à barres horizontales pour les données de 2007
library(ggplot2)

ggplot(df_2007, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2007",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()

## 2008 --------------
df_2008 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", 
              "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", "160k à 180k", 
              "180k à 200k", "200k à 300k", "300k à 400k", "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(10863, 10979, 6489, 7062, 9608, 9851, 10115, 8427, 8449, 8079, 8420, 16556, 15920, 15032, 
               13887, 12003, 18054, 12938, 9615, 6827, 5026, 12245, 4333, 2194, 3223, 802, 337),
  Pourcentage = c(4.4, 4.4, 2.6, 2.9, 3.9, 4.0, 4.1, 3.4, 3.4, 3.3, 3.4, 6.7, 6.4, 6.1, 5.6, 4.9, 7.3, 
                  5.2, 3.9, 2.8, 2.0, 5.0, 1.8, 0.9, 1.3, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", 
                    "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", 
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", 
                    "140k à 160k", "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2008$Tranche <- factor(df_2008$Tranche, levels = ordre_tranches)
df_2008 <- df_2008[order(df_2008$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2008)

# Créer un graphique à barres horizontales pour les données de 2008
library(ggplot2)

ggplot(df_2008, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2008",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2009 ----------
df_2009 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", 
              "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", "160k à 180k", 
              "180k à 200k", "200k à 300k", "300k à 400k", "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(12133, 11605, 6472, 6915, 9747, 9762, 10265, 8579, 8225, 8217, 8178, 16504, 15850, 15087, 
               13778, 12534, 19093, 13519, 9686, 7235, 5342, 12960, 4318, 2159, 3092, 735, 251),
  Pourcentage = c(4.8, 4.6, 2.6, 2.7, 3.9, 3.9, 4.1, 3.4, 3.3, 3.3, 3.2, 6.5, 6.3, 6.0, 5.5, 5.0, 7.6, 
                  5.4, 3.8, 2.9, 2.1, 5.1, 1.7, 0.9, 1.2, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", 
                    "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", 
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", 
                    "140k à 160k", "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2009$Tranche <- factor(df_2009$Tranche, levels = ordre_tranches)
df_2009 <- df_2009[order(df_2009$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2009)

# Créer un graphique à barres horizontales pour les données de 2009
library(ggplot2)

ggplot(df_2009, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2009",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2010 ------------
df_2010 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", 
              "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", "160k à 180k", 
              "180k à 200k", "200k à 300k", "300k à 400k", "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(12468, 11976, 6766, 7209, 9838, 9970, 10339, 8566, 8221, 8422, 8266, 16724, 16114, 15430, 
               14062, 12435, 19325, 13495, 9923, 7472, 5543, 13211, 4557, 2182, 2995, 656, 210),
  Pourcentage = c(4.9, 4.7, 2.6, 2.8, 3.8, 3.9, 4.0, 3.3, 3.2, 3.3, 3.2, 6.5, 6.3, 6.0, 5.5, 4.9, 7.5, 
                  5.3, 3.9, 2.9, 2.2, 5.2, 1.8, 0.9, 1.2, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", 
                    "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", 
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", 
                    "140k à 160k", "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2010$Tranche <- factor(df_2010$Tranche, levels = ordre_tranches)
df_2010 <- df_2010[order(df_2010$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2010)

# Créer un graphique à barres horizontales pour les données de 2010
library(ggplot2)

ggplot(df_2010, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2010",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2011 ----------
df_2011 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", "25k à 30k", 
              "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", 
              "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", "160k à 180k", 
              "180k à 200k", "200k à 300k", "300k à 400k", "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(13234, 12280, 7168, 7464, 9594, 9863, 10416, 8568, 8298, 8189, 8341, 16947, 16391, 15676, 
               14147, 12540, 19537, 13740, 10235, 7662, 5732, 13786, 4700, 2188, 2961, 605, 204),
  Pourcentage = c(5.1, 4.7, 2.8, 2.9, 3.7, 3.8, 4.0, 3.3, 3.2, 3.1, 3.2, 6.5, 6.3, 6.0, 5.4, 4.8, 7.5, 
                  5.3, 3.9, 2.9, 2.2, 5.3, 1.8, 0.8, 1.1, 0.2, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", "20k à 25k", 
                    "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", "45k à 50k", "50k à 60k", 
                    "60k à 70k", "70k à 80k", "80k à 90k", "90k à 100k", "100k à 120k", "120k à 140k", 
                    "140k à 160k", "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2011$Tranche <- factor(df_2011$Tranche, levels = ordre_tranches)
df_2011 <- df_2011[order(df_2011$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2011)

# Créer un graphique à barres horizontales pour les données de 2011
library(ggplot2)

ggplot(df_2011, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2011",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()

## 2012 --------
df_2012 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
              "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k",
              "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
              "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
              "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
              "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(14681, 13425, 7618, 7830, 9767, 10086, 10391, 8227, 8024, 8068,
               8108, 16872, 16505, 15827, 14113, 12767, 19980, 13810, 10409, 
               7761, 5742, 14101, 4775, 2272, 2912, 592, 185),
  Pourcentage = c(5.5, 5.1, 2.9, 3.0, 3.7, 3.8, 3.9, 3.1, 3.0, 3.0,
                  3.1, 6.4, 6.2, 6.0, 5.3, 4.8, 7.5, 5.2, 3.9, 
                  2.9, 2.2, 5.3, 1.8, 0.9, 1.1, 0.2, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
                    "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", 
                    "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
                    "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
                    "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2012$Tranche <- factor(df_2012$Tranche, levels = ordre_tranches)
df_2012 <- df_2012[order(df_2012$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2012)

# Visualisation
library(ggplot2)

ggplot(df_2012, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2012",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()



## 2013 ---------
df_2013 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
              "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k",
              "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
              "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
              "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
              "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(16250, 13920, 7691, 7818, 10104, 9814, 10272, 8349, 7990, 8316,
               8337, 17105, 16924, 16056, 14512, 12983, 20447, 14106, 10566, 
               7945, 6033, 14802, 5130, 2443, 3292, 741, 243),
  Pourcentage = c(6.0, 5.1, 2.8, 2.9, 3.7, 3.6, 3.8, 3.1, 2.9, 3.1,
                  3.1, 6.3, 6.2, 5.9, 5.3, 4.8, 7.5, 5.2, 3.9, 
                  2.9, 2.2, 5.4, 1.9, 0.9, 1.2, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
                    "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", 
                    "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
                    "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
                    "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2013$Tranche <- factor(df_2013$Tranche, levels = ordre_tranches)
df_2013 <- df_2013[order(df_2013$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2013)

# Visualisation
library(ggplot2)

ggplot(df_2013, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2013",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()



## 2014 ----------
df_2014 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
              "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k",
              "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
              "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
              "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
              "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(17580, 14564, 7843, 8097, 9946, 10160, 10477, 8516, 8109, 8401,
               8470, 17359, 17628, 16860, 14982, 13376, 20849, 14438, 11113, 
               8094, 6246, 15369, 5393, 2498, 3520, 817, 313),
  Pourcentage = c(6.3, 5.2, 2.8, 2.9, 3.5, 3.6, 3.7, 3.0, 2.9, 3.0,
                  3.0, 6.2, 6.3, 6.0, 5.3, 4.8, 7.4, 5.1, 4.0, 
                  2.9, 2.2, 5.5, 1.9, 0.9, 1.3, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
                    "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", 
                    "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
                    "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
                    "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2014$Tranche <- factor(df_2014$Tranche, levels = ordre_tranches)
df_2014 <- df_2014[order(df_2014$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2014)

library(ggplot2)

ggplot(df_2014, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2014",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2015 ---------
df_2015 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
              "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k",
              "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
              "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
              "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
              "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(19634, 14631, 8218, 8338, 10092, 10182, 10400, 8425, 8273, 8532,
               8693, 17904, 18089, 17441, 15527, 13933, 21314, 14652, 11180, 
               8295, 6369, 15656, 5482, 2591, 3622, 827, 287),
  Pourcentage = c(6.8, 5.1, 2.9, 2.9, 3.5, 3.5, 3.6, 2.9, 2.9, 3.0,
                  3.0, 6.2, 6.3, 6.0, 5.4, 4.8, 7.4, 5.1, 3.9, 
                  2.9, 2.2, 5.4, 1.9, 0.9, 1.3, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
                    "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", 
                    "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
                    "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
                    "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2015$Tranche <- factor(df_2015$Tranche, levels = ordre_tranches)
df_2015 <- df_2015[order(df_2015$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2015)

# Visualisation
library(ggplot2)

ggplot(df_2015, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2015",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2016 -----------
df_2016 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
              "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k",
              "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
              "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
              "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
              "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(21210, 15281, 8646, 8786, 10113, 9819, 10572, 8755, 8191, 8642,
               8740, 17672, 17855, 17404, 15564, 13841, 21428, 14820, 11371, 
               8329, 6461, 16025, 5695, 2641, 3686, 926, 289),
  Pourcentage = c(7.2, 5.2, 3.0, 3.0, 3.5, 3.4, 3.6, 3.0, 2.8, 3.0,
                  3.0, 6.0, 6.1, 5.9, 5.3, 4.7, 7.3, 5.1, 3.9, 
                  2.8, 2.2, 5.5, 2.0, 0.9, 1.3, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
                    "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", 
                    "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
                    "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
                    "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2016$Tranche <- factor(df_2016$Tranche, levels = ordre_tranches)
df_2016 <- df_2016[order(df_2016$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2016)

# Visualisation
library(ggplot2)

ggplot(df_2016, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2016",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2017 ----------
df_2017 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
              "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k",
              "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
              "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
              "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
              "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(21016, 16130, 9334, 8898, 10300, 9864, 10912, 8913, 8336, 8601,
               8656, 17747, 17644, 17093, 15435, 13886, 21382, 14980, 11417, 
               8355, 6432, 16092, 5759, 2704, 3700, 980, 320),
  Pourcentage = c(7.1, 5.5, 3.2, 3.0, 3.5, 3.4, 3.7, 3.0, 2.8, 2.9,
                  2.9, 6.0, 6.0, 5.8, 5.2, 4.7, 7.3, 5.1, 3.9, 
                  2.8, 2.2, 5.5, 2.0, 0.9, 1.3, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
                    "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", 
                    "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
                    "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
                    "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2017$Tranche <- factor(df_2017$Tranche, levels = ordre_tranches)
df_2017 <- df_2017[order(df_2017$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2017)

# Visualisation
library(ggplot2)

ggplot(df_2017, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2017",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()


## 2018 -------
df_2018 <- data.frame(
  Tranche = c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
              "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k",
              "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
              "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
              "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
              "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio"),
  Effectif = c(20458, 16779, 9498, 9046, 9973, 9943, 11238, 9128, 8724, 8602,
               8785, 17959, 17918, 17343, 15552, 13916, 21734, 15243, 11500, 
               8481, 6450, 16483, 5944, 2820, 3830, 993, 336),
  Pourcentage = c(6.9, 5.6, 3.2, 3.0, 3.3, 3.3, 3.8, 3.1, 2.9, 2.9,
                  2.9, 6.0, 6.0, 5.8, 5.2, 4.7, 7.3, 5.1, 3.9, 
                  2.8, 2.2, 5.5, 2.0, 0.9, 1.3, 0.3, 0.1)
)

# Créer un vecteur d'indexage pour trier les tranches correctement
ordre_tranches <- c("Sans revenu brut", "1 à 5k", "5k à 10k", "10k à 15k", "15k à 20k", 
                    "20k à 25k", "25k à 30k", "30k à 35k", "35k à 40k", "40k à 45k", 
                    "45k à 50k", "50k à 60k", "60k à 70k", "70k à 80k", "80k à 90k", 
                    "90k à 100k", "100k à 120k", "120k à 140k", "140k à 160k", 
                    "160k à 180k", "180k à 200k", "200k à 300k", "300k à 400k", 
                    "400k à 500k", "500k à 1Mio", "1Mio à 2Mio", "Plus de 2Mio")

# Réorganiser le dataframe par tranche dans l'ordre spécifié
df_2018$Tranche <- factor(df_2018$Tranche, levels = ordre_tranches)
df_2018 <- df_2018[order(df_2018$Tranche), ]

# Afficher le dataframe réorganisé
print(df_2018)

# Visualisation
library(ggplot2)

ggplot(df_2018, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
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
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2003",
       x = "Nombre",
       y = "Tranche de revenu") +
  theme_minimal()

# Créer un graphique à barres horizontales pour 2018
plot_2018 <- ggplot(df_2018, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
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
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2003 (Pondéré)",
       x = "Pourcentage",
       y = "Tranche de revenu") +
  theme_minimal()

# Créer un graphique à barres horizontales pondéré pour 2018
plot_2018_pondere <- ggplot(df_2018, aes(x = Pourcentage_Pondere, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "2018 (Pondéré)",
       x = "Pourcentage",
       y = "Tranche de revenu") +
  theme_minimal()

# Afficher les deux graphiques côte à côte
grid.arrange(plot_2003_pondere, plot_2018_pondere, nrow = 1)




# 3) Evolution par tranche de revenu ------------------------
## "Plus de 2Mio" -------------
tranche <- "Plus de 2Mio"

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



## "1Mio à 2Mio" -------------
tranche <- "1Mio à 2Mio"

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


## "180k à 200k" -----------------
tranche <- "180k à 200k"

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



## "140k à 160k" -----------------
tranche <- "140k à 160k"

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


## "120k à 140k" -----------------
tranche <- "120k à 140k"

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


## "10k à 15k" -----------------
tranche <- "10k à 15k"

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


## "1 à 5k" -----------------
tranche <- "1 à 5k"

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


## "Sans revenu brut" -----------------
tranche <- "Sans revenu brut"

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
tranches <- c("Plus de 2Mio", "1Mio à 2Mio", "500k à 1Mio", "400k à 500k",
              "300k à 400k", "200k à 300k", "180k à 200k", "140k à 160k",
              "120k à 140k", "90k à 100k", "80k à 90k", "70k à 80k",
              "60k à 70k", "50k à 60k", "45k à 50k", "40k à 45k",
              "35k à 40k", "30k à 35k", "25k à 30k", "20k à 25k",
              "15k à 20k", "10k à 15k", "1 à 5k", "Sans revenu brut")

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
