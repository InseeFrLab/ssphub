# Site web du réseau des data scientists du service statistique public

Code source du `SSPHub`, le site du réseau des 
_data scientists_ du service statistique public (SSP).

Contenu disponible sur https://ssphub.netlify.app.

Site web construit avec `Quarto`

*Des assistants d'IA générative ont été utilisés à différents stades du processus.*

# How to

## faire une infolettre

Deadline pour envoi en validation (n1) : une semaine avant le dernier jour ouvré du mois 

- [ ] depuis le dossier ssphub, lancer `{bash} bash scripts/init_infolettre.sh 27` : va créer une branche nommée infolettre_27, copier le template etc. 
- [ ] mettre à jour les articles issus du groupe de veille à partir du repo [ssphub_veille](https://github.com/SSPHub/ssphub_veille)
- [ ] regarder les sujets possibles parmi la liste des articles issus du groupe de veille sur grist (sujets possible : OCR ? + comment on se répartit les articles)
- [ ] rédiger le qmd avec toutes les informations
- [ ] faire une PR pour relecture 
- [ ] mise à disposition de l'infolettre sur le site du ssphub en mergeant la branche sur le main
- [ ] envoi infolettre par email avec les outils du repo [newsletter_tools](https://github.com/SSPHub/newsletter_tools)
- [ ] envoi infolettre par Tchap avec les outils du repo [newsletter_tools](https://github.com/SSPHub/newsletter_tools)

Cf. les readme des repo : 
- https://github.com/SSPHub/newsletter_tools 
- https://github.com/SSPHub/ssphub_veille