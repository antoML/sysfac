# sysfac
**Dépôt en construction**

Ce dépôt regroupe des méthodes de factorisation de matrices pour l'imputation de données spatiotemporelles. 

# Modèles implémentés

## Méthodes non probabilistes
| Nom | Décomposition | Corrélation | Hyperparamètres | Anglais | Notes |
| --- | --- | --- | --- | --- | --- | 
| Factorisation de matrice non négative (FMNN) | Non négative | Aucune | <p>Rang,  &alpha;,  &beta;</p> | Non-negative matrix factorization (NNMF) | X |
| Factorisation de matrice à pénalité fixe (FMPF) | X | Temporelle | <p>Rang,  x<sub>t</sub>,  &rho;<sub>u</sub>,  &rho;<sub>v</sub>,  P</p> | Fixed penalty matrix factorization (FPMF) | Apprentissage incrémental |
| Factorisation de matrice à tolérance fixe (FMTF) | X | Temporelle | <p>Rang,  x<sub>t</sub>,  &epsilon;,  &rho;<sub>u</sub>,  P</p> | Fixed tolerance matrix factorization (FTMF) | Apprentissage incrémental |
| Factorisation de matrice sans tolérance (FMST) | X | Temporelle | <p>Rang,  x<sub>t</sub>,  &rho;<sub>u</sub>,  P</p> | Zero tolerance matrix factorization (ZTMF) | Apprentissage incrémental |
| Factorisation de matrice par rang inférieur structurée (FMRIS) | Décomposition en valeurs singulières | Temporelle | <p>Rang,  durée,  prévision,  n,  &rho;</p> | Structured low rank matrix completion (SLRMC) | Ligne par ligne |
| Factorisation de matrice à régularisation temporelle (FMRT) | Décomposition en valeurs singulières | Temporelle | <p>Rang,  &lambda;<sub>w</sub>,  &lambda;<sub>x</sub>,  &lambda;<sub>&theta;</sub>,  &eta;,  période</p> | Temporal regularized matrix factorization (TRMF) | X |

## Méthodes probabilistes
| Nom | Type probabiliste | Corrélation | Hyperparamètres | Optimisation | Anglais | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| Factorisation de matrice probabiliste bayésienne (FMPB) | Bayésien | temporelle | <p>Rang,  A,  &beta;</p> | MCCM | Bayesian probabilistic matrix factorization (NNMF) | X |
| Factorisation de matrice à temporalité bayésienne (FMTB) | Bayésien | temporelle | <p>Rang,  &mu;<sub>0</sub>,  W<sub>0</sub>,  &nu;<sub>0</sub>,  &beta;<sub>0</sub>,  &alpha;,  &beta;,  M<sub>0</sub>,  &psi;<sub>0</sub>,  S<sub>0</sub></p> | MCCM | Bayesian temporal matrix factorization (BTMF) | X |
| Factorisation de matrice à noyaux bayésiens (FMNB) | Bayésien | spatiotemporelle | <p>Rang,  P<sub>z</sub>,  P<sub>x</sub>,  &alpha;<sub>&eta;</sub>,  &beta;<sub>&eta;</sub>,  &alpha;<sub>&lambda;</sub>,  &beta;<sub>&lambda;</sub>,  &sigma;<sub>g</sub>,  &sigma;<sub>h</sub>,  &nu;</p> | Variationel | Kernelized bayesian matrix factorization (KBMF) | Noyaux : <p>Exponentiel<br>Gaussien<br>Périodique<p> |
| Factorisation de matrice à noyaux probabilistes (FMNP) | Fréquentiste | spatiotemporelle | <p>Rang,  &eta;,  &sigma;</p> | DG/DGS | Kernelized probabilistic matrix factorization (KPMF) | Noyaux : <p>Exponentiel<br>Gaussien<br>Périodique<p> |
| Factorisation de matrice probabiliste (FMP) | Fréquentiste| Aucune | <p>Rang,  &eta;,  tx régu</p> | DG | Probabilistic matrix factorization (PMF) | Variantes : <p>Prieures adaptatives<br>Contraintes</p> |

