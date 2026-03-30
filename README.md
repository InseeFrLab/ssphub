# Site web du réseau des data scientists du service statistique public

Code source du `SSPHub`, le site du réseau des _data scientists_ du service statistique public (SSP).

Contenu disponible sur https://ssphub.netlify.app.

Site web construit avec `Quarto`

_Des assistants d'IA générative ont été utilisés à différents stades du processus._

# How to

## faire une infolettre

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
