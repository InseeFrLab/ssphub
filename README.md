# Site web du réseau des data scientists du service statistique public

Code source du `SSPHub`, le site du réseau des 
_data scientists_ du service statistique public (SSP).

Contenu disponible sur https://ssphub.netlify.app.

Site web construit avec `Quarto`

# Besoin 
- VSCode avec Python, R installé
- accès github

# Architecture


# Version bilingue
Faite avec [babelquarto](https://docs.ropensci.org/babelquarto/)
Pour rendre le site, faire dans Terminal :

- render: `Rscript scripts/render.R`
- preview: `Rscript scripts/preview.R`
- render and preview : `Rscript scripts/render.R && Rscript scripts/preview.R`

# To do

- speed up R set up in Github actions (with renv?)
- move image to S3 to have smaller repo (impact on newsletter download image function)
- have a developpement Quarto profile ?
 
## Useful 
- move blog/polars/polars-tuto.qmd to another repo ? 
- move blog/parquetRP/snippets ?
