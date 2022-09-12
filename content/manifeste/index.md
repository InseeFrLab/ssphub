---
title: Le manifeste du réseau des data-scientists du service statistique public
subtitle: Un document produit collectivement pour s'accorder sur les objectifs et les moyens du réseau  
summary: |
    Ce document, issu de délibérations collectives,
    propose, de manière non exhaustive, quelques
    éléments sur les objectifs du réseau, les moyens
    mis en oeuvre et la gouvernance de celui-ci.

date: "2022-04-11T00:00:00Z"

#image:
#  caption: Photo by rawpixel on Unsplash
#  focal_point: Smart

#links:
#url_code: ""
#url_pdf: ""
#url_slides: ""
#url_video: ""

---

# Contexte institutionnel

La _data science_ a beaucoup à offrir à la statistique publique en termes de gains de productivité, d’automatisation des tâches, d’exploitation de nouvelles sources de données et de nouveaux sujets d’études.

L’importance de la _data science_ pour la sphère publique, a été soulignée dans différents rapports successifs. Pour répondre en partie à ce défi, [le rapport public sur l’_« Évaluation des besoins de l’État en compétences et expertise en matière de donnée »_](https://www.numerique.gouv.fr/publications/rapport-evaluation-besoins-etat-en-competences-et-expertises-en-matiere-de-donnee/) ainsi que le rapport de l’Inspection Générale de l’INSEE _« Les corps de l’INSEE et les carrières des data scientists »_[^1] recommandent la création de réseaux de _data scientists_ pour répondre aux besoins dans ce domaine.

[^1]: Rapport de l'Inspection Générale de l'Insee `N° 2020_48/DG75-B001` (non public)
<!---
(https://intranet.insee.fr/jcms/38757_DBFileDocument/rfx-2020-48-les-corps-de-l-insee-et-les-carrieres-de-data-scientists-ig-30-06-2021)
--->

La pratique de la _data science_ nécessite cependant l’expérience de nouvelles compétences,  environnements et méthodes de travail.


# Thématiques

La _data science_ est un domaine interdisciplinaire combinant des techniques issues des mathématiques, de la statistique et de l’informatique pour produire de la connaissance utile à partir de données.

Le réseau regroupant les agents  volontaires de l'`Insee` et des services statistiques ministériels a vocation à aborder plus spécifiquement les thématiques faisant partie de la boite à outils de la _data science_ et pouvant amener des **évolutions positives dans le métier de statisticien public**. Certaines de ces techniques sont par ailleurs déjà employées par des agents du Service Statistique Public (
{{< abbr title="Le Service Statistique Public (SSP) regroupe les institutions en charge de la production de statistiques officielles. Il est principalement constitué de l'Insee et des services statistiques ministériels (SSM). Pour en savoir plus, le [site de l'Insee](https://www.insee.fr/fr/information/1302192) propose des éléments supplémentaires" text="SSP" >}}
) ne se définissant pas nécessairement comme _data scientists_.

La liste des sujets abordés dans le cadre du réseau sont, entre autres : 

- Visualisations esthétiques, automatisées et potentiellement interactives[^2] ;
- Acquisition, appréhension de nouvelles sources de données et exploitation de données non structurées : images ou données textuelles issues  d'*open data*, de *webscraping* ou d'API ;
- Utilisation d’algorithmes de _machine_ et _deep learning_ avec des jeux de données de nature variée dans une optique de production de statistiques récurrentes ou d’études visant à modéliser des phénomènes avec un nombre d’hypothèses restreintes. Ces algorithmes, fréquemment appliqués dans le cadre du traitement de langage naturel (NLP) ou d'exploitations d'images (_computer vision_), peuvent aussi servir à des fins de modélisation plus classique (imputation de valeurs manquantes, prédiction d'une variable...) ;
- Bonnes pratiques issues du monde informatique et mise en production : standards de qualité de code, gestion de versions et travail collaboratif (`Git`), mise à disposition automatique d'environnements standardisés[^3] ;
- Gestion et manipulation de données massives : format des bases, calcul distribué ou parallélisé...

[^2]: Ces _dataviz_ peuvent être des applications réactives (`Shiny`, `Dash`, `StreamLit`) ou des visualisations géographiques (`Leaflet`, `Folium`, `Plotly`)
[^3]: La mise en place d'environnements standardisés intègre des problématiques comme la création d’environnements portables (`Docker`) mais aussi la mise en place d'outils de déploiement automatisés (`CI/CD`, `Kubernetes`)

Dans le cadre d'une démarche ouverte, les membres du réseau ont mis en oeuvre
un site web, nommé _« SSP Hub »_, permettant de diffuser amplement
les projets et
les connaissances
acquises, qu'elles soient produites par des membres du réseau ou non.


# Objectifs 

À court terme, les objectifs du réseau sont :

1. __Faciliter l’échange entre pairs__, notamment les retours d'expérience sur des problématiques génériques de la _data science_ appliquées aux tâches du {{< abbr title="Le Service Statistique Public (SSP) regroupe les institutions en charge de la production de statistiques officielles. Il est principalement constitué de l'Insee et des services statistiques ministériels (SSM). Pour en savoir plus, le [site de l'Insee](https://www.insee.fr/fr/information/1302192) propose des éléments supplémentaires" text="SSP" >}}. Ces échanges doivent permettre de résoudre les problèmes concrets que les agents rencontrent dans leur pratique de la _data science_ et favoriser la mutualisation des connaissances ;
2. **Promouvoir et démystifier la _data science_** en acculturant un public non aguerri à cette thématique en montrant par l'exemple ses apports concrets mais aussi en mettant à disposition les ressources et formations disponibles pour son appréhension.

A plus long terme, selon la réussite initiale du réseau, les demandes exprimées par les participants et les moyens dégagés, le _SSP Hub_ pourrait :

1. **Offrir une vitrine des initiatives de _data science_** au sein du SSP et favoriser la visibilité et le dialogue avec d'autres acteurs de la _data science_ (autres institutions françaises, institutions internationales, enseignement supérieur et recherche académique...)
2. **Accompagner de manière ponctuelle des équipes** dans l'amélioration de processus de production existants grâce aux outils ou méthodes de la _data science_. Ces accompagnements offrent un complément utile aux formations en proposant l'acquisition de compétences sur un projet sur lequel les agents travaillent à une fréquence élevée.

# Publics

Ce réseau s’adresse à tous les agents du Service Statistique Public intéressés par les thématiques définies précédemment, indépendamment du niveau d'expertise. En pratique coexisteraient donc des agents experts et débutants en _data science_ partageant leurs connaissances et pouvant s’entraider, des statisticiens « classiques » curieux de ces nouvelles techniques et désireux d’en apprendre plus voire se former, et enfin des encadrants souhaitant s’acculturer aux sujets en vue de favoriser l’utilisation de ces outils dans leurs services.

Si certains sujets peuvent concerner un public restreint dans le {{< abbr title="Le Service Statistique Public (SSP) regroupe les institutions en charge de la production de statistiques officielles. Il est principalement constitué de l'Insee et des services statistiques ministériels (SSM). Pour en savoir plus, le [site de l'Insee](https://www.insee.fr/fr/information/1302192) propose des éléments supplémentaires" text="SSP" >}} (analyse d'image par exemple) d'autres ont vocation à intéresser et aider un public bien plus large, ne se définissant pas nécessairement comme _data scientist_ (`Git`, bonnes pratiques de développement, _data vizualisation_ entre autres).

# Moyens

Plusieurs éléments sont mis en place pour atteindre les objectifs du réseau :

- Le présent __site web__ indexe les travaux, formations et bonnes pratiques à mutualiser pour diffusion de l’information. Son contenu est en cours construction sur la base des suggestions des personnes faisant parti du réseau ;
- Un ensemble d’__évènements ouverts__. Afin de répondre aux différents besoins, ceux-ci visent des publics, durées et finalités variés. Le premier type d'évènement, testé en 2022, est l'_Open Hour_ dont le rôle est de choisir pour chaque occurence un thème en amont et d'en discuter informellement entre agents travaillant sur cette thématique et ceux désireux d'en apprendre plus. D'autres évènements seront mis en place progressivement selon les formats et contenus identifiés comme pertinents ;
- Des canaux de communication sur l’actualité du réseau (infolettre mensuelle) et d’échanges en continu entre agents du réseau (un canal `Tchap`, qu'il est possible de rejoindre sur simple demande à <utilitr-contact@insee.fr>, est proposé pour une transmission d'information en continu)

# Résumé

Le SSP Hub doit permettre de faire « plus et mieux » de _data science_ en étant composé d’un public aux compétences et attentes diverses. Le réseau se veut inclusif, ouvert, utile, informel et convivial.

Pour faciliter son adoption, le réseau cherche à apporter des solutions et informations concrètes sans impliquer une charge horaire trop conséquente. 

Les contours du réseau tels que décrits dans le présent manifeste, ainsi que la ligne éditoriale des sujets et évènements sont une première proposition dont la pertinence sera jugée à l’aune de la satisfaction des participants. 