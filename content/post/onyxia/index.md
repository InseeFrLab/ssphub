---
title: "Onyxia: un cloud idéal pour les data scientists"
subtitle: Une infrastructure de data science avec les technologies à la pointe disponible en open source
toc: true
summary: |
  TO BE COMPLETED
# Link this post with a project
projects: [onyxia]

# Date published
date: '2023-01-10T00:00:00Z'

# Date updated
lastmod: '2023-01-10T00:00:00Z'

# Is this an unpublished draft?
draft: false

# Show this page in the Featured widget?
featured: true

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
#image:
#  focal_point: ''
#  placement: 2
#  preview_only: false

authors:
  - linogaliana

tags:
  - onyxia
  - sspcloud

categories:
  - Insee
---

Onyxia est un logiciel open source développé par l’Insee permettant de fournir un environnement de traitement de données à l’état de l’art. Principalement conçu pour permettre le travail intéractif des data scientists avec la donnée, l’expérience fournie avec Onyxia favorise également la reproductibilité des travaux et leur mise en production.

Il est installé par des organisations souhaitant créer un Datalab (plateforme de traitement de donnée interactive) et qui ont toute le point commun de vouloir construire une plateforme qui embrasse les technologies cloud que sont la conteneurisation et le stockage objet. Ces technologies deviennent indispensables dans l’écosystème de la donnée car elles permettent une meilleure gestion des ressources et un environnement parfaitement reproductible.

## Contexte

L'écosystème de la data science est en mouvement accéléré depuis 10 ans
et le rôle du data scientist dans les organisations valorisant de la donnée
a évolué. 
Les data scientists modernes sont amenés à utiliser de plus en plus
de langages ou être capable de maîtriser plusieurs
architectures informatiques. Les innovations récentes dans le monde du
développement logiciel, notamment 
L'adoption massive de l'approche DevOps dans le monde logiciel,
approche qui consiste à XXXXX , a également fait évoluer les pratiques des data scientists
[ref data scientist 10 years later]. Le besoin de ressources informatiques croissantes, 
de flexibilité dans le prototypage de solutions informatiques et les pratiques
consistant à mettre à disposition en continu des livrables a eu des implications
importantes sur les architectures informatiques dominantes dans l'écosystème de la 
donnée. Par exemple,
après avoir connu son heure de gloire au début des années 2010, l'infrastructure HDFS, 
qui reposait sur la collocalisation des traitements, a laissé place à des infrastructures
plus scalables, basées sur l'approche de la conteneurisation. Cette approche, qui repose
sur l'idée que les serveurs de stockage de la donnée peuvent être dissociés de ceux
effectuant les traitements, sert de fondement aux principales plateformes fournissant 
des services à la demande. Ce nouveau paradigme part du constat que les
échanges réseaux sont devenus peu coûteux par rapport à la maintenance d'une infrastructure

L'accès aux données se fait à travers des API qui 
permettent de traiter le système de stockage distant comme un système de fichiers
classiques. Il est 



Fort de tous ces constats, l'équipe innovation de l'Insee a eu l'idée de créer une 
plateforme mobilisant exclusivement des composants open-source. 


La 
https://www.onyxia.sh/

Onyxia is a web app that aims at being the glue between multiple open source backend technologies to provide a state of art working environnement for data scientists.
Onyxia is developed by the French National institute of statistics and economic studies (INSEE).


Onyxia propose deux composants de valeur :
    • une interface web qui agit comme la porte d’entrée du data scientist sur son datalab, lui facilitant l’accès aux technologies cloud et lui permettant de démarrer ses environnements de traitement de la donnée.
    • des catalogues de logiciels : 18 services interactifs (ex : rstudio, jupyter, vscode), 15 services de base de donnée (ex : postgres, elastic search), 5 services d’automatisation (ex : mlflow, label studio), 2 services de dataviz (redash et superset)
Ces composants sont proposés en open source par l’Insee ce qui permet de fédérer une communauté et est un bel exemple de mutualisation au sein de l’État et au delà. Cette communauté peut proposer de nouveaux services dans le catalogue.

Onyxia est une application web qui permet aux data scientists d'accéder à un environnement de travail a l'état de l'art même sans être très pointu en informatique. Essentiellement, Onyxia transforme un repo de charts Helm en un catalogue de services configurables et configurés automatiquement.
Onyxia propose également une intégration avec S3.

