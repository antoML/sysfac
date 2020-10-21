# sysfac

> This repository contains matrix factorization methods for spatiotemporal data imputation. This will result in a master's study to understand their behaviour under various missing data scenarios. In addition to recommendation systems, factorization methods can be used in various fields, transport and health among others. 



# Uses

To use the models, the user must have R or Python, and Jupyter Notebook installed.

> *The Jupyter notebooks are intended to be both educational (to introduce the user to factorization methods) and academic (for the user with prior knowledge). The notebooks’ explanations are in French.* 

# Summary of the Implemented Models

> *links on the acronyms take you directly to the Jupyter notebooks.*

## Non-probabilistic
| French Name | Decomposition method | Correlation | Hyperparameters | Notes | English |
| --- | --- | --- | --- | --- | --- | 
| Factorisation de matrice non négative ([FMNN](https://github.com/antoML/sysfac/blob/master/codes/livrets/FMNN-FactorisationMatriceNonNegative.ipynb)) | Non negative |   | <p>rank,  &alpha;,  &beta;</p> |  | Non-negative matrix factorization (NNMF) |
| Factorisation de matrice à pénalité fixe ([FMPF](https://github.com/antoML/sysfac/blob/master/NP_FM-ApprentissageIncremental_OMF.ipynb)) |  | temporal | <p>rank,  x<sub>t</sub>,  &rho;<sub>u</sub>,  &rho;<sub>v</sub>,  P</p> | Online Learning | Fixed penalty matrix factorization (FPMF) |
| Factorisation de matrice à tolérance fixe ([FMTF](https://github.com/antoML/sysfac/blob/master/NP_FM-ApprentissageIncremental_OMF.ipynb)) |  | temporal | <p>rank,  x<sub>t</sub>,  &epsilon;,  &rho;<sub>u</sub>,  P</p> | Online Learning | Fixed tolerance matrix factorization (FTMF) |
| Factorisation de matrice sans tolérance ([FMST](https://github.com/antoML/sysfac/blob/master/codes/livrets/prediction_NP_FM-ApprentissageIncremental_OMF.ipynb)) |  | temporal | <p>rank,  x<sub>t</sub>,  &rho;<sub>u</sub>,  P</p> | Online Learning | Zero tolerance matrix factorization ([ZTMF](https://github.com/antoML/sysfac/blob/master/NP_FM-ApprentissageIncremental_OMF.ipynb)) |
| Factorisation de matrice par rang inférieur structurée ([FMRIS](https://github.com/antoML/sysfac/blob/master/codes/livrets/prediction_NP_FM-RangInferieurStructure_SLRMC.ipynb)) | Singular Values Decomposition | temporal | <p>rank,  duration,  forecast,  n,  &rho;</p> | Row by row | Structured low rank matrix completion (SLRMC) |
| Factorisation de matrice à régularisation temporelle ([FMRT](https://github.com/antoML/sysfac/blob/master/codes/livrets/FMRT-FactorisationMatriceRegularisationTemporelle.ipynb)) | Singular Values Decomposition | temporal | <p>rank,  &lambda;<sub>w</sub>,  &lambda;<sub>x</sub>,  &lambda;<sub>&theta;</sub>,  &eta;,  duration</p> |  | Temporal regularized matrix factorization (TRMF) |

## Probabilistic
| French Name | Probabilistic type | Correlation | Hyperparameters | Optimisation | Notes | English |
| --- | --- | --- | --- | --- | --- | --- |
| Factorisation de matrice probabiliste bayésienne ([FMPB](https://github.com/antoML/sysfac/blob/master/codes/livrets/FMBP-FactorisationMatriceBayesienneProbabiliste.ipynb)) | Bayesian | temporal | <p>rank,  &alpha;,  &alpha;<sub>V</sub>,  &alpha;<sub>Y</sub></p> | MCMC |  | Bayesian probabilistic matrix factorization (BPMF) |
| Factorisation de matrice à temporalité bayésienne ([FMTB](https://github.com/antoML/sysfac/blob/master/codes/livrets/FMBT-FactorisationMatriceBayesienneTemporelle.ipynb)) | Bayesian | temporal | <p>rank,  &mu;<sub>0</sub>,  W<sub>0</sub>,  &nu;<sub>0</sub>,  &beta;<sub>0</sub>,  &alpha;,  &beta;,  M<sub>0</sub>,  &psi;<sub>0</sub>,  S<sub>0</sub></p> | MCMC |  | Bayesian temporal matrix factorization (BTMF) |
| Factorisation de matrice à noyaux bayésiens ([FMNB](https://github.com/antoML/sysfac/blob/master/codes/livrets/PBG_FM-NoyauxBayesiens_KBMF.ipynb)) | Bayesian | spatiotemporal | <p>rank,  P<sub>z</sub>,  P<sub>x</sub>,  &alpha;<sub>&eta;</sub>,  &beta;<sub>&eta;</sub>,  &alpha;<sub>&lambda;</sub>,  &beta;<sub>&lambda;</sub>,  &sigma;<sub>g</sub>,  &sigma;<sub>h</sub>,  &nu;</p> | Variational |  Kernels : <p>Exponential<br>Gaussian<br>Periodic<p> | Kernelized bayesian matrix factorization (KBMF) |
| Factorisation de matrice à noyaux probabilistes ([FMNP](https://github.com/antoML/sysfac/blob/master/codes/livrets/PFG_FM-NoyauxProbabilistes_KPMF.ipynb)) | Frequentist | spatiotemporal | <p>rank,  &eta;,  &sigma;</p> | GD/SGD |  Kernels : <p>Exponential<br>Gaussian<br>Periodic<p> | Kernelized probabilistic matrix factorization (KPMF) |
| Factorisation de matrice probabiliste ([FMP](https://github.com/antoML/sysfac/blob/master/codes/livrets/FMP-FactorisationMatriceProbabiliste.ipynb)) | Frequentist |   | <p>rank,  &eta;,  &epsilon;,  momentum,  &lambda;</p> | GD | Variantes : <p>Prieures adaptatives<br>Contraintes</p> | Probabilistic matrix factorization (PMF) |


# References
## Data
> The transport data used comes from the Github [transdim](https://github.com/xinychen/transdim). 

## Projets liés
> To view the source codes, please go directly to the project notebooks. 

## Recherches
> This subsection brings together research directly related to the methods that have been implemented.

- **FMPF,  FMTF  et  FMST**
  - Gultekin, San, and John Paisley (2019). *Online Forecasting Matrix Factorization*. | [research](https://arxiv.org/abs/1712.08734)  
- **FMNN**
  - Gaujoux, Renaud, and Cathal Seoighe (2010). *A flexible R package for nonnegative matrix factorization.* | [research](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-11-367)  
  - Lin, Xihui, and Paul C. Boutros (2020). *Optimization and expansion of non-negative matrix factorization.* | [research](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6945623/)  
- **FMRIS**
  - Gillard, Jonathan, and Konstantin Usevich (2018). *Structured low-rank matrix completion for forecasting in time series analysis.* | [research](https://arxiv.org/abs/1802.08242)  
- **FMRT**
  - Yu, Hsiang-Fu, Nikhil Rao, and Inderjit S. Dhillon (2016). *Temporal regularized matrix factorization for high-dimensional time series prediction.* | [research](https://papers.nips.cc/paper/6160-temporal-regularized-matrix-factorization-for-high-dimensional-time-series-prediction)  
- **FMNB**
  - Gonen, Mehmet Suleiman A. Khan, and Samuel Kaski (2013). *Kernelized Bayesian Matrix Factorization.* | [research](http://proceedings.mlr.press/v28/gonen13a.html)  
  - Gonen, Mehmet, and Samuel Kaski (2014). *Kernelized Bayesian Matrix Factorization.* | [research](10.1109/TPAMI.2014.2313125)  
- **FMPB**
  - Salakhutdinov, Ruslan, and Andriy Mnih (2008). *Bayesian probabilistic matrix factorization using Markov chain Monte Carlo.* | [research](https://doi.org/10.1145/1390156.1390267)  
- **FMTB**
  - Chen, Xinyu, and Lijun Sun (2019). *Bayesian temporal factorization for multidimensional time series prediction.* | [research](https://arxiv.org/abs/1910.06366)  
- **FMNB**
  - Zhou, Tinghui, Hanhuai Shan, Arindam Banerjee, and Guillermo Sapiro (2012). *Kernelized probabilistic matrix factorization: exploiting graphs and side information.* | [research](https://people.eecs.berkeley.edu/~tinghuiz/papers/sdm12_kpmf.pdf)  
- **FMP**
  - Salakhutdinov, Ruslan, and Andriy Mnih (2008). *Probabilistic Matrix Factorization.* | [research](https://dl.acm.org/doi/10.5555/2981562.2981720)  


# Status
> In construction.
