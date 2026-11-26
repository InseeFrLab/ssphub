Les 16 et 17 juin 2026, **l’Insee et le réseau SSPHub ont réuni au Lieu de la transformation publique, à Paris, une vingtaine de participants venus de différentes administrations** pour [deux jours dédiés à la contribution open source](../../event/2026-06-jdos/index.llms.md). Data scientists, statisticiens, développeurs et documentalistes du service statistique public se sont retrouvés autour d’un objectif simple : démystifier la contribution open source et montrer que chacun, quel que soit son profil, peut apporter de la valeur aux outils qu’on utilise au quotidien — par le code, mais aussi par la documentation, les tests, la traduction ou le signalement de bugs. Ces journées auront aussi été **l’occasion de se rencontrer en travaillant ensemble sur des projets concrets** que l’on utilise quotidiennement.

Le pari est tenu : ces deux jours se concluent sur des **dizaines de contributions** (pull requests, issues et commit) portées par une vingtaine de contributeurs.

## Le programme

Le format reposait sur du travail en petits groupes, chacun guidé par un référent volontaire, sur des projets open source réels et utilisés par la communauté.

La première matinée a démarré par la **keynote d’ouverture de Sylvain Corlay** (CEO de QuantStack), qui a relié son parcours d’entrepreneur dans l’open source à son engagement, et celui de son entreprise, au sein du projet Jupyter. Les sponsors ont ensuite pitché leurs projets en cinq minutes chacun, avant que les participants ne rejoignent le sujet de leur choix et n’entrent dans le vif du sprint.

Côté outils, les environnements de développement étaient prêts en quelques secondes sur le [SSPCloud](https://datalab.sspcloud.fr) (VSCode, Jupyter, RStudio), avec un simple compte GitHub/GitLab comme prérequis.

## Les contributions par projet

**Quatre projets** étaient confirmés au programme, complétés par des contributions libres sur d’autres briques de l’écosystème.

### [Active Tigger](https://github.com/activetigger/activetigger/)

*Logiciel d’annotation collaborative de textes pour les sciences sociales computationnelles (CREST / ENSAE).*

**Sept pull requests, sept revues de code et deux issues, portées par six contributeurs**. Les travaux ont notamment ajouté l’optimisation d’hyperparamètres, enrichi la documentation du service web et les guidelines de contribution (avec un schéma), et ouvert des pistes pour de futures fonctionnalités comme l’import de jeux de données pour les projets d’images ou une API d’embeddings. Une bonne illustration du cycle complet : des PR, mais aussi beaucoup de revues entre pairs.

### [SNDSTools](https://github.com/SNDStoolers/sndsTools)

*Boîte à outils Python/R pour faciliter l’accès aux données du Système National des Données de Santé (Insee DEE / Inria / DREES).*

**Dix pull requests et treize issues, par six contributeurs**. Côté code : passage à l’évaluation paresseuse (lazy tables) pour plusieurs extractions, clés de jointure des tables DCIR, extractions HAD et SSR, et une meilleure cohérence des noms de tables dans les données synthétiques. Côté issues : une feuille de route bien remplie (extraction des décès, des indemnités journalières, de la CCAM, de la biologie, des tops de la cartographie des pathologies…), preuve d’un sujet riche et structurant.

### [CanaR](https://github.com/Romanovytch/canar)

*Outil en ligne de commande pour déployer en autonomie des chatbots personnalisés avec du RAG (Céreq).*

**Deux pull requests et trois issues, par deux contributeurs**. L’effort s’est concentré sur le **comptage approximatif de tokens et l’estimation de coût**, complété par plusieurs « good first issues » bien identifiées pour les futurs contributeurs (exemples de questions au démarrage d’une conversation, exploitation de l’historique récent par l’assistant R).

### [UtilitR](https://utilitr.org)

*Documentation collaborative de R à destination des agents du service statistique public (DREES / OSOL).*

**Vingt pull requests et sept issues, par six contributeurs** : la plus grosse récolte du sprint. Au menu, beaucoup de travail concret de documentation et d’outillage : correction de liens morts et de coquilles, migration de `doremifasoldata` vers S3, mise en place d’un workflow GitHub Actions de prévisualisation Quarto pour les PR, nettoyage de la configuration et suppression des références à bioconductor, et une réflexion sur la réorganisation de l’architecture des pages.

### Contributions libres

En plus des quatre projets, les participants ont **contribué individuellement à d’autres outils largement utilisés dans l’écosystème** : neuf pull requests, cinq issues et une revue, par sept contributeurs. Parmi les sujets : un système de commentaires intégré avec gitlab et un correctif pour une meilleure intégration dans les services d’onyxia pour [Quarto](https://github.com/quarto-dev/quarto-cli), l’ajout d’opencode aux images datascience utilisée par onyxia, ou encore des améliorations sur [pynsee](https://github.com/inseefrlab/pynsee). De quoi rappeler que contribuer, c’est aussi améliorer les briques transverses du quotidien.

## En bref

|  |  |
|----|----|
| Durée | 2 jours (16-17 juin 2026) |
| Participants | une vingtaine, de différentes administrations |
| Contributions | 86 au total |
| Détail | 48 pull requests · 30 issues · 8 revues |
| Projets | Active Tigger, SNDSTools, CanaR, UtilitR + contributions libres |

Au-delà des chiffres, ces deux jours auront surtout montré que **la contribution open source est à la portée de tous, et que les data scientists du service public ont toute leur place comme contributeurs actifs des outils qu’ils utilisent**. Cela aura aussi été l’occasion de **travailler différemment tous ensemble autour de projets concrets**, ce qui fut très apprécié de tous, et dans des conditions agréables. Merci à toutes celles et ceux qui ont participé — et rendez-vous pour une prochaine édition.

Le détail des contributions est consultable ici : <https://inseefrlab.github.io/journees-datascience-opensource/contributions.html>

------------------------------------------------------------------------

![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2026-06-jdos/1000030893.jpg)

Groupe sur Utilitr

![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2026-06-jdos/1000030894.jpg)

Groupe sur Activetigger
