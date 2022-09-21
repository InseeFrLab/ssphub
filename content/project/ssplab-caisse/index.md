---
title: Classification automatique des produits de supermarchés 
summary: |
  L'`Insee` a accès, depuis quelques années, à
  des [données de caisse](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjUic7bs5H6AhUnhf0HHZ0RA3IQFnoECBQQAQ&url=https%3A%2F%2Fwww.insee.fr%2Ffr%2Fmetadonnees%2Fdefinition%2Fc2159&usg=AOvVaw30VSNMXRVBUbH2EBU39aoN) qui sont
  issues de collectes automatisées des produits vendus
  dans les supermarchés. Ces données ont été intégrées
  au calcul de l'indice des prix à la consommation qui 
  sert à mesurer l'inflation. 

  Ce projet, mené par l'`Insee`,
  vise à proposer des méthodes automatisées
  pour déterminer, à partir d'un nom de produit,
  le type de produit concerné ou le secteur
  économique impliqué. Cette expérimentation
  pourrait aboutir à améliorer les décompositions
  des statistiques d'inflation par type de produit. 

  Après un nettoyage du corpus de produits pour
  réduire le bruit, un algorithme de _machine learning_
  est entraîné à classifier les produits dans plusieurs
  nomenclatures ([COICOP](https://www.insee.fr/fr/information/2408172)
  ou [NAF](https://www.insee.fr/fr/information/2406147)) pour
  ensuite classifier automatiquement les produits, sans passer
  par une nomenclature _ex ante_.
tags:
- classification
- prediction
- Insee
- Machine Learning
- Fasttext
categories:
- Insee
date: "2021-04-27T00:00:00Z"

# Optional external URL for project (replaces project detail page).
#external_link: "https://intranet.insee.fr/jcms/c_2034660/experimentations"

image:
  caption: Photo by rawpixel on Unsplash
  focal_point: Smart

draft: true

links:
#- name: Fiche descriptive
#  url: https://intranet.insee.fr/jcms/135247_DBFileDocument/2019-0809-dg75-f610-fiche-descriptif-machine-learning-ddc-vu-pl-as2
#- name: Code/Git
#  url: https://gitlab.insee.fr/ssplab/paul-ean
- name: API dévelopée
  url: https://github.com/InseeFrLab/predicat
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

Les [données de caisse](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjkvsbRt5H6AhVmhf0HHdgDCEIQFnoECBkQAQ&url=https%3A%2F%2Fwww.insee.fr%2Ffr%2Fmetadonnees%2Fdefinition%2Fc2159&usg=AOvVaw30VSNMXRVBUbH2EBU39aoN)
donnent pour chaque code-barres (ou GTIN),
chaque jour et chaque point de ventes les quantités vendues ainsi que le chiffre d’affaires et/ou le prix auquel le produit est vendu.

Pour exploiter ces données, il est toutefois nécessaire de savoir quel produit se trouve derrière un code-barres. Actuellement, l’Indice des Prix à la Consommation (IPC)
se fonde sur un référentiel de codes-barres,
acheté à un prestataire et qui donne une information très détaillée et structurée des caractéristiques de ces produits.
Cette information est payante et ne couvre pas l’ensemble des produits.

L’expérimentation vise à identifier les étapes de traitement textuel des noms
de produits ainsi que les méthodes de classification permettant de classifier automatiquement les produits dans des groupes, sans passer par un référentiel _a priori_.
Les classifications utilisées sont la [COICOP](https://www.insee.fr/fr/information/2493507) (classification en fonction du type
de produit) et la [NAF](https://www.insee.fr/fr/information/2406147) (
classification en fonction du secteur d'activité
). 

Ce projet est associé à un autre projet mené à l'Insee, le
[projet Nosica](https://www.insee.fr/fr/information/4254225?sommaire=4254170)
qui vise à intégrer notamment les données de caisse dans la production des indicateurs d'activité de court-terme.
