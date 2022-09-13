---
title: "Association de données de caisse et de données nutritionnelles grâce aux méthodes d'analyse textuelle"
summary: |
  Depuis quelques années, l'Insee exploite les données de caisse des enseignes de la grande distribution pour le calcul des indices de prix à la consommation. Ces données de caisse offrent
  également une information très riche sur la composition de la consommation alimentaire
  sur le territoire français et peuvent ainsi permettre d’évaluer l’hétérogénéité spatiale des
  paniers de consommation. A la suite d’un enrichissement des produits de caractéristiques
  nutritionnelles (poids, unités, calories...), présente dans des bases contributives
  comme [`Open Food Facts`](https://fr.openfoodfacts.org/) ou [la base CIQUAL de l'ANSES](https://ciqual.anses.fr/), 
  il devient possible de produire une cartographie
  de la qualité nutritionnelle de la consommation alimentaire dans les grandes enseignes
  afin d’étudier les inégalités dans la qualité nutritionnelle des produits consommés.

  Cette feuille de route implique néanmoins un appariement entre des sources
  non structurées qui n'ont pas été produites pour être nécessairement
  combinées. Les méthodes d'analyse textuelle permettent d'harmoniser
  les noms de produits
  entre les bases pour faciliter le rapporchement de celles-ci. En combinant
  des méthodes de recherche textuelle (grâce au moteur de recherche `ElasticSearch`)
  et des réseaux de neurone (technique des _embeddings_) ayant appris à reconnaître la proximité sémantique
  entre certains termes (par exemple _"Ricard"_ et _"Pastis"_), il est possible d'apparier
  les sources de manière automatique. 
tags:
- Appariement
- NLP
- Deep Learning
- Big Data
date: "2022-07-01T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: "https://linogaliana.github.io/relevanc-goodIT22/"

image:
  caption: 
  focal_point: Smart

links:
- name: Publication (version courte)
  url: https://dl.acm.org/doi/10.1145/3524458.3547244
- name: Publication (version longue)
  url: http://www.jms-insee.fr/2022/S28_2_ACTE_GALIANA_JMS2022.pdf
url_code: ""
url_pdf: "https://dl.acm.org/doi/pdf/10.1145/3524458.3547244"
url_slides: "https://linogaliana.github.io/relevanc-goodIT22/"
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides: example
---

