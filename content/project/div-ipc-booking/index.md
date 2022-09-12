---
title: Webscraping du prix des chambres d'hôtel pour l'indice des prix à la consommation
date: "2021-09-01T00:00:00Z"
summary: |
  Aujourd'hui, l'__indice des prix à la consommation__ (IPC) pour les nuitées hôtelières est constitué à partir de relevés effectués sur le terrain. 
  Afin d’améliorer l’indice, la 
  piste de constituer une autre source de données à
  partir des prix disponibles en ligne a été explorée.

  Ce projet repose sur le _scraping_ du site `booking`. Un robot 
  automatisé a été mis en oeuvre pour récupérer de manière
  automatisée le prix des chambres et les caractéristiques
  de celles-ci.

  Un autre projet d'intégration de données _scrappées_
  au calcul de l'indice des prix à la consommation a
  été mis en oeuvre à l'Insee. Il s'agissait de
  _scraper_ automatiquement le prix d'équipements
  électroniques dont les prix peuvent, au cours
  d'une année, connaître des variations significatives
  (tablettes, smartphones...).
 
tags:
- Webscraping
- Insee
categories:
- Insee

# Optional external URL for project (replaces project detail page).
# external_link: "https://intranet.insee.fr/jcms/c_2034660/experimentations"

image:
  caption: 
  focal_point: Smart

links:
#- name: Code/Git
#  url: https://git.lab.sspcloud.fr/methodo-ipc/webscraping-hotel
url_code: ""
url_pdf: "http://www.jms-insee.fr/2022/S14_1_ACTE_MONTBROUSSOUS_JMS2022.pdf"
url_slides: "http://www.jms-insee.fr/2022/S14_1_PPT_MONTBROUSSOUS_JMS2022.pdf"
url_video: "https://www.youtube.com/watch?v=XTlp5kZKnkE&list=PLLfRO44HULrmKfqW5leuf9a2y-8WDATnx&index=15"

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
# slides: example
---

L’indice des prix des services de l’hôtellerie est actuellement calculé mensuellement à partir de relevés terrain réalisés dans le courant de la semaine et pour la nuitée du jour de passage de l’enquêteur dans un échantillon d’agglomérations défini dans le cadre de l’indice des prix à la consommation. Afin de tenir compte d’une part du développement d’Internet et des plateformes de réservation et d’autre part du recours courant à des tarifications dynamiques permettant d’optimiser en temps réel le prix d’un service en fonction de la demande (yield management), cette expérimentation propose de challenger l’indice actuel en explorant une méthode de collecte innovante, le webscraping.
