# 
# Lien : https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#3
# Nom : 

# Installer et charger les bibliothèques nécessaires
# install.packages("ggplot2")
library(ggplot2)

# 1) Données et visualisation simple --------------
## 2001 ---- 
df_2001_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(172385, 1962, 1805, 3144, 2632, 2371, 2107, 4548, 3687, 5777,
               10229, 7017, 4448, 2546, 5489, 1088, 1259),
  Pourcentage = c(74.1, 0.8, 0.8, 1.4, 1.1, 1.0, 0.9, 2.0, 1.6, 2.5,
                  4.4, 3.0, 1.9, 1.1, 2.4, 0.5, 0.5)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2001_fortune_imposable$Tranche <- factor(df_2001_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2001_fortune_imposable <- df_2001_fortune_imposable[order(df_2001_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2001_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2001",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2002 -----
df_2002_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(172872, 2070, 1684, 3130, 2746, 2374, 2179, 4501, 3706, 5844,
               10498, 7039, 4584, 2515, 5343, 1060, 1110),
  Pourcentage = c(74.1, 0.9, 0.7, 1.3, 1.2, 1.0, 0.9, 1.9, 1.6, 2.5,
                  4.5, 3.0, 2.0, 1.1, 2.3, 0.5, 0.5)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2002_fortune_imposable$Tranche <- factor(df_2002_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2002_fortune_imposable <- df_2002_fortune_imposable[order(df_2002_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2002_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2002",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2003 ---------
df_2003_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(172724, 2206, 1878, 3203, 2763, 2365, 2190, 4568, 3822, 5989,
               10862, 7209, 4731, 2689, 5609, 1080, 1178),
  Pourcentage = c(73.5, 0.9, 0.8, 1.4, 1.2, 1.0, 0.9, 1.9, 1.6, 2.5,
                  4.6, 3.1, 2.0, 1.1, 2.4, 0.5, 0.5)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2003_fortune_imposable$Tranche <- factor(df_2003_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2003_fortune_imposable <- df_2003_fortune_imposable[order(df_2003_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2003_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2003",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2004 ------
df_2004_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(173424, 2159, 1828, 3106, 2794, 2524, 2220, 4715, 3935, 5967,
               11294, 7430, 4819, 2752, 5820, 1113, 1212),
  Pourcentage = c(73.1, 0.9, 0.8, 1.3, 1.2, 1.1, 0.9, 2.0, 1.7, 2.5,
                  4.8, 3.1, 2.0, 1.2, 2.5, 0.5, 0.5)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2004_fortune_imposable$Tranche <- factor(df_2004_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2004_fortune_imposable <- df_2004_fortune_imposable[order(df_2004_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2004_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2004",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2005 -------
df_2005_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(174787, 2132, 1725, 3097, 2717, 2337, 2147, 4624, 3856, 6058,
               11315, 7650, 5039, 2848, 6319, 1261, 1418),
  Pourcentage = c(73.0, 0.9, 0.7, 1.3, 1.1, 1.0, 0.9, 1.9, 1.6, 2.5,
                  4.7, 3.2, 2.1, 1.2, 2.6, 0.5, 0.6)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2005_fortune_imposable$Tranche <- factor(df_2005_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2005_fortune_imposable <- df_2005_fortune_imposable[order(df_2005_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2005_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2005",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2006 -----
# Création du DataFrame pour 2006
df_2006_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(175863, 2192, 1811, 3103, 2692, 2307, 2130, 4522, 3978, 6201,
               11315, 8003, 5233, 3019, 6681, 1378, 1596),
  Pourcentage = c(72.7, 0.9, 0.7, 1.3, 1.1, 1.0, 0.9, 1.9, 1.6, 2.6,
                  4.7, 3.3, 2.2, 1.2, 2.8, 0.6, 0.7)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2006_fortune_imposable$Tranche <- factor(df_2006_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2006_fortune_imposable <- df_2006_fortune_imposable[order(df_2006_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2006_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2006",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2007 --------
df_2007_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(177349, 2228, 1769, 3108, 2631, 2354, 2212, 4544, 3952, 6113,
               11689, 8300, 5384, 3100, 7013, 1459, 1686),
  Pourcentage = c(72.4, 0.9, 0.7, 1.3, 1.1, 1.0, 0.9, 1.9, 1.6, 2.5,
                  4.8, 3.4, 2.2, 1.3, 2.9, 0.6, 0.7)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2007_fortune_imposable$Tranche <- factor(df_2007_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2007_fortune_imposable <- df_2007_fortune_imposable[order(df_2007_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2007_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2007",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2008 ----- 
df_2008_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(180159, 2179, 1827, 3104, 2651, 2355, 2291, 4731, 3858, 6176,
               11809, 8265, 5395, 3020, 6711, 1291, 1512),
  Pourcentage = c(72.8, 0.9, 0.7, 1.3, 1.1, 1.0, 0.9, 1.9, 1.6, 2.5,
                  4.8, 3.3, 2.2, 1.2, 2.7, 0.5, 0.6)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2008_fortune_imposable$Tranche <- factor(df_2008_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2008_fortune_imposable <- df_2008_fortune_imposable[order(df_2008_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2008_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2008",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2009 ------
df_2009_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(185047, 2040, 1789, 3043, 2703, 2335, 2164, 4465, 3904, 5995,
               11854, 8194, 5591, 3192, 6961, 1422, 1542),
  Pourcentage = c(73.4, 0.8, 0.7, 1.2, 1.1, 0.9, 0.9, 1.8, 1.5, 2.4,
                  4.7, 3.2, 2.2, 1.3, 2.8, 0.6, 0.6)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2009_fortune_imposable$Tranche <- factor(df_2009_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2009_fortune_imposable <- df_2009_fortune_imposable[order(df_2009_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2009_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2009",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2010 -----
df_2010_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(192498, 1764, 1477, 2632, 2401, 2123, 1980, 4341, 3541, 5849,
               11443, 8149, 5506, 3121, 6869, 1341, 1340),
  Pourcentage = c(75.1, 0.7, 0.6, 1.0, 0.9, 0.8, 0.8, 1.7, 1.4, 2.3,
                  4.5, 3.2, 2.1, 1.2, 2.7, 0.5, 0.5)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2010_fortune_imposable$Tranche <- factor(df_2010_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2010_fortune_imposable <- df_2010_fortune_imposable[order(df_2010_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2010_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2010",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2011 --------
df_2011_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(195880, 1758, 1442, 2844, 2329, 2142, 1921, 4269, 3663, 5820,
               11618, 8336, 5635, 3247, 6904, 1374, 1284),
  Pourcentage = c(75.2, 0.7, 0.6, 1.1, 0.9, 0.8, 0.7, 1.6, 1.4, 2.2,
                  4.5, 3.2, 2.2, 1.2, 2.7, 0.5, 0.5)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2011_fortune_imposable$Tranche <- factor(df_2011_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2011_fortune_imposable <- df_2011_fortune_imposable[order(df_2011_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2011_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2011",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2012 ----------
df_2012_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(198933, 1851, 1490, 2818, 2376, 2207, 1969, 4309, 3597, 5973,
               11682, 8579, 5738, 3417, 7132, 1442, 1335),
  Pourcentage = c(75.1, 0.7, 0.6, 1.1, 0.9, 0.8, 0.7, 1.6, 1.4, 2.3,
                  4.4, 3.2, 2.2, 1.3, 2.7, 0.5, 0.5)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2012_fortune_imposable$Tranche <- factor(df_2012_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2012_fortune_imposable <- df_2012_fortune_imposable[order(df_2012_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2012_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2012",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()



## 2013 ---------
df_2013_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(202578, 1835, 1553, 2821, 2469, 2189, 2000, 4346, 3720, 6028,
               12039, 8938, 6106, 3676, 8150, 1737, 2004),
  Pourcentage = c(74.4, 0.7, 0.6, 1.0, 0.9, 0.8, 0.7, 1.6, 1.4, 2.2,
                  4.4, 3.3, 2.2, 1.4, 3.0, 0.6, 0.7)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2013_fortune_imposable$Tranche <- factor(df_2013_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2013_fortune_imposable <- df_2013_fortune_imposable[order(df_2013_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2013_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2013",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2014 -----
df_2014_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(208148, 1942, 1611, 2755, 2454, 2293, 2009, 4505, 3848, 6032,
               12532, 9328, 6442, 3914, 8850, 1990, 2365),
  Pourcentage = c(74.1, 0.7, 0.6, 1.0, 0.9, 0.8, 0.7, 1.6, 1.4, 2.2,
                  4.5, 3.3, 2.3, 1.4, 3.2, 0.7, 0.8)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2014_fortune_imposable$Tranche <- factor(df_2014_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2014_fortune_imposable <- df_2014_fortune_imposable[order(df_2014_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2014_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2014",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2015 -----
df_2015_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(212983, 2130, 1686, 2924, 2597, 2325, 2057, 4659, 3950, 6287,
               12746, 9591, 6794, 4150, 9256, 2060, 2392),
  Pourcentage = c(73.8, 0.7, 0.6, 1.0, 0.9, 0.8, 0.7, 1.6, 1.4, 2.2,
                  4.4, 3.3, 2.4, 1.4, 3.2, 0.7, 0.8)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2015_fortune_imposable$Tranche <- factor(df_2015_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2015_fortune_imposable <- df_2015_fortune_imposable[order(df_2015_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2015_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2015",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2016 -------
df_2016_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(211355, 2464, 1815, 3163, 2758, 2616, 2376, 4891, 4243, 6753,
               13441, 10305, 7282, 4399, 9975, 2229, 2697),
  Pourcentage = c(72.2, 0.8, 0.6, 1.1, 0.9, 0.9, 0.8, 1.7, 1.5, 2.3,
                  4.6, 3.5, 2.5, 1.5, 3.4, 0.8, 0.9)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2016_fortune_imposable$Tranche <- factor(df_2016_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2016_fortune_imposable <- df_2016_fortune_imposable[order(df_2016_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2016_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2016",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2017 --------
df_2017_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(209871, 2472, 1889, 3409, 2948, 2647, 2479, 5100, 4321, 6998,
               14014, 10786, 7671, 4559, 10391, 2348, 2983),
  Pourcentage = c(71.2, 0.8, 0.6, 1.2, 1.0, 0.9, 0.8, 1.7, 1.5, 2.4,
                  4.8, 3.7, 2.6, 1.6, 3.5, 0.8, 1.0)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2017_fortune_imposable$Tranche <- factor(df_2017_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2017_fortune_imposable <- df_2017_fortune_imposable[order(df_2017_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2017_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2017",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()



## 2018 ------
df_2018_fortune_imposable <- data.frame(
  Tranche = c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
              "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
              "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
              "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio"),
  Effectif = c(212825, 2358, 1854, 3392, 2929, 2699, 2502, 5328, 4390, 7131,
               14131, 10883, 7665, 4631, 10573, 2332, 3053),
  Pourcentage = c(71.3, 0.8, 0.6, 1.1, 1.0, 0.9, 0.8, 1.8, 1.5, 2.4,
                  4.7, 3.6, 2.6, 1.6, 3.5, 0.8, 1.0)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2018_fortune_imposable$Tranche <- factor(df_2018_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2018_fortune_imposable <- df_2018_fortune_imposable[order(df_2018_fortune_imposable$Tranche), ]

# Visualisation
library(ggplot2)
ggplot(df_2018_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") + # Dégradé de violet clair à violet foncé
  labs(title = "Répartition des fortunes imposables en 2018",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


# 2) Comparer deux années (p.ex. 2002 et 2018) ------------
## En nombre sur X --------
# Ajouter une colonne 'Année' à chaque DataFrame
df_2002_fortune_imposable$Annee <- "2002"
df_2018_fortune_imposable$Annee <- "2018"

# Combiner les DataFrames des deux années
df_combine_imposable <- rbind(df_2002_fortune_imposable, df_2018_fortune_imposable)

# Créer le graphique avec facet_wrap pour comparer les deux années
ggplot(df_combine_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") +
  labs(title = "Comparaison des répartition des fortunes imposables (2002 vs 2018)",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal() +
  facet_wrap(~ Annee, scales = "free_x")

## Créer un graphique en ligne pour comparer les pourcentages entre 2002 et 2018
ggplot(df_combine_imposable, aes(x = Tranche, y = Pourcentage, group = Annee, color = Annee)) +
  geom_line(size = 1.2) +
  geom_point(size = 2) +
  labs(title = "Comparaison des pourcentages par tranche de fortune imposable (2002 vs 2018)",
       x = "Tranche de fortune",
       y = "Pourcentage",
       color = "Année") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

## En nombre sur X --------
# Réorganiser les dataframes par tranche dans l'ordre spécifié
ordre_tranches_fortune_imposable <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                                      "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                                      "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                                      "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

df_2002_fortune_imposable$Tranche <- factor(df_2002_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2002_fortune_imposable <- df_2002_fortune_imposable[order(df_2002_fortune_imposable$Tranche), ]

df_2018_fortune_imposable$Tranche <- factor(df_2018_fortune_imposable$Tranche, levels = ordre_tranches_fortune_imposable)
df_2018_fortune_imposable <- df_2018_fortune_imposable[order(df_2018_fortune_imposable$Tranche), ]

# Créer un graphique à barres horizontales pour 2002
plot_2002_imposable <- ggplot(df_2002_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") +
  labs(title = "2002",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()

# Créer un graphique à barres horizontales pour 2018
plot_2018_imposable <- ggplot(df_2018_fortune_imposable, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") +
  labs(title = "2018",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()

# Afficher les deux graphiques côte à côte
library(gridExtra)
grid.arrange(plot_2002_imposable, plot_2018_imposable, nrow = 1)

## En pourcentage sur X --------
# Calculer les totaux pour chaque année
total_2002_imposable <- sum(df_2002_fortune_imposable$Effectif)
total_2018_imposable <- sum(df_2018_fortune_imposable$Effectif)

# Pondérer les pourcentages par rapport aux totaux
df_2002_fortune_imposable$Pourcentage_Pondere <- df_2002_fortune_imposable$Effectif / total_2002_imposable * 100
df_2018_fortune_imposable$Pourcentage_Pondere <- df_2018_fortune_imposable$Effectif / total_2018_imposable * 100

# Créer un graphique à barres horizontales pondéré pour 2002
plot_2002_pondere_imposable <- ggplot(df_2002_fortune_imposable, aes(x = Pourcentage_Pondere, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") +
  labs(title = "2002 (%)",
       x = "Pourcentage",
       y = "Tranche de fortune") +
  theme_minimal()

# Créer un graphique à barres horizontales pondéré pour 2018
plot_2018_pondere_imposable <- ggplot(df_2018_fortune_imposable, aes(x = Pourcentage_Pondere, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#D8BFD8", high = "#4B0082") +
  labs(title = "2018 (%)",
       x = "Pourcentage",
       y = "Tranche de fortune") +
  theme_minimal()

# Afficher les deux graphiques pondérés côte à côte
grid.arrange(plot_2002_pondere_imposable, plot_2018_pondere_imposable, nrow = 1)


# 3) Evolution par tranche de revenu ------------------------
## Evolution de la tranche "Plus de 5Mio" -------------
tranche <- "Plus de 5Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche "3Mio à 5Mio" -------------
tranche <- "3Mio à 5Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()

## Evolution de la tranche "1Mio à 3Mio" ---------
tranche <- "1Mio à 3Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()



## Evolution de la tranche "750k à 1Mio" ----------
tranche <- "750k à 1Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche "500k à 750k" -----------
tranche <- "500k à 750k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche "300k à 500k" -----------
tranche <- "300k à 500k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche "150k à 300k" --------
tranche <- "150k à 300k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()



## Evolution de la tranche "100k à 150k"
tranche <- "100k à 150k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


# Tranche spécifique : "100k à 150k"
tranche <- "100k à 150k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()




## Evolution de la tranche "75k à 100k" ---------
tranche <- "75k à 100k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()




## Evolution de la tranche "50k à 75k" ---------
tranche <- "50k à 75k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche "40k à 50k" ----------
tranche <- "40k à 50k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche "30k à 40k" ----------
tranche <- "30k à 40k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()




## Evolution de la tranche "20k à 30k" ---------
tranche <- "20k à 30k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche "10k à 20k" ----------
tranche <- "10k à 20k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche "5k à 10k" ------------
tranche <- "5k à 10k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche "1 à 5k" --------
tranche <- "1 à 5k"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()



## Evolution de la tranche "Sans fortune imposable" ----------
tranche <- "Sans fortune imposable"

# Filtrer les données pour cette tranche uniquement
df_tranche_imposable <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune_imposable[df_2002_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune_imposable[df_2003_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune_imposable[df_2004_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune_imposable[df_2005_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune_imposable[df_2006_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune_imposable[df_2007_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune_imposable[df_2008_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune_imposable[df_2009_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune_imposable[df_2010_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune_imposable[df_2011_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune_imposable[df_2012_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune_imposable[df_2013_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune_imposable[df_2014_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune_imposable[df_2015_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune_imposable[df_2016_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune_imposable[df_2017_fortune_imposable$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune_imposable[df_2018_fortune_imposable$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche_imposable, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche, "imposable"),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()



# All in one --------
## V1 ----------
# Charger la bibliothèque ggplot2
library(ggplot2)
library(dplyr)

# Liste des tranches de fortune imposable
tranches <- c("Sans fortune imposable", "1 à 5k", "5k à 10k", "10k à 20k", "20k à 30k", 
                          "30k à 40k", "40k à 50k", "50k à 75k", "75k à 100k", "100k à 150k", 
                          "150k à 300k", "300k à 500k", "500k à 750k", "750k à 1Mio", 
                          "1Mio à 3Mio", "3Mio à 5Mio", "Plus de 5Mio")

# Créer un dataframe vide pour stocker toutes les données
df_all_tranches <- data.frame()

# Charger les données par année et tranche de fortune
for (année in 2001:2018) {
  # Charger les données de l'année courante
  df_annuelle <- get(paste0("df_", année, "_fortune_imposable"))
  
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
  labs(title = "Évolution du nombre de contribuables par tranche de fortune (2002-2018)",
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal() +
  theme(legend.position = "bottom", legend.title = element_blank())

# Ajouter les labels sur le côté
# Créer un dataframe pour les labels de la dernière année
df_labels <- df_all_tranches %>%
  group_by(Tranche) %>%
  filter(Année == max(Année))

# Créer le graphique avec les labels à droite
ggplot(df_all_tranches, aes(x = Année, y = Effectif, color = Tranche, group = Tranche)) +
  geom_line() +
  geom_point() +
  geom_text(data = df_labels, aes(label = Tranche), hjust = -0.1, vjust = 0, size = 3) +
  labs(title = "Évolution du nombre de contribuables par tranche de fortune (2002-2018)",
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal() +
  theme(legend.position = "none", legend.title = element_blank()) +
  xlim(2001, 2020)  # Ajuste l'échelle pour laisser de l'espace aux labels


## V2 tout dans le même graphique -----------
# Séparer les outliers et les autres tranches
outliers <- c("Sans fortune imposable")
df_outliers <- df_all_tranches %>% filter(Tranche %in% outliers)
df_autres <- df_all_tranches %>% filter(!Tranche %in% outliers)

# Graphique pour les outliers
p_outliers <- ggplot(df_outliers, aes(x = Année, y = Effectif, color = Tranche, group = Tranche)) +
  geom_line() +
  geom_point() +
  labs(title = "Évolution du nombre de contribuables pour les tranches outliers (2001-2018)",
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal() +
  theme(legend.position = "bottom", legend.title = element_blank())

# Graphique zoomé pour les autres tranches
p_autres <- ggplot(df_autres, aes(x = Année, y = Effectif, color = Tranche, group = Tranche)) +
  geom_line() +
  geom_point() +
  labs(title = "Évolution du nombre de contribuables (zoom sur les tranches restantes)",
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal() +
  theme(legend.position = "bottom", legend.title = element_blank())

# Afficher les graphiques
library(gridExtra)
grid.arrange(p_outliers, p_autres, ncol = 1)


## V3 seulement les catégories à partir de "1 à 5k" jusqu'à "Plus de 5Mio" -----------
library(plotly)
# Séparer les autres tranches
df_autres <- df_all_tranches %>% filter(!Tranche %in% outliers)

# Graphique pour les autres tranches
p_autres <- ggplot(df_autres, aes(x = Année, y = Effectif, color = Tranche, group = Tranche)) +
  geom_line() +
  geom_point() +
  labs(title = "Évolution du nombre de contribuables, fortune imposable (2001-2018)",
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal() +
  theme(legend.position = "bottom", legend.title = element_blank())

# Afficher le graphique interactif des autres tranches
ggplotly(p_autres)



## V4 Outliers (= ici "Sans fortune imposable") --------
# Séparer les outliers
outliers <- c("Sans fortune imposable")
df_outliers <- df_all_tranches %>% filter(Tranche %in% outliers)

# Graphique pour les outliers
p_outliers <- ggplot(df_outliers, aes(x = Année, y = Effectif, color = Tranche, group = Tranche)) +
  geom_line() +
  geom_point() +
  labs(title = "Évolution du nombre de contribuables pour les tranches outliers (2002-2018)",
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal() +
  theme(legend.position = "bottom", legend.title = element_blank())

# Afficher le graphique interactif des outliers
ggplotly(p_outliers)

