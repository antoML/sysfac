# sysfac

> Ce dépôt regroupe des méthodes de factorisation de matrices pour l'imputation de données spatiotemporelles. 

# Sommaire des modèles implémentés

## Non probabilistes
| Nom | Décomposition | Corrélation | Hyperparamètres | Notes | Anglais |
| --- | --- | --- | --- | --- | --- | 
| Factorisation de matrice non négative (FMNN) | Non négative | Aucune | <p>Rang,  &alpha;,  &beta;</p> |  | Non-negative matrix factorization (NNMF) |
| Factorisation de matrice à pénalité fixe (FMPF) |  | Temporelle | <p>Rang,  x<sub>t</sub>,  &rho;<sub>u</sub>,  &rho;<sub>v</sub>,  P</p> | Apprentissage incrémental | Fixed penalty matrix factorization (FPMF) |
| Factorisation de matrice à tolérance fixe (FMTF) |  | Temporelle | <p>Rang,  x<sub>t</sub>,  &epsilon;,  &rho;<sub>u</sub>,  P</p> | Apprentissage incrémental | Fixed tolerance matrix factorization (FTMF) |
| Factorisation de matrice sans tolérance (FMST) |  | Temporelle | <p>Rang,  x<sub>t</sub>,  &rho;<sub>u</sub>,  P</p> | Apprentissage incrémental | Zero tolerance matrix factorization (ZTMF) |
| Factorisation de matrice par rang inférieur structurée (FMRIS) | Décomposition en valeurs singulières | Temporelle | <p>Rang,  durée,  prévision,  n,  &rho;</p> | Ligne par ligne | Structured low rank matrix completion (SLRMC) |
| Factorisation de matrice à régularisation temporelle (FMRT) | Décomposition en valeurs singulières | Temporelle | <p>Rang,  &lambda;<sub>w</sub>,  &lambda;<sub>x</sub>,  &lambda;<sub>&theta;</sub>,  &eta;,  période</p> |  | Temporal regularized matrix factorization (TRMF) |

## Probabilistes
| Nom | Type probabiliste | Corrélation | Hyperparamètres | Optimisation | Notes | Anglais |
| --- | --- | --- | --- | --- | --- | --- |
| Factorisation de matrice probabiliste bayésienne (FMPB) | Bayésien | temporelle | <p>Rang,  &alpha;,  &alpha;<sub>V</sub>,  &alpha;<sub>Y</sub></p> | MCCM |  | Bayesian probabilistic matrix factorization (BPMF) |
| Factorisation de matrice à temporalité bayésienne (FMTB) | Bayésien | temporelle | <p>Rang,  &mu;<sub>0</sub>,  W<sub>0</sub>,  &nu;<sub>0</sub>,  &beta;<sub>0</sub>,  &alpha;,  &beta;,  M<sub>0</sub>,  &psi;<sub>0</sub>,  S<sub>0</sub></p> | MCCM |  | Bayesian temporal matrix factorization (BTMF) |
| Factorisation de matrice à noyaux bayésiens (FMNB) | Bayésien | spatiotemporelle | <p>Rang,  P<sub>z</sub>,  P<sub>x</sub>,  &alpha;<sub>&eta;</sub>,  &beta;<sub>&eta;</sub>,  &alpha;<sub>&lambda;</sub>,  &beta;<sub>&lambda;</sub>,  &sigma;<sub>g</sub>,  &sigma;<sub>h</sub>,  &nu;</p> | Variationel |  Noyaux : <p>Exponentiel<br>Gaussien<br>Périodique<p> | Kernelized bayesian matrix factorization (KBMF) |
| Factorisation de matrice à noyaux probabilistes (FMNP) | Fréquentiste | spatiotemporelle | <p>Rang,  &eta;,  &sigma;</p> | DG/DGS |  Noyaux : <p>Exponentiel<br>Gaussien<br>Périodique<p> | Kernelized probabilistic matrix factorization (KPMF) |
| Factorisation de matrice probabiliste (FMP) | Fréquentiste| Aucune | <p>Rang,  &eta;,  tx régu</p> | DG | Variantes : <p>Prieures adaptatives<br>Contraintes</p> | Probabilistic matrix factorization (PMF) |


# Statut du projet
> En construction.

