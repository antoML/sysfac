## ---------------------------
##
## Nom du script: Simulation de données selon le modèle
##
## But du script: Simuler des données pour l'expérience
##
## Author: Antony Masso-Lussier
##
## Date Created: XX
##
##
##
##
##
##
## ---------------------------

## set working directory
# getwd()

working.directory = "./"
setwd(working.directory)

## ---------------------------

## load up the packages we will need:
pac = c("CVTuningCov", "MASS", "mvtnorm", "R.matlab")

## Vérifier si les paquets sont installés
new_pac <- pac[!(pac %in% installed.packages()[, "Package"])]
if (length(new_pac))
  install.packages(new_pac)

# Charger les paquets
library(CVTuningCov)
library(MASS)
library(mvtnorm)
library(R.matlab)

## ---------------------------

# Générer la matrice ------------------------------------------------------

generation_matrice <-
  function(r,
           nb.col,
           nb.lignes,
           moy_x,
           moy_U,
           cov_rho = 0.5,
           err_moy = 0,
           err_dev = 0.1) {
    # Matrice X (colonnes)
    ## Structure de covariance (Sigma)
    Sigma <- AR1(nb.col, cov_rho)
    
    ## Générer X
    set.seed(2020)
    X <- mvrnorm(n = r,
                 mu = rep(moy_x, nb.col),
                 Sigma = Sigma)
    message("La matrice latente X a ",
            dim(X)[1],
            " facteurs et ",
            dim(X)[2],
            " colonnes")
    
    # Matrice U (lignes)
    set.seed(2020)
    U <- rmvnorm(n = nb.lignes, mean = rep(moy_U, r))
    message("La matrice latente U a ",
            dim(U)[2],
            " facteurs et ",
            dim(U)[1],
            " facteurs")
    
    # Multiplier les matrices latentes (générer la matrice complète)
    Y <- U %*% X
    
    # Ajouter l'erreur aux données
    set.seed(2020)
    err <-
      matrix(rnorm(nb.lignes * nb.col, mean = err_moy, sd = err_dev),
             nb.lignes,
             nb.col)
    Y <- Y + err
    message("La matrice complète Y a ",
            dim(Y)[1],
            " lignes et ",
            dim(Y)[2],
            " colonnes")
    sortie = list(X = X,
                  U = U,
                  Y = Y)
  }

# Simulation ---------------------
r <-  20             # Nombre de facteurs latents
nb.lignes <- 100     # Nombre de lignes
nb.col <-  123       # Nombre de colonnes

obj_gen <-
  generation_matrice(
    r = r,
    nb.col = nb.col,
    nb.lignes = nb.lignes,
    moy_x = 4,
    moy_U = 4,
    cov_rho = 0.5,
    err_moy = 0,
    err_dev = 1
  )


# Sauvegarde des données --------------
dossier.donnees <- "./data/simulation_simple/"


# Sauvegarder la matrice complète
fichier.simulation <- "/SimSimple"
nom.fichier <- paste0(dossier.donnees, fichier.simulation, ".mat")
writeMat(nom.fichier, mat = Y)

## Sauvegarder la matrice latente U
fichier.simulation <- "/SimSimple_U"
nom.fichier <- paste0(dossier.donnees, fichier.simulation, ".mat")
writeMat(nom.fichier, mat = U)

# Sauvegarder la matrice latente X
fichier.simulation <- "/SimSimple_X"
nom.fichier <- paste0(dossier.donnees, fichier.simulation, ".mat")
## Sauvegarde du fichier
writeMat(nom.fichier, mat = X)


