# Website of the data scientists of the French Official Statistical System

Code of the [`SSPHub`](https://ssphub.netlify.app.), a website for data scientists of the French Official Statistical System.

# How to use this repo ? 
## Set up 
Assumes you have an account on [https://datalab.sspcloud.fr/](https://datalab.sspcloud.fr/)
- Open a service (VSCode or other IDE) with **R installed**
- Github account, (with credentials to InseeFrLab/ssphub if you want to deploy the website) 

## How to contribute
Specified in [contributing.md](CONTRIBUTING.md)

## How to 

### Render / preview when coding
- render: `Rscript scripts/render.R`
- preview: `Rscript scripts/preview.R`
- render and preview : `Rscript scripts/render.R && Rscript scripts/preview.R`

If a PR is opened, a website preview is automatically generated. The link to the preview is in the Github PR details. Every push to the remote repo will trigger an update of the website preview. 

### Publish
Publishing is automated with CI in the [prod.yaml](.github/workflows/prod.yaml) file. 

# Credits
Thanks to : 

- [babelquarto](https://docs.ropensci.org/babelquarto/)
- Quarto 

# Personnal 

## To do 
- speed up R set up in Github actions (with renv? / dependencies set to '"hard"'?)
- move image to S3 to have smaller repo (impact on newsletter download image function)
- have a developpement Quarto profile ?
- doublon blog/polars/polars-tuto.qmd et additional/notebooks

## Useful 
- init.sh ??

