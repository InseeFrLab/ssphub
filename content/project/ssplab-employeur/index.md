---
title: Amélioration de l’identification de l'employeur dans les données du recensement
summary: |
  Avec l’ambition à terme de réduire la charge de recodage manuel.
tags:
- classification
- prediction
- Insee
categories:
- Insee
date: "2016-04-27T00:00:00Z"

# Optional external URL for project (replaces project detail page).
#external_link: "https://intranet.insee.fr/jcms/c_2034660/experimentations"

image:
  caption: 
  focal_point: Smart

links:
#- name: Fiche descriptive
#  url: https://intranet.insee.fr/jcms/2626207_DBFileDocument/2018-10227-dg75-l401-fiche-lancement-id-emp-census?details=true
#- name: Code/Git
#  url: https://gitlab.insee.fr/ssplab/aiee2
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

Le recensement de la population est l'une des grandes enquêtes
de l'Insee. Elle permet de collecter des données sociodémographique
très utile au débat public. Cette enquête mobilise
d'importants moyens humains pour la collecte. Une partie des
efforts humains est consacrée à la reprise manuelle
d'informations qui sont souvent mal-renseignées.
L'une des sources les plus fréquentes de reprise manuelle
est la correction de l'identifiant de
l'employeur (le [SIRET](https://fr.wikipedia.org/wiki/Syst%C3%A8me_d%27identification_du_r%C3%A9pertoire_des_%C3%A9tablissements))
que les enquêtés remplissent. Les sources d'erreur peuvent être de
plusieurs natures: SIRET inconnu de l'enquêté, erreur sur
l'identifiant utilisé (par exemple, l'enquêté renseigne l'identifiant
du groupe, par exemple Casino, au lieu de celui de son établissement, le Géant
Casino dans lequel il vit), erreur dans
le numéro renseigné...

Cependant, il est possible de corriger automatiquement, 
ou en guidant la personne en charge de la correction avec plusieurs choix
plausibles, en utilisant d'autres informations renseignées
par l'enquêté sur son entreprise. Par exemple, en recherchant
dans une autre source, le nom
de l'employeur ou son adresse, on peut retrouver le bon identifiant
de l'entreprise. Ce projet vise à explorer l'approche de méthodes
de correction automatique et d'appariements flous
pour déterminer le bon identifiant employeur. 
