# sysfac

> Ce dépôt regroupe des méthodes de factorisation de matrices pour l'imputation de données spatiotemporelles. À ceci en découlera une étude de maitrise qui vise à comprendre leur comportement selon divers scénarios de données manquantes. 

# Utilisation

Pour utiliser les modèles, l'utilisateur doit avoir R ou Python, ainsi que Jupyter Notebook. 

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


# Références
## Données
> Les données de transport utilisées proviennent du Github [transdim](https://github.com/xinychen/transdim). 

## Projets liés
> Pour consulter les codes sources, veuillez aller directement dans les livrets du projet. 

## Recherches
> La présente sous-section regroupe les recherches liées directement aux méthodes implémentées.

- **FMPF,  FMTF  et  FMST**
  - Gultekin, San et John Paisley (2019). *Online Forecasting Matrix Factorization*. | [Recherche](https://arxiv.org/abs/1712.08734)  
- **FMNN**
  - Gaujoux, Renaud et Cathal Seoighe (2010). *A flexible R package for nonnegative matrix factorization.* | [Recherche](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-11-367)  
  - Lin, Xihui et Paul C. Boutros (2020). *Optimization and expansion of non-negative matrix factorization.* | [Recherche](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6945623/)  
- **FMRIS**
  - Gillard, Jonathan et Konstantin Usevich (2018). *Structured low-rank matrix completion for forecasting in time series analysis.* | [Recherche](https://arxiv.org/abs/1802.08242)  
- **FMRT**
  - Yu, Hsiang-Fu, Nikhil Rao et Inderjit S. Dhillon (2016). *Temporal regularized matrix factorization for high-dimensional time series prediction.* | [Recherche](https://papers.nips.cc/paper/6160-temporal-regularized-matrix-factorization-for-high-dimensional-time-series-prediction)  
- **FMNB**
  - Gonen, Mehmet Suleiman A. Khan et Samuel Kaski (2013). *Kernelized Bayesian Matrix Factorization.* | [Recherche](http://proceedings.mlr.press/v28/gonen13a.html)  
  - Gonen, Mehmet et Samuel Kaski (2014). *Kernelized Bayesian Matrix Factorization.* | [Recherche](10.1109/TPAMI.2014.2313125)  
- **FMPB**
  - Salakhutdinov, Ruslan et Andriy Mnih (2008). *Bayesian probabilistic matrix factorization using Markov chain Monte Carlo.* | [Recherche](https://doi.org/10.1145/1390156.1390267)  
- **FMTB**
  - Chen, Xinyu, Lijun Sun (2019). *Bayesian temporal factorization for multidimensional time series prediction.* | [Recherche](https://arxiv.org/abs/1910.06366)  
- **FMNB**
  - Zhou, Tinghui, Hanhuai Shan, Arindam Banerjee, Guillermo Sapiro (2012). *Kernelized probabilistic matrix factorization: exploiting graphs and side information.* | [Recherche](https://people.eecs.berkeley.edu/~tinghuiz/papers/sdm12_kpmf.pdf)  
- **FMP**
  - Salakhutdinov, Ruslan, Andriy Mnih (2008). *Probabilistic Matrix Factorization.* | [Recherche](https://dl.acm.org/doi/10.5555/2981562.2981720)  


# Statut du projet
> En construction.

