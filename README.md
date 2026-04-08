# Code du site du réseau du SSPHub, le réseau des data scientists du SSP (english below)

Ce repo est le repo du [`SSPHub`](https://ssphub.netlify.app.), le site qui permet de partager du contenu entre data scientists du SSP.
Il permet aussi de présenter des projets innovants portés au sein du SSP.

Le site est ouvert à toutes les contributions.
Pour savoir comment contribuer, veuillez vous référer aux indications données ci-dessous.

_Des assistants d'IA générative ont été utilisés à différents stades du processus._

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

- render: `Rscript scripts/1_render.R`
- preview: `Rscript scripts/3_preview.R`
- render and preview : `Rscript scripts/3_render_preview.R`

If a PR is opened, a website preview is automatically generated. The link to the preview is in the Github PR details. Every push to the remote repo will trigger an update of the website preview.

### Create a project

used with Python. `create_folder_and_file("2022_JOCAS")`

```{shell}
cd scripts
uv run 1_template.py name_of_the_folder (optional: name_of_the_template.qmd)
```

Example :

```{shell}
cd scripts
uv run 1_template.py test
```

### Harmonization of categories

private data sources : introduce code snippets for YAML part.

```{json}
	"add private data tags (FR)": {
		"prefix": "prdata",
		"body": "    - données de caisse\n    - données de téléphonie mobile\n    - données CB\n    - données comptes bancaires",
		"description": "adds categories for listing of similar projects related to private data sources"
	},

	"add private data tags (EN)": {
		"prefix": "en_prdata",
		"body": "    - scanner data\n    - mobile phone data\n    - credit card data\n    - bank account data",
		"description": "adds categories for listing of similar projects related to private data sources"
	},
```

When a new category is created, do a find and replace all to add this category to all the listing to ensure consistency.

### Translate a page to english

Config :

- have a deepl API KEY stored as `DEEPL_API_KEY`
- working directory must be ssphub/scripts

```{shell}
# it will take the "index.qmd" file of the project/project_subdir dir and translate it into "index.en.qmd
Rscript 2_translate.R project_subdir
```

Example

```{shell}
Rscript scripts/2_translate.R 2023_doremifasol
```

Have a careful check with the proposed translated webpage.
The automated translation often
adds a backslash or "-" at some spots that creates bugs when rendering the website.
For example :

- `description: | -` for `description: |` - `{{\< fa brands github >}}` for `{{< fa brands github >}}`
- Markdown table structure contains many whitespace and ---

The translate programm removes some issues but not all. It deletes all "\", multiple spaces and multiple "----".
But some ENTER remain, and it doesn't translate categories of listing.
A careful look is needed :

- listing categories in the YAML part must be translated.
- inside Qmd table to ensure that a row is always coded in 1 line of code.

### Publish

Publishing is automated with CI in the [prod.yaml](.github/workflows/prod.yaml) file.

# Credits

Thanks to :

- [babelquarto](https://docs.ropensci.org/babelquarto/)
- Quarto

# How to

## write a newsletter

Deadline pour envoi en validation (n1) : une semaine avant le dernier jour ouvré du mois

**1 - préparer la veille:**

- [ ] mettre à jour les articles issus du groupe de veille à partir du repo [ssphub_veille](https://github.com/SSPHub/ssphub_veille)
- [ ] regarder les sujets possibles parmi la liste des articles issus du groupe de veille sur grist (sujets possible : OCR ? + comment on se répartit les articles)

**2 - inclure la veille dans la newsletter:**

- [ ] depuis le dossier ssphub, lancer `{bash} bash scripts/init_infolettre.sh` : va déterminer le nouveau numéro de l'infolettre, créer une branche nommée infolettre_27, créer un dossier infolettre/infolettre_27 et y copier le template + commiter le tout. On peut spécifier le numéro de l'infolettre en indiquant `{bash} bash scripts/init_infolettre.sh 27`
- [ ] dans l'infolettre initialisée (infolettre/infolettre_27/index.qmd) rédiger le qmd avec:
  - la veille
  - les actualités
  - la dataviz
  - tout autre sujet
- [ ] Une fois l'infolettre ok, faire une PR sur main pour relecture. Un site de preview sera déployé (lien indiqué automatiquement en commentaire dans la PR)
- [ ] mise à disposition de l'infolettre sur le site du ssphub en mergeant la branche sur le main
- [ ] envoi infolettre par email avec les outils du repo [newsletter_tools](https://github.com/SSPHub/newsletter_tools)
- [ ] envoi infolettre par Tchap avec les outils du repo [newsletter_tools](https://github.com/SSPHub/newsletter_tools)

Cf. les readme des repo :

- https://github.com/SSPHub/newsletter_tools
- https://github.com/SSPHub/ssphub_veille

## Add files to S3 storage

### Config

- Easiest is to switch to S3 config before launching SSPCloud service. No need to initialize the connection then.

- Otherwise, you have to have the following secrets :
  - S3_SSPHUB_ACCESS_KEY
  - S3_SSPHUB_SECRET_ACCESS_KEY
  - S3_SSPHUB_BUCKET
  - AWS_ENDPOINT_URL (is already configured in SSPCloud)
  - Initialize the connection :
    `mc alias set s3ssphub $AWS_ENDPOINT_URL $S3_SSPHUB_ACCESS_KEY $S3_SSPHUB_SECRET_ACCESS_KEY`

### Use

Then use Minio client to intervene with CLI.
If you're using the 2nd option, you should replace s3 with s3 ssphub.

- List files :
  `mc ls --recursive s3/$S3_SSPHUB_BUCKET/`

- Copy files to S3 :
  `mc cp ./file.txt s3/$S3_SSPHUB_BUCKET/dossier/mon_fichier.txt`

- Delete files from S3 :
  `mc rm s3/$S3_SSPHUB_BUCKET/images/photo.jpg`
