
**Dépôt en construction**

Les présentes méthodes implémentées sont en Python et en R. 




# Méthodes utilisées

*Les informations du tableau ci-bas sont à reconfirmer.*

## Méthodes non probabilistes
| Nom | Type de décomposition | Corr. spatiale | Corr. temporelle | Hyperparamètres | Optimisation | Anglais | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Factorisation de matrice non négative (FMNN) | Non négative | Non | Non | <p>Rang<br>alpha<br>beta</p> | Descente par coordination séquentielle | Non-negative matrix factorization (NNMF) | Aucune |
| Factorisation de matrice à pénalité fixe (FMPF) | À revoir | Non | Oui | <p>Rang<br>Xt<br>rho_u<br>rho_v<br>P</p> | Descente coordonnée | Fixed penalty matrix factorization (FPMF) | Apprentissage incrémental |
| Factorisation de matrice à tolérance fixe (FMTF) | À revoir | Non | Oui | <p>Rang<br>xt<br>epsilon<br>rho_v<br>P</p> | Descente coordonnée | Fixed tolerance matrix factorization (FTMF) | Apprentissage incrémental |
| Factorisation de matrice sans tolérance (FMST) | À revoir | Non | Oui | <p>Rang<br>xt<br>rho_v<br>P</p> | Descente coordonnée | Zero tolerance matrix factorization (ZTMF) | Apprentissage incrémental |
| Factorisation de matrice par rang inférieur structurée (FMRIS) | Décomposition en valeurs singulières | Non | Oui | <p>Rang<br>fenêtre temporelle<br>période prévisionnelle<br>n<br>rho</p> | À revoir | Structured low rank matrix completion (SLRMC) | En ce moment, seulement ligne par ligne |
| Factorisation de matrice à régularisation temporelle (FMRT) | Décomposition en valeurs singulières | Non | Oui | <p>Rang<br>lambda w<br>lambda x<br>lambda thêta<br>êta<br>période</p> | À revoir | Temporal regularized matrix factorization (TRMF) | Aucune |

## Méthodes probabilistes
| Nom | Type probabiliste | Corrélation spatiale | Corrélation temporelle | Hyperparamètres | Optimisation | Anglais | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Factorisation de matrice probabiliste bayésienne (FMPB) | Bayésien | Oui | Non | <p>Rang<br>A<br>bêta</p> | MCCM | Bayesian probabilistic matrix factorization (NNMF) | Aucune |
| Factorisation de matrice à temporalité bayésienne (FMTB) | Bayésien | Non | Oui | <p>Rang<br>ng<br>mu0<br>W0<br>nu0<br>beta0<br>alpha<br>beta<br>M0<br>psi0<br>S0</p> | MCCM | Bayesian temporal matrix factorization (BTMF) | Aucune |
| Factorisation de matrice à noyaux bayésiens (FMNB) | Bayésien | Oui | Oui | <p>Rang<br>Pz<br>Px<br>alpha eta<br>beta eta<br>alpha lambda<br>beta lambda<br>sigma g<br>sigma h<br>nu</p> | Variationel | Kernelized bayesian matrix factorization (KBMF) | Types de noyaux : exponentiel, gaussien, périodique |
| Factorisation de matrice à noyaux probabilistes (FMNP) | Fréquentiste | Oui | Oui | <p>Rang<br>êta<br>segma</p> | Descente du gradient (stochastique) | Kernelized probabilistic matrix factorization (KPMF) | Types de noyaux : exponentiel, gaussien, périodique |
| Factorisation de matrice probabiliste (FMP) | Fréquentiste| Non | Non | <p>Rang<br>êta<br>taux de régularisation</p> | Descente du gradient | Probabilistic matrix factorization (PMF) | Variantes : Prieures adaptatives et contraintes |