Onyxia génère automatiquement un formulaire qui permet aux utilisateurs d'écraser les valeurs pas défaut des values.yaml de vos charts Helm. Onyxia vous permet également de préciser des valeurs à préremplir spécifiquement pour l'utilisateur en question. Ce mécanisme permet notamment à l'utilisateur d'être déjà authentifié à S3 et d'avoir accès à son bucket personel dès l'ouverture de Jupyter ou RStudio.


https://www.insee.fr/fr/information/6035940?sommaire=6035950



Onyxia ne cherche pas à se rendre indispensable

Nous visons à rendre les utilisateurs de la plateforme suffisamment familiers avec les technologies sous-jacentes (Kubernetes, helm, S3...) pour pouvoir s'affranchir d'Onyxia. Nous affichons les commandes exécutées sur le cluster, sur S3, sur Vault par le biais d'Onyxia.

Un explorateur de fichiers S3

Onyxia permet de glisser déposer ses jeux de données pour les uploader sur S3.

Intégration avec HashiCorp Vault

Onyxia permet de stocker les informations sensibles de type clés d'API dans Vault et de les rendre accessibles dans les services sous forme de variable.

Personnalisez l'apparence d'Onyxia

Onyxia offre de nombreuses options de personalisation. Modifiez le thème, le lien et le logo de l'entête sans avoir à toucher au code source d'Onyxia. Mais uniquement en modifiant les paramètres de votre instance. Example du customization.

Un environement de formation

Onyxia permet de générer des liens de lancement de service.
Cette fonctionalité peut être utilisée pour créer des catalogues de formations comme celui-là.

Technologiquement agnostique

Avec Onyxia vous n'investissez pas sur une stack technique en particulier sauf kubernetes et S3. Onyxia permet de rendre accessible n'importe quelle technologie cloud native et ne génére donc pas de potentielle dette technique future.

## Les plateformes basées sur Onyxia

L’Insee propose le SSPCloud, une plateforme ouverte à tous les agents de l’État et de nombreuses écoles et exclusivement limitée à l’exploitation de données open data. Cette stratégie d’offreur de services de traitement sur l’open data permet de montrer l’expertise de l’Insee sur les sujets data science sans prendre de risques sur la nature des projets et la complexité organisationnelle et technique des plateformes mutualisées sur données sensibles (HDH, Escale coté Drees/Dares). Afin d’illustrer les possibilités offertes par une telle plateforme, voici quelques exemples typiques :
    • la formation
    • l’organisation de hackathons
    • la mise à disposition de services innovants aux SSM (metric-osrm)
    • le travail sur données ouvertes (conception d’indicateur ou de dataviz sur des données ouvertes)
Onyxia et ses catalogues fournissent le coeur de l’offre mais l’infrastructure SSPCloud s’appuie également sur d’autres logiciels pour fournir une offre complète et cohérente :
    • le logiciel Gitlab pour offrir des dépôts de code source aux utilisateurs
    • le logiciel Minio pour offrir les espaces de stockages de données
    • kubernetes pour offrir les espaces de travail (processus / traitement)
    • Le logiciel gravitee pour offrir la possibilité aux utilisateurs de déployer des APIs et ainsi de constituer un catalogue global de toutes les APIs offertes dans le Datalab.
    • Le logiciel Atlas pour proposer des metadonnées aux utilisateurs
    • Le logiciel Grafana pour proposer aux utilisateurs un service de supervision et leur montrer leurs consommations de ressources.
L’Insee n’est désormais plus seul et fédère autour de son projet d’autres organisations. Eurostat a été la première organisation en dehors de l’Insee à choisir Onyxia fin 2021 et a présenté sa plateforme à l’international. Expertise France pour le projet DATAFID a fait le choix d’Onyxia tout comme le CASD, le GENES, Orange et BercyHub avec le projet Nubonyxia (installation d’Onyxia dans le cloud interministériel Nubo).
D’autres organisations sont plus dans une phase de POC ou d’études : l’INS norvégien, Pole Emploi, BPCE, Data4Good, l’Ineris, le ministère de l’Intérieur, le ministère de la Justice, l’Inria, EDF…