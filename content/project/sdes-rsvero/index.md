---
title: "RSVERO: quel est le parc des véhicules roulants ?"
date: "2016-04-27T00:00:00Z"
summary: |
  Le [service statistique du Ministère de l'Ecologie](https://www.statistiques.developpement-durable.gouv.fr/qui-sommes-nous) (`SDES`) dispose 
  de longue date de données administratives d'immatriculation des véhicules
  (répertoire `RSVERO`). Il
  s'agit d'ailleurs de l'un des principaux signaux de la dynamique conjoncturelle
  récente de l'économie française. 

  L'objectif de ce projet est d'apparier ces __données d'immatriculation__
  à celles des __contrôles techniques__.
  L'enjeu est de distinguer plus précisément les véhicules roulants
  de ceux retirés de la circulation et de connaître les distances
  parcourues entre deux contrôles techniques.
  
  Ce répertoire enrichi pourrait permettre une meilleure compréhension
  du parc routier en circulation, ce qui peut être utile pour connaître l'impact
  de régulations environnementales.
tags:
- Appariement
categories:
- SDES

# Optional external URL for project (replaces project detail page).
# external_link: "https://intranet.insee.fr/jcms/c_2034660/experimentations"

image:
  caption: 
  focal_point: Smart

links:
#- name: Code/Git
#  url: https://git.lab.sspcloud.fr/ssplab/rsvero2/rsvero2
url_code: ""
url_pdf: "http://www.jms-insee.fr/2022/S28_1_ACTE_LHOUR-TREVIEN_JMS2022.pdf"
url_slides: "http://www.jms-insee.fr/2022/S28_1_PPT_LHOUR-TREVIEN_JMS2022.pdf"
url_video: "https://www.youtube.com/watch?v=VZKjzAm0PGc&list=PLLfRO44HULrmKfqW5leuf9a2y-8WDATnx&index=29"

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides: example
---

Le [service statistique du Ministère de l'Ecologie (`SDES`)](https://www.statistiques.developpement-durable.gouv.fr/qui-sommes-nous) a entrepris la refonte du répertoire des véhicules routiers (`RSVERO`).
Ce projet consiste à apparier les données administratives d'immatriculation des véhicules,
utilisées de longue date, à celles des contrôles techniques.

L'enjeu est de  distinguer plus précisément les véhicules roulants de ceux retirés de la circulation et de connaître les distances parcourues entre deux contrôles techniques. _Mais que ce se passe-t'il avant ou entre deux contrôles techniques ?_

L'objectif de l'expérimentation est d'essayer d’estimer au 31 décembre de chaque année, pour chaque véhicule routier, une probabilité d’existence et un nombre de kilomètres parcourus au cours des 12 mois précédents, indépendemment de la date effective du contrôle technique.
