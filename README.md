# Code du site du réseau du SSPHub, le réseau des data scientists du SSP (english below)

Ce repo est le repo du [`SSPHub`](https://ssphub.netlify.app/), le site qui permet de partager du contenu entre data scientists du SSP.
Il permet aussi de présenter des projets innovants portés au sein du SSP.

Le site est ouvert à toutes les contributions.
Pour savoir comment contribuer, veuillez vous référer aux indications données ci-dessous.

_Des assistants d'IA générative ont été utilisés à différents stades du processus._

# Website of the data scientists of the French Official Statistical System

This repository contains the code for the [`SSPHub`](https://ssphub.netlify.app/), a collaborative platform designed for data scientists working within the French Official Statistical System. The website serves as a hub for sharing content, best practices, and innovative projects developed by data scientists across the system.

# How to use this repo ?

## Set up

To get started with this repository, the more convenient is to have :

- An account on [SSPCloud](https://datalab.sspcloud.fr/);
- A service on the SSPCloud (such as VSCode or another IDE) with **R installed**;
- A GitHub account;
- If you plan to deploy the website, you will also need credentials for the `InseeFrLab/ssphub` repository.

## How to contribute

Contribution guidelines are detailed in the [`contributing.md`](https://github.com/InseeFrLab/ssphub/blob/fusion_site_ssplab/CONTRIBUTING.md) file. Please refer to this document for instructions on how to submit changes, report issues, or suggest new features.

## How to render / preview when coding

To render or preview the website during development, you can use the following commands:

- To render the site:

  ```bash
  Rscript scripts/1_render.R
  ```

- To preview the site:

  ```bash
  Rscript scripts/3_preview.R
  ```

- To render and preview simultaneously:
  ```bash
  Rscript scripts/3_render_preview.R
  ```

If a pull request (PR) is opened, a preview of the website is automatically generated. The link to this preview is available in the PR details on GitHub. Every push to the remote repository will automatically update the website preview.

## How to add an innovative project

When adding a new project, you must:

- initialize a new project;
- translate the project (French and English);
- check with the preview and render.

### Initialize a new project

Projects can be added to the website using Python. Use the following commands to generate a new project folder and file:

```bash
cd scripts
uv run 1_template.py name_of_the_folder (optional: name_of_the_template.qmd)
```

**Example:**

```bash
cd scripts
uv run 1_template.py "2022_JOCAS"
```

### Harmonization of categories

When creating a project, have a careful look at categories.
If you create a new category, perform a global "search and replace" to add this category to all relevant past listings, ensuring consistency across the previous projects.

For convenience, you can introduce code snippets for the YAML section to ensure consistency across projects. Here is an example:

```yaml
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

### Translate a page to English

A project webpage has to be written in French (a `index.qmd` file) and in English (a `index.en.qmd` file).
You can translate manually a page to English or use automated translation tool.

To use automated translation tool, you will need:

- A DeepL API key stored as `DEEPL_API_KEY`.
- Your working directory must be set to `ssphub/scripts`.

Run the following command to translate the `index.qmd` file of a project or subdirectory into `index.en.qmd`:

```bash
Rscript 2_translate.R project_subdir
```

**Example:**

```bash
Rscript scripts/2_translate.R 2022_JOCAS
```

**Important Notes:**

- Carefully review the translated webpage. Automated translation may introduce formatting issues, such as backslashes or hyphens, which can cause rendering errors.
- Common issues include:
  - `description: | -` instead of `description: |`
  - `{{\< fa brands github >}}` instead of `{{< fa brands github >}}`
  - Markdown tables may contain excessive whitespace or incorrect separators.
- The translation script removes some issues (e.g., extra quotes, multiple spaces, or excessive `-`), but manual review is still necessary:
  - Listing categories in the YAML section **must be translated**.
  - Ensure that each row in the Qmd table is coded in a single line.

## How to write a newsletter

Deadline pour envoi en validation (n1) : une semaine avant le dernier jour ouvré du mois.
L'infolettre est rédigée uniquement en français.

**1 - Préparer la veille:**

- Mettre à jour les articles issus du groupe de veille à partir du dépôt [ssphub_veille](https://github.com/SSPHub/ssphub_veille).
- Regarder les sujets possibles parmi la liste des articles issus du groupe de veille sur Grist.

**2 - Initialiser la newsletter:**

- Depuis le dossier `ssphub`, lancer :

  ```bash
  bash scripts/init_infolettre.sh
  ```

  Cela déterminera le nouveau numéro de l'infolettre, créera une branche nommée `infolettre_27`,
  créera un dossier `infolettre/infolettre_27` et y copiera le template, puis committera le tout.
  Vous pouvez spécifier le numéro de l'infolettre en indiquant :

  ```bash
  bash scripts/init_infolettre.sh 27
  ```

**3 - Inclure la veille et rédiger la newsletter:**

- Dans l'infolettre initialisée (`infolettre/infolettre_27/index.qmd`), rédiger le fichier `.qmd` avec :
  - La veille
  - Les actualités
  - La dataviz
  - Tout autre sujet

- Une fois l'infolettre prête, faire une PR sur `main` pour relecture.
  Un site de preview sera déployé (lien indiqué automatiquement en commentaire dans la PR).
- Mettre à disposition l'infolettre sur le site du SSPHub en mergeant la branche sur `main`.
- Envoyer l'infolettre par email et Tchap avec les outils du dépôt [newsletter_tools](https://github.com/SSPHub/newsletter_tools).

_Cf._ les readme des repo :

- https://github.com/SSPHub/newsletter_tools
- https://github.com/SSPHub/ssphub_veille

## How to add files to SSPHub's S3 storage

To avoid files being lost when one's SSPHub account is updated on the SSPCloud,
website material must be stored in the SSPHub's S3 storage.

### Config

**Recommended configuration**
The easiest way to configure SSPHub's S3 access is to switch to the S3 configuration before launching the SSPCloud service.
This avoids the need to manually initialize the connection.

**Manual configuration**
If you prefer to configure S3 manually, you will need the following secrets from one of the admin of SSPHub:

- `S3_SSPHUB_ACCESS_KEY`
- `S3_SSPHUB_SECRET_ACCESS_KEY`
- `AWS_ENDPOINT_URL` (already configured in SSPCloud)

You will then need to initialize the connection using the Minio client:

```bash
mc alias set s3ssphub $AWS_ENDPOINT_URL $S3_SSPHUB_ACCESS_KEY $S3_SSPHUB_SECRET_ACCESS_KEY
```

### Use

Once configured, you can use the Minio client to interact with S3 via the command line.
You can check your Minio config with `mc alias list` and the list of minio aliases will be echoed.

Replace `s3` with `s3ssphub` in the above examples if you are using the manual configuration.

- **List files:**

  ```bash
  mc ls --recursive s3/ssphub/
  ```

- **Copy files to S3:**

  ```bash
  mc cp ./file.txt s3/ssphub/dossier/mon_fichier.txt
  ```

- **Delete files from S3:**
  ```bash
  mc rm s3/ssphub/images/photo.jpg
  ```

## How to publish

Publishing is fully automated using Continuous Integration (CI) via the [`prod.yaml`](https://github.com/InseeFrLab/ssphub/blob/fusion_site_ssplab/.github/workflows/prod.yaml) workflow file. Any changes merged into the `main` branch will automatically trigger a deployment of the updated website.

The [`dev.yaml`](https://github.com/InseeFrLab/ssphub/blob/fusion_site_ssplab/.github/workflows/dev.yaml) workflow file deploys an automated preview on Github pages when a pull request targetting the main branch is opened.

# Credits

Special thanks to:

- [babelquarto](https://docs.ropensci.org/babelquarto/)
- Quarto
