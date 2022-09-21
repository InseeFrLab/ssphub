---
title: "Evolution de l'enquête \"Réseaux d'enseignes\": webscraping et codification automatique"  
date: "2022-02-01T00:00:00Z"

summary: |

  A l'Insee, l'enquête [Réseaux d'enseignes](https://www.insee.fr/fr/metadonnees/source/serie/s1216)
  a pour objectif d'identifier, pour chaque tête de réseau, la liste des établissements adhérents selon la forme d'organisation (franchise, groupement, concession, ...), afin d'alimenter un répertoire de réseaux. Par exemple, l'objectif
  est de connaître l'ensemble du réseau d'enseignes du groupe Casino, Auchan, etc.
  Après appariement avec d'autres sources, l'enquête permet de produire des études ou des
  statistiques. Par exemple, cette enquête a permis de mieux connaître
  les [caractéristiques des magasins bio](https://www.insee.fr/fr/statistiques/4240612).

  Des techniques de _webscraping_ ont d'abord été mises en oeuvre pour lister les enseignes susceptibles
  d'appartenir à un réseau de distribution. Cette approche a permis de mieux saisir 
  certains manques dans la liste des commerces susceptibles d'être sondés.

  Certaines réponses à des
  questionnaires ne présentant pas le [SIRET](https://entreprendre.service-public.fr/vosdroits/F32135) (identifiant légal de l'établissement),
  indispensable pour pouvoir relier une entreprise entre les différentes sources,
  il est nécessaire d'utiliser certaines informations fournies (raison sociale, adresse, etc.)
  pour essayer de le déterminer. Une investigation méthodologique pour
  améliorer l'algorithme de recodage automatique a donc été initiée. 

tags:
- Webscraping
- NLP
- Insee
categories:
- Insee

draft: false

# Optional external URL for project (replaces project detail page).
# external_link: "https://intranet.insee.fr/jcms/c_2034660/experimentations"

image:
  caption: 
  focal_point: Smart

links:
#- name: Code/Git
#  url: https://gitlab.insee.fr/xei9el/constitution-base-de-sondage-reseaux-d-enseigne
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

La division Commerce, au sein de l'`Insee`, pilote une [enquête sur les Réseaux d’enseigne](https://www.insee.fr/fr/metadonnees/source/serie/s1216) dans le Commerce. 
Cette enquête a pour objectif d'identifier, pour chaque tête de réseau, la liste des établissements adhérents selon la forme d'organisation (franchise, groupement, concession, ...), afin d'alimenter un répertoire de réseaux. Par exemple, l'objectif
est de connaître l'ensemble du réseau d'enseignes du groupe Casino, Auchan, etc.
Après appariement avec d'autres sources, l'enquête permet de produire des études ou des
statistiques. Par exemple, cette enquête a permis de mieux connaître
les [caractéristiques des magasins bio](https://www.insee.fr/fr/statistiques/4240612).

La base de sondage, c'est-à-dire la liste des entités susceptibles d'être
interrogés, est constituée en combinant à la fois des données administratives
(la source [Sirene](https://fr.wikipedia.org/wiki/Syst%C3%A8me_d%27identification_du_r%C3%A9pertoire_des_entreprises)) et des données
récupérées par _webscraping_ à  
partir des informations disponibles sur internet.
Les retours des premières collectes ont montré que la base de sondage n’est pas assez précise et des améliorations, reposants
en partie sur de l'analyse textuelle et de la recherche approximative, sont envisagées. 

Un autre enjeu de l’enquête _"Réseaux d’enseignes"_ est de pouvoir compléter les réponses à l’enquête
à partir de sources administratives. Un défi consiste à déterminer, ou corriger lorsqu'il est
erroné, l'identifiant entreprise ([`SIRET`](https://fr.wikipedia.org/wiki/Syst%C3%A8me_d%27identification_du_r%C3%A9pertoire_des_%C3%A9tablissements)) du commerce répondant. Des méthodes de codification
automatique, exploitant les autres informations fournies par une entreprise répondant
et également présentes dans le répertoire légal (raison sociale, adresse), sont en
cours d'investigation.