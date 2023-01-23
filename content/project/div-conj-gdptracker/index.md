---
title: "« GDP Tracker » : un outil pour des prrévisions économiques en continu"

summary: |
  Le département de la conjoncture de l'`Insee` met
  en oeuvre des modèles de _machine learning_ pour
  effectuer des prévisions en temps réel (_nowcasting_)
  pour alimenter ses analyses conjoncturelles.

tags:
- Classification
- Prediction
- Machine Learning
- Insee
categories:
- Insee

date: "2022-04-08T00:00:00Z"

# Optional external URL for project (replaces project detail page).
# external_link: "https://intranet.insee.fr/jcms/c_2034660/experimentations"

image:
  caption: 
  focal_point: Smart

links:
- name: Note de conjoncture associée
  url: https://www.insee.fr/fr/statistiques/4268739?sommaire=4268833 
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

Le projet `GDP Tracker` consiste à 
construire un outil de prévision économique en continu, alimenté par l’ensemble des indicateurs conjoncturels récents disponibles à l’instant _t_. L'objectif de ce projet est d'exploiter,
au mieux, les sources les plus récentes pour estimer la dynamique des agrégats macroéconomiques
majeurs au cours des dernières
semaines. 
Ces sources sont de nature diverse: enquêtes de conjoncture, comptes nationaux trimestriels, remontées statistiques en dur mais aussi de données issues de sources moins traditionnelles (recherches internet, etc.)

À partir de cet ensemble hétérogènes d’informations, l’outil effectue une prévision de croissance 
des agrégats macroéconomiques les plus scrutés pour connaître la conjoncture
française (PIB, consommation des ménages, investissement…). Cette prévision est faite
pour le trimestre contemporain ou les trimestres suivants, à partir de modèles de _machine learning_ (LASSO, forêts aléatoires…). 

L’outil a été initialement développé pour une [Note de conjoncture en 2019](https://www.insee.fr/fr/statistiques/fichier/4268833/122019_ndc.pdf). Celui-ci a été repris suite à la crise sanitaire pour une utilisation plus systématique. D’abord centré sur la France et sur le seul PIB du trimestre contemporain, il a été décliné à d’autres pays (Allemagne, Italie, Espagne) et est en cours  d’élargissement à des agrégats autres que le PIB et à des horizons de prévision plus lointains. 