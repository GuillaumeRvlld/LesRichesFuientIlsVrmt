# 
# Lien : https://statistique.ge.ch/domaines/20/20_02/tableaux.asp#3
# Nom : 

# Installer et charger les bibliothèques nécessaires
# install.packages("ggplot2")
library(ggplot2)

# 1) Données et visualisation simple --------------
## 2001 ---- 
# N'existe pas

## 2002 ---------------
df_2002_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(77220, 48410, 16826, 9612, 6929, 16423, 9690, 6958, 10619, 8020,
               5333, 3458, 3343, 6060, 2126, 1355, 873),
  Pourcentage = c(33.1, 20.8, 7.2, 4.1, 3.0, 7.0, 4.2, 3.0, 4.6, 3.4,
                  2.3, 1.5, 1.4, 2.6, 0.9, 0.6, 0.4)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2002_fortune$Tranche <- factor(df_2002_fortune$Tranche, levels = ordre_tranches_fortune)
df_2002_fortune <- df_2002_fortune[order(df_2002_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2002_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2002",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()

## 2003 -----------
df_2003_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(74232, 50915, 17081, 9539, 6871, 16623, 9772, 7132, 10876, 8383,
               5540, 3610, 3494, 6350, 2245, 1455, 948),
  Pourcentage = c(31.6, 21.7, 7.3, 4.1, 2.9, 7.1, 4.2, 3.0, 4.6, 3.6,
                  2.4, 1.5, 1.5, 2.7, 1.0, 0.6, 0.4)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2003_fortune$Tranche <- factor(df_2003_fortune$Tranche, levels = ordre_tranches_fortune)
df_2003_fortune <- df_2003_fortune[order(df_2003_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2003_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2003",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2004 ---------
df_2004_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(73331, 52649, 16957, 9388, 6789, 16511, 9776, 7182, 11165, 8618,
               5838, 3824, 3627, 6653, 2349, 1475, 980),
  Pourcentage = c(30.9, 22.2, 7.2, 4.0, 2.9, 7.0, 4.1, 3.0, 4.7, 3.6,
                  2.5, 1.6, 1.5, 2.8, 1.0, 0.6, 0.4)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2004_fortune$Tranche <- factor(df_2004_fortune$Tranche, levels = ordre_tranches_fortune)
df_2004_fortune <- df_2004_fortune[order(df_2004_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2004_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2004",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2005 -------------
df_2005_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(73334, 53217, 16499, 9456, 6614, 16462, 9696, 7248, 11322, 8946,
               6088, 4008, 3817, 7262, 2562, 1683, 1116),
  Pourcentage = c(30.6, 22.2, 6.9, 4.0, 2.8, 6.9, 4.1, 3.0, 4.7, 3.7,
                  2.5, 1.7, 1.6, 3.0, 1.1, 0.7, 0.5)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2005_fortune$Tranche <- factor(df_2005_fortune$Tranche, levels = ordre_tranches_fortune)
df_2005_fortune <- df_2005_fortune[order(df_2005_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2005_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2005",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2006 ----------
df_2006_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(73306, 54347, 16609, 9369, 6620, 16381, 9653, 7395, 11271, 9001,
               6287, 4136, 4133, 7716, 2718, 1848, 1234),
  Pourcentage = c(30.3, 22.5, 6.9, 3.9, 2.7, 6.8, 4.0, 3.1, 4.7, 3.7,
                  2.6, 1.7, 1.7, 3.2, 1.1, 0.8, 0.5)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2006_fortune$Tranche <- factor(df_2006_fortune$Tranche, levels = ordre_tranches_fortune)
df_2006_fortune <- df_2006_fortune[order(df_2006_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2006_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2006",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2007 --------
df_2007_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(74011, 54897, 16727, 9312, 6565, 16138, 9711, 7268, 11513, 9164,
               6487, 4369, 4296, 8212, 2912, 1954, 1355),
  Pourcentage = c(30.2, 22.4, 6.8, 3.8, 2.7, 6.6, 4.0, 3.0, 4.7, 3.7,
                  2.6, 1.8, 1.8, 3.4, 1.2, 0.8, 0.6)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2007_fortune$Tranche <- factor(df_2007_fortune$Tranche, levels = ordre_tranches_fortune)
df_2007_fortune <- df_2007_fortune[order(df_2007_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2007_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2007",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2008 --------------
df_2008_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(76518, 54800, 16707, 9240, 6568, 16100, 9769, 7299, 11439, 9242,
               6694, 4435, 4404, 8265, 2775, 1863, 1216),
  Pourcentage = c(30.9, 22.2, 6.8, 3.7, 2.7, 6.5, 3.9, 3.0, 4.6, 3.7,
                  2.7, 1.8, 1.8, 3.3, 1.1, 0.8, 0.5)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2008_fortune$Tranche <- factor(df_2008_fortune$Tranche, levels = ordre_tranches_fortune)
df_2008_fortune <- df_2008_fortune[order(df_2008_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2008_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2008",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2009 ---------------
df_2009_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(77107, 56900, 16732, 9501, 6672, 16241, 9825, 7347, 11690, 9271,
               6819, 4543, 4712, 8744, 2920, 1993, 1224),
  Pourcentage = c(30.6, 22.6, 6.6, 3.8, 2.6, 6.4, 3.9, 2.9, 4.6, 3.7,
                  2.7, 1.8, 1.9, 3.5, 1.2, 0.8, 0.5)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2009_fortune$Tranche <- factor(df_2009_fortune$Tranche, levels = ordre_tranches_fortune)
df_2009_fortune <- df_2009_fortune[order(df_2009_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2009_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2009",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2010 ---------------
df_2010_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(78204, 58210, 16843, 9423, 6730, 16495, 9995, 7621, 12005, 9530,
               6935, 4696, 4767, 9018, 2946, 1871, 1086),
  Pourcentage = c(30.5, 22.7, 6.6, 3.7, 2.6, 6.4, 3.9, 3.0, 4.7, 3.7,
                  2.7, 1.8, 1.9, 3.5, 1.1, 0.7, 0.4)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2010_fortune$Tranche <- factor(df_2010_fortune$Tranche, levels = ordre_tranches_fortune)
df_2010_fortune <- df_2010_fortune[order(df_2010_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2010_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2010",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2011 -------------
df_2011_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(78634, 59212, 16959, 9551, 6863, 16717, 10347, 7831, 12438, 9662,
               7012, 4921, 4958, 9346, 3074, 1917, 1024),
  Pourcentage = c(30.2, 22.7, 6.5, 3.7, 2.6, 6.4, 4.0, 3.0, 4.8, 3.7,
                  2.7, 1.9, 1.9, 3.6, 1.2, 0.7, 0.4)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2011_fortune$Tranche <- factor(df_2011_fortune$Tranche, levels = ordre_tranches_fortune)
df_2011_fortune <- df_2011_fortune[order(df_2011_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2011_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2011",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2012 -----------------
df_2012_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(79690, 59524, 17122, 9859, 6938, 17000, 10769, 8149, 12708, 9776,
               7163, 5067, 5109, 9728, 3198, 1972, 1076),
  Pourcentage = c(30.1, 22.5, 6.5, 3.7, 2.6, 6.4, 4.1, 3.1, 4.8, 3.7,
                  2.7, 1.9, 1.9, 3.7, 1.2, 0.7, 0.4)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2012_fortune$Tranche <- factor(df_2012_fortune$Tranche, levels = ordre_tranches_fortune)
df_2012_fortune <- df_2012_fortune[order(df_2012_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2012_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2012",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2013 ----------------
df_2013_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(79967, 60812, 17329, 10014, 7118, 17241, 11298, 8417, 13226, 10107,
               7330, 5250, 5498, 10815, 3733, 2443, 1591),
  Pourcentage = c(29.4, 22.3, 6.4, 3.7, 2.6, 6.3, 4.2, 3.1, 4.9, 3.7,
                  2.7, 1.9, 2.0, 4.0, 1.4, 0.9, 0.6)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2013_fortune$Tranche <- factor(df_2013_fortune$Tranche, levels = ordre_tranches_fortune)
df_2013_fortune <- df_2013_fortune[order(df_2013_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2013_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2013",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2014 ---------------
df_2014_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(83380, 60889, 17186, 9992, 7091, 17876, 11939, 8903, 13846, 10290,
               7616, 5462, 5838, 11742, 4273, 2806, 1889),
  Pourcentage = c(29.7, 21.7, 6.1, 3.6, 2.5, 6.4, 4.3, 3.2, 4.9, 3.7,
                  2.7, 1.9, 2.1, 4.2, 1.5, 1.0, 0.7)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2014_fortune$Tranche <- factor(df_2014_fortune$Tranche, levels = ordre_tranches_fortune)
df_2014_fortune <- df_2014_fortune[order(df_2014_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2014_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2014",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2015 -----------------
# Créer un DataFrame pour 2015
df_2015_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(86286, 60833, 17367, 10010, 7228, 18275, 12790, 9215, 14406, 10622,
               7997, 5562, 6174, 12401, 4546, 2955, 1920),
  Pourcentage = c(29.9, 21.1, 6.0, 3.5, 2.5, 6.3, 4.4, 3.2, 5.0, 3.7,
                  2.8, 1.9, 2.1, 4.3, 1.6, 1.0, 0.7)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2015_fortune$Tranche <- factor(df_2015_fortune$Tranche, levels = ordre_tranches_fortune)
df_2015_fortune <- df_2015_fortune[order(df_2015_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2015_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2015",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2016 -----------------
# Créer un DataFrame pour 2016
df_2016_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(81073, 61000, 17486, 10764, 7921, 20295, 13660, 10223, 15032, 10982,
               8289, 5851, 6560, 13465, 4739, 3217, 2205),
  Pourcentage = c(27.7, 20.8, 6.0, 3.7, 2.7, 6.9, 4.7, 3.5, 5.1, 3.8,
                  2.8, 2.0, 2.2, 4.6, 1.6, 1.1, 0.8)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2016_fortune$Tranche <- factor(df_2016_fortune$Tranche, levels = ordre_tranches_fortune)
df_2016_fortune <- df_2016_fortune[order(df_2016_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2016_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2016",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2017 ------------
# Créer un DataFrame pour 2017
df_2017_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(79323, 61124, 17550, 11024, 8159, 20727, 13750, 10351, 15384, 11229,
               8509, 6091, 6811, 14106, 4920, 3387, 2441),
  Pourcentage = c(26.9, 20.7, 6.0, 3.7, 2.8, 7.0, 4.7, 3.5, 5.2, 3.8,
                  2.9, 2.1, 2.3, 4.8, 1.7, 1.2, 0.8)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2017_fortune$Tranche <- factor(df_2017_fortune$Tranche, levels = ordre_tranches_fortune)
df_2017_fortune <- df_2017_fortune[order(df_2017_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2017_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2017",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()


## 2018 ---------------
# Créer un DataFrame pour 2018
df_2018_fortune <- data.frame(
  Tranche = c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio"),
  Effectif = c(79993, 62184, 17737, 10969, 8256, 20965, 14098, 10433, 15434, 11203,
               8584, 6245, 6889, 14589, 5107, 3441, 2549),
  Pourcentage = c(26.8, 20.8, 5.9, 3.7, 2.8, 7.0, 4.7, 3.5, 5.2, 3.8,
                  2.9, 2.1, 2.3, 4.9, 1.7, 1.2, 0.9)
)

# Réorganiser le DataFrame par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2018_fortune$Tranche <- factor(df_2018_fortune$Tranche, levels = ordre_tranches_fortune)
df_2018_fortune <- df_2018_fortune[order(df_2018_fortune$Tranche), ]

# Visualisation
library(ggplot2)

ggplot(df_2018_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "#ADFF2F", high = "#006400") + # Dégradé de vert clair à vert foncé
  labs(title = "Répartition des fortunes brutes en 2018",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()



# 2) Comparer deux années (p.ex. 2002 et 2018) ------------
## En nombre sur X --------
# Ajouter une colonne 'Année' à chaque DataFrame
df_2002_fortune$Annee <- "2002"
df_2018_fortune$Annee <- "2018"

# Combiner les DataFrames des deux années
df_combine <- rbind(df_2002_fortune, df_2018_fortune)

# Créer le graphique avec facet_wrap pour comparer les deux années
ggplot(df_combine, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightgreen", high = "darkgreen") +
  labs(title = "Comparaison des répartition des fortunes brutes (2002 vs 2018)",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal() +
  facet_wrap(~ Annee, scales = "free_x")


## Créer un graphique en ligne pour comparer les pourcentages entre 2002 et 2018 -------------
ggplot(df_combine, aes(x = Tranche, y = Pourcentage, group = Annee, color = Annee)) +
  geom_line(size = 1.2) +
  geom_point(size = 2) +
  labs(title = "Comparaison des pourcentages par tranche de fortune (2002 vs 2018)",
       x = "Tranche de fortune",
       y = "Pourcentage",
       color = "Année") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

## En nombre sur X --------
# Réorganiser les dataframes par tranche dans l'ordre spécifié
ordre_tranches_fortune <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
                            "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
                            "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
                            "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

df_2002_fortune$Tranche <- factor(df_2002_fortune$Tranche, levels = ordre_tranches_fortune)
df_2002_fortune <- df_2002_fortune[order(df_2002_fortune$Tranche), ]

df_2018_fortune$Tranche <- factor(df_2018_fortune$Tranche, levels = ordre_tranches_fortune)
df_2018_fortune <- df_2018_fortune[order(df_2018_fortune$Tranche), ]

# Créer un graphique à barres horizontales pour 2002
plot_2002 <- ggplot(df_2002_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightgreen", high = "darkgreen") +
  labs(title = "2002",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()

# Créer un graphique à barres horizontales pour 2018
plot_2018 <- ggplot(df_2018_fortune, aes(x = Effectif, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightgreen", high = "darkgreen") +
  labs(title = "2018",
       x = "Nombre",
       y = "Tranche de fortune") +
  theme_minimal()

# Afficher les deux graphiques côte à côte
library(gridExtra)
grid.arrange(plot_2002, plot_2018, nrow = 1)

## En pourcentage sur X --------
# Calculer les totaux pour chaque année
total_2002 <- sum(df_2002_fortune$Effectif)
total_2018 <- sum(df_2018_fortune$Effectif)

# Pondérer les pourcentages par rapport aux totaux
df_2002_fortune$Pourcentage_Pondere <- df_2002_fortune$Effectif / total_2002 * 100
df_2018_fortune$Pourcentage_Pondere <- df_2018_fortune$Effectif / total_2018 * 100

# Créer un graphique à barres horizontales pondéré pour 2002
plot_2002_pondere <- ggplot(df_2002_fortune, aes(x = Pourcentage_Pondere, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightgreen", high = "darkgreen") +
  labs(title = "2002 (Pondéré)",
       x = "Pourcentage",
       y = "Tranche de fortune") +
  theme_minimal()

# Créer un graphique à barres horizontales pondéré pour 2018
plot_2018_pondere <- ggplot(df_2018_fortune, aes(x = Pourcentage_Pondere, y = Tranche, fill = Pourcentage)) +
  geom_bar(stat = "identity") +
  scale_fill_gradient(low = "lightgreen", high = "darkgreen") +
  labs(title = "2018 (Pondéré)",
       x = "Pourcentage",
       y = "Tranche de fortune") +
  theme_minimal()

# Afficher les deux graphiques pondérés côte à côte
grid.arrange(plot_2002_pondere, plot_2018_pondere, nrow = 1)





# 3) Evolution par tranche de revenu ------------------------
## Evolution de la tranche Plus de 10Mio -------------
tranche <- "Plus de 10Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche 5Mio à 10Mio -------------
tranche <- "5Mio à 10Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche 3Mio à 5Mio -------------
tranche <- "3Mio à 5Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()



## Evolution de la tranche 1.5Mio à 3Mio -------------
tranche <- "1.5Mio à 3Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()



## Evolution de la tranche 1.2Mio à 1.5Mio -------------
tranche <- "1.2Mio à 1.5Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()





## Evolution de la tranche 1Mio à 1.2Mio -------------
tranche <- "1Mio à 1.2Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche 800k à 1Mio -------------
tranche <- "800k à 1Mio"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche 600k à 800k -------------
tranche <- "600k à 800k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()

## Evolution de la tranche 400k à 600k -------------
tranche <- "400k à 600k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche 300k à 400k -------------
tranche <- "300k à 400k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche 200k à 300k -------------
tranche <- "200k à 300k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche 100k à 200k -------------
tranche <- "100k à 200k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche 75k à 100k -------------
tranche <- "75k à 100k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche 50k à 75k -------------
tranche <- "50k à 75k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche 25k à 50k -------------
tranche <- "25k à 50k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


## Evolution de la tranche 1 à 25k -------------
tranche <- "1 à 25k"

# Filtrer les données pour cette tranche uniquement
df_tranche <- rbind(
  data.frame(Année = 2002, Effectif = df_2002_fortune[df_2002_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2003, Effectif = df_2003_fortune[df_2003_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2004, Effectif = df_2004_fortune[df_2004_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2005, Effectif = df_2005_fortune[df_2005_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2006, Effectif = df_2006_fortune[df_2006_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2007, Effectif = df_2007_fortune[df_2007_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2008, Effectif = df_2008_fortune[df_2008_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2009, Effectif = df_2009_fortune[df_2009_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2010, Effectif = df_2010_fortune[df_2010_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2011, Effectif = df_2011_fortune[df_2011_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2012, Effectif = df_2012_fortune[df_2012_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2013, Effectif = df_2013_fortune[df_2013_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2014, Effectif = df_2014_fortune[df_2014_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2015, Effectif = df_2015_fortune[df_2015_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2016, Effectif = df_2016_fortune[df_2016_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2017, Effectif = df_2017_fortune[df_2017_fortune$Tranche == tranche, ]$Effectif),
  data.frame(Année = 2018, Effectif = df_2018_fortune[df_2018_fortune$Tranche == tranche, ]$Effectif)
)

# Créer un graphique linéaire pour observer l'évolution de la tranche
ggplot(df_tranche, aes(x = Année, y = Effectif, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = paste("Évolution de la tranche", tranche),
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal()


# All in one --------
## V1 ----------
# Charger la bibliothèque ggplot2
library(ggplot2)
library(dplyr)

# Liste des tranches de fortune
tranches <- c("Sans fortune brute", "1 à 25k", "25k à 50k", "50k à 75k", "75k à 100k", 
              "100k à 200k", "200k à 300k", "300k à 400k", "400k à 600k", "600k à 800k",
              "800k à 1Mio", "1Mio à 1.2Mio", "1.2Mio à 1.5Mio", "1.5Mio à 3Mio", 
              "3Mio à 5Mio", "5Mio à 10Mio", "Plus de 10Mio")

# Créer un dataframe vide pour stocker toutes les données
df_all_tranches <- data.frame()

# Charger les données par année et tranche de fortune
for (année in 2002:2018) {
  # Charger les données de l'année courante
  df_annuelle <- get(paste0("df_", année, "_fortune"))
  
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
  xlim(2002, 2020)  # Ajuste l'échelle pour laisser de l'espace aux labels


## V2 Outliers + Autres dans le même graphique -----------
# Séparer les outliers et les autres tranches
outliers <- c("Sans fortune brute", "1 à 25k")
df_outliers <- df_all_tranches %>% filter(Tranche %in% outliers)
df_autres <- df_all_tranches %>% filter(!Tranche %in% outliers)

# Graphique pour les outliers
p_outliers <- ggplot(df_outliers, aes(x = Année, y = Effectif, color = Tranche, group = Tranche)) +
  geom_line() +
  geom_point() +
  labs(title = "Évolution du nombre de contribuables pour les tranches outliers (2002-2018)",
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


## V3 sans les Outliers -----------
# Séparer les autres tranches
df_autres <- df_all_tranches %>% filter(!Tranche %in% outliers)

# Graphique pour les autres tranches
p_autres <- ggplot(df_autres, aes(x = Année, y = Effectif, color = Tranche, group = Tranche)) +
  geom_line() +
  geom_point() +
  labs(title = "Évolution du nombre de contribuables (zoom sur les autres tranches) (2002-2018)",
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal() +
  theme(legend.position = "bottom", legend.title = element_blank())

# Afficher le graphique interactif des autres tranches
ggplotly(p_autres)



## V4 Outliers
# Séparer les outliers
outliers <- c("Sans fortune brute", "1 à 25k")
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


# All in one, interactif ------------
install.packages("plotly")
library(ggplot2)
library(plotly)
library(dplyr)
# Graphique ggplot
p <- ggplot(df_all_tranches, aes(x = Année, 
                                 y = Effectif, 
                                 color = Tranche, 
                                 group = Tranche)) +
  geom_line() +
  geom_point() +
  geom_text(data = df_labels, aes(label = Tranche), hjust = -0.1, vjust = 0, size = 3) +
  labs(title = "Canton de Genève - Évolution du nombre de contribuables par tranche de fortune (2002-2018)",
       x = "Année",
       y = "Nb de contribuables") +
  theme_minimal() +
  theme(legend.position = "none", legend.title = element_blank()) +
  xlim(2002, 2020)

# Convertir en graphique interactif
ggplotly(p)

