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
plus scalables, basées sur l'approche de la conteneurisation. 


La 
https://www.onyxia.sh/

Onyxia is a web app that aims at being the glue between multiple open source backend technologies to provide a state of art working environnement for data scientists.
Onyxia is developed by the French National institute of statistics and economic studies (INSEE).

Fournissez un environnement de travail à l'état de l'art à vos data scientists sans dépendre de logiciels propriétaires.

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

