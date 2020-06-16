
**Dépôt en construction**

Les présentes méthodes implémentées sont en Python et en R. 




# Méthodes utilisées

*Le tableau ci-bas est présentement en mise à jours.*

| Méthodes | Méthodes de décomposition | Corrélation spatiale | Corrélation temporelle | Hyperparamètres | Méthode d'optimisation | Nom en anglais | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Factorisation de matrice non-négative (FMNN) | Non négative | Non | Non | <p>Rang<br>alpha<br>beta</p> | Descente par coordination séquentielle | Non negative matrix factorization (NNMF) | Aucune |
| Factorisation de matrice à pénalité fixe (FMPF) | À revoir | Non | Oui | <p>Rang<br>Xt<br>rho_u<br>rho_v<br>P</p> | Descente coordonnée | Fixed penality matrix factorization (FPMF) | Apprentissage incrémental |
| Factorisation de matrice à tolérance fixe (FMTF) | À revoir | Non | Oui | <p>Rang<br>xt<br>epsilon<br>rho_v<br>P</p> | Descente coordonnée | Fixed tolerance matrix factorization (FTMF) | Apprentissage incrémental |
| Factorisation de matrice sans tolérance (FMST) | À revoir | Non | Oui | <p>Rang<br>xt<br>rho_v<br>P</p> | Descente coordohhée | Zero tolerance matrix factorization (ZTMF) | Apprentissage incrémental |
| Factorisation de matrice par rang inférieur structurée (FMRIS) | Décomposition en valeurs singulières | Non | Oui | <p>Rang<br>fenêtre temporelle<br>période prévisionnelle<br>n<br>rho</p> | À revoir | Structured low rank matrix completion (SLRMC) | En ce moment, seulement ligne par ligne |
| Factorisation de matrice à régularisation temporelle (FMRT) | Décomposition en valeurs singulières | Non | Oui | <p>Rang<br>lambda w<br>lambda x<br>lambda theta<br>eta<br>période</p> | À revoir | Temporal regularized matrix factorization (TRMF) | Aucune |



