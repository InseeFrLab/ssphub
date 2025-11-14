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

###  Create a project
used with Python. `create_folder_and_file("2022_JOCAS")`

```{shell}
cd scripts
uv sync
uv run template.py name_of_the_folder (optional: name_of_the_template.qmd)
```

Example :
```{shell}
cd scripts
uv sync
uv run template.py test
```

### Translate a page to english
Config :
- have a deepl API KEY stored as `DEEPL_API_KEY`
- working directory must be ssphub/scripts

```{shell}
# it will take the "index.qmd" file of the project/project_subdir dir and translate it into "index.en.qmd
Rscript translate.R project_subdir
```

Example
```{shell}
Rscript scripts/translate.R 2023_doremifasol
```


Have a careful check with the proposed translated webpage. The automated translation often
adds a backslash or "-" at some spots that creates bugs when rendering the website. For example :
    - `description: | -` for `description: |`
    - `{{\< fa brands github >}}` for `{{< fa brands github >}}`
    - Markdown table structure contains many whitespace and ---

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

