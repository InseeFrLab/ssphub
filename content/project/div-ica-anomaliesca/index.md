---
title: Détection d'anomalies dans les données TVA 
summary: |
  Les remontées de TVA sont un indicateur central pour
  connaître la conjoncture économique récente. Il s'agit
  de la source primaire
  des [indices de chiffre d'affaires (`ICA`)](https://www.insee.fr/fr/metadonnees/definition/c2043)
  qui servent à mesurer mensuellement l'évolution de l'activité des entreprises dans
  plusieurs secteurs économiques. 
  
  L'objectif de ce projet est de mieux repérer les points atypiques dans les déclarations individuelles de TVA.
date: "2021-09-01T00:00:00Z"

tags:
- Anomalies
- Machine Learning
- Insee

categories:
- Insee

draft: true

# Optional external URL for project (replaces project detail page).
# external_link: "https://intranet.insee.fr/jcms/c_2034660/experimentations"

image:
  caption: 
  focal_point: Smart

links:
#- name: Séminaire DSDS (Vidéo)
#  url: https://video.agora.insee.fr/videos/DSDS/S%C3%A9minaire du 07-10-21.mp4
#- name: Slides associées au séminaire
#  url: https://intranet.insee.fr/jcms/328043_DBFileDocument/seminaire-dsds-20211006-diaporama-intervenants
#- name: Code/Git
#  url: https://git.lab.sspcloud.fr/methodo-ipc/webscraping-hotel
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

L’expérimentation vise à tester différentes méthodes pour améliorer la détection des points atypiques dans les déclarations individuelles de TVA. 
Ces dernières sont utilisées notamment pour la production d’indices d’activité.

Ces travaux porteront notamment sur une spécificité de cette source, avec une possibilité offerte aux entreprises de décaler, sous conditions, la déclaration d'une partie de leur chiffre d’affaires.

Les méthodes envisagées peuvent reposer sur de l'apprentissage supervisé (en utilisant notamment un historique de détections et corrections effectuées manuellement) ou non supervisées.