---
title: Estimation du manque à gagner en matière fiscale à l’aide de Machine Learning

summary: |
  L’estimation du manque à gagner de l’administration fiscale dans
  son activité de recouvrement des impôts est un enjeu important.
  Cependant, cette tâche 
  est difficile à effectuer puisque les seules
  données observées qui permettraient une extrapolation
  concernent des entreprises qui ne sont, potentiellement,
  pas choisies aléatoirement. 


  Le [service statistique de la DGFiP](https://www.impots.gouv.fr/etudes-et-statistiques)
  a lancé un projet visant à estimer,
  à partir des montants de redressement observés dans les contrôles fiscaux,
  le manque à gagner agrégé pour l'administration fiscale. Un algorithme
  de _Machine Learning_ ([_Gradient Boosting_](https://en.wikipedia.org/wiki/Gradient_boosting))
  permet de modéliser la probabilité d’être contrôlé par les services fiscaux
  à partir de certaines caractéristiques de l'entreprise. L'échantillon étant
  non équilibré, un [algorithme `SMOTE`](https://kobia.fr/imbalanced-data-smote/)
  permet d'améliorer les performances du modèle. L'extrapolation à la population
  générale est effectuée par _post-stratification_. 

  Ce projet repose sur un premier travail méthodologique
  du [département des études économiques de l'Insee](https://www.insee.fr/fr/statistiques/6478533)
  dont une première version avait alimenté, en 2019, 
  un [rapport de la Cour des Comptes](https://www.ccomptes.fr/fr/publications/la-fraude-aux-prelevements-obligatoires) sur le sujet

tags:
- classification
- prediction
- machine learning

categories:
- DGFIP

date: "2021-04-27T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption: 
  focal_point: Smart

links:
#- name: Fiche descriptive
#  url: https://intranet.insee.fr/jcms/152407_DBFileDocument/fr/2021-18494-dg75-l401
#- name: Code/Git
#  url: https://gitlab.insee.fr/ssplab/codification-pcs2020
url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides: example
---

{{% callout warning %}}
L'objectif de ce projet n'est pas d'utiliser les données disponibles
pour transmettre à l'administration fiscale
le fait qu'une entreprise ait fait
une déclaration suspicieuses. Cela serait contraire
à la [loi de 1951 sur le secret statistique](https://www.insee.fr/fr/information/1300624)
{{% /callout %}}