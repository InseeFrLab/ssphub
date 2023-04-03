---
title: Infolettre Avril 2023, première quinzaine (#13)
#subtitle: 
toc: true
summary: |
  Infolettre du mois d'avril, première quinzaine
# Link this post with a project
#projects: [dataviz, recap2022]

# Date published
date: '2023-03-20T00:00:00Z'

# Date updated
lastmod: '2023-03-20T00:00:00Z'

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
#  - retrospective
#  - observable
#  - quarto
#  - deep learning
  - infolettre
  - chatGPT

categories:
#  - Insee
#  - Retrospective
  - Infolettre
---

{{% callout %}}

__*Vous désirez intégrer la liste de diffusion ? L'inscription se fait [ici](https://framaforms.org/integration-reseau-des-data-scientists-1676407156).*__

{{% /callout %}}

<br>

# Actualités de la data science

## Débats autour de la place de l'IA dans la société 

L'actualité des modèles de langage et des _chatbots_ est très chargée ([résumé annonces du mois de mars](https://twitter.com/dustinvtran/status/1639159641635717120?t=tUqtzOHFvolL7MJef-M2Cw&s=19)) et il est difficile de ne rien rater. 
La publication de modèles de langage continue à suivre un rythme presque quotidien. 

Dans la dernière quinzaine, l'une des principales annonces est la publication par [`LAION`](https://laion.ai/blog/)
d'[`OpenFlamingo`](https://laion.ai/blog/open-flamingo/) une version _open source_
de [Flamingo](https://www.deepmind.com/blog/tackling-multiple-tasks-with-a-single-visual-language-model),
le modèle de Google DeepMind.
Afin de pouvoir intégrer à la fois des fonctionnalités de reconnaissance d'image et textuelle, 
celui-ci s'appuie sur des composantes _open source_ pour les modèles de langage et 
de reconnaissance d'image et un jeu de données ouvert. Des exemples de réutilisation
en `Python` sont disponibles sur le [dépôt `Github`](https://github.com/mlfoundations/open_flamingo).
Dans le registre IA ouverte, une équipe de chercheurs de plusieurs universités américaines a
mis en oeuvre un `chatbot` ouvert, à partir des modèles `LLaMA` (Meta, voir [Newsletter #11](https://ssphub.netlify.app/infolettre/infolettre_11/))
ou `Alpaca` (Stanford) : [`Vicuna`](https://vicuna.lmsys.org/). 
`Databricks` s'appuie également sur `LLaMA` et `Alpaca` pour proposer 
son modèle de langage ouvert: [`Dolly`](https://www.databricks.com/blog/2023/03/24/hello-dolly-democratizing-magic-chatgpt-open-models.html). Mozilla rejoint également le bal en investissant 30 millions de dollars pour lancer la _startup_ [Mozilla.ai](https://blog.mozilla.org/en/mozilla/introducing-mozilla-ai-investing-in-trustworthy-ai/). 


La question de la sécurité et de la confidentialité des informations
fournies à `OpenAI` a également été au centre de l'attention au cours
de la dernière quinzaine. `OpenAI` a
révélé une faille de sécurité à l'origine d'une [fuite de données](https://twitter.com/OpenAI/status/1639297361729191936?t=j1gdTehqAT8OraZRC34iqg&s=19). 
Cette question de la confidentialité des informations fournies à `ChatGPT` 
a d'ailleurs amené la CNIL italienne a demander le blocage
temporaire de l'outil d'OpenAI ([voir ici](https://www.lefigaro.fr/secteur/high-tech/rgpd-la-cnil-italienne-bloque-temporairement-l-acces-au-robot-conversationnel-chatgpt-20230331)).

Cette interdiction prend place dans un contexte de discussions intenses autour de la place
à venir dans nos sociétés de ces robots conversationnels.
Une [lettre ouverte](https://futureoflife.org/open-letter/pause-giant-ai-experiments/) au [fort écho médiatique](https://www.lemonde.fr/economie/article/2023/03/29/elon-musk-et-des-centaines-d-experts-reclament-une-pause-dans-le-developpement-de-l-ia_6167461_3234.html#xtor=AL-32280270-%5Bdefault%5D-%5Bios%5D) publiée par 
des figures de la _tech_ (dont Elon Musk) et des universitaires réclame 
un moratoire dans le développement de nouveaux modèles d'intelligence
artficielle. Cette lettre a été rapidement critiquée que ce soit par
[Andrew Ng](https://twitter.com/AndrewYNg/status/1641121451611947009?t=VyRYGWCjBeOxFOr0-bIJcQ&s=19)
ou par les
auteurs de l'article développant le concept de _"Stochastic Parrots"_ qui est cité dans la lettre 
([voir la réponse des auteurs](https://www.dair-institute.org/blog/letter-statement-March2023))


# Actualités du réseau: événements à venir

Place aux actualités de notre réseau avec les prochains événements
que nous organisons. 

## Première journée du réseau en avril (17 avril)

<img src="treso.webp" alt="La Tréso" width="500"> 

Déjà annoncée dans la [_Newsletter #11_](https://ssphub.netlify.app/infolettre/infolettre_11/),
nous rappelons la __journée du réseau le 17 avril, en présentiel__ 📅.

Le nombre de places dans l'espace à disposition étant limité,
une invitation par mail et un lien d'inscription seront communiqués dans la semaine pour
pouvoir participer à cet événement en présentiel dans le
tiers-lieu [la Tréso](https://www.latreso.fr/) à Malakoff. 

## Bonnes pratiques en `Python` : présentation lors des ateliers du programme 10% (30 mars)

Dans le cadre du programme 10%, des présentations ont lieu
avant certains
ateliers de travail sur les projets communautaires.

La prochaine présentation, qui aura lieu le __jeudi 30 mars de 14h à 15h 📅__,
sera donnée par des membres du réseau. Elle portera sur une présentation
des outils favorisant les bonnes pratiques de développement en `Python`
et de l'intérêt de ces bonnes pratiques pour faciliter la mise en production
de projets de _data science_. Il s'agira d'une présentation succincte 
du contenu du cours de l'ENSAE ["Bonnes pratiques et mise en production de projets data science"](https://ensae-reproductibilite.netlify.app/).

Plus d'infos à venir par le biais du canal `Tchap` de notre réseau. 


## Un événement autour de l'OCRisation avec Christopher Kermorvant (29 mars)

Le __mercredi 29 mars de 15h à 16h 📅__ nous recevons [Christopher Kermorvant](https://www.linkedin.com/in/christopher-kermorvant-87158b2/?originalSubdomain=fr),
chercheur spécialisé en OCRisation et fondateur de [Teklia](https://teklia.com/).
Christopher mène actuellement plusieurs projets de numérisation de textes anciens, notamment 
d'OCRisation de vieux recensements avec l'INED. 

Pendant cet événement, Christopher
nous fera un état de l'art de l'OCRisation puis nous présentera des projets qu'il a pu mener récemment
avec Teklia.

Il est possible de suivre la présentation via [__Zoom__](https://insee-fr.zoom.us/j/99414476694?pwd=NTg2UTl4TUdzMi9TOGk5QzdKOUZjdz09) ou, pour les personnes présentes à l’Insee, en  __2-C-496__.

[__Invitation outlook ici__](https://minio.lab.sspcloud.fr/lgaliana/ssphub/files/event_carpentries_2023/ocrisation.ics)

## Présentation de la documentation collaborative _Carpentries_ (28 mars)

Pour rappel, Kate Burnett-Isaacs, de Statistics Canada, nous présentera 
l'initiative Meta Academy / Carpentries le __mardi 28 mars à 15h__ 📅.
Plus de détails dans la [_Newsletter #11_](https://ssphub.netlify.app/infolettre/infolettre_11/).

__[Invitation `Outlook` ici](https://minio.lab.sspcloud.fr/lgaliana/ssphub/files/newsletter_11/carpentries.ics)__.

# Actualités du réseau: dernières nouveautés

## Post de blog sur `Polars`

<img src="polar.png" alt="Infographie des faillites bancaires" width="300"> 


Pour faire suite à la [_Newsletter #11_](https://ssphub.netlify.app/infolettre/infolettre_11/)
qui présentait l'écosystème autour du package [`Python` `Polars`](https://www.pola.rs/), 
Romain Tailhurat (Insee) nous propose un [post de blog](https://ssphub.netlify.app/post/polars/) pour découvrir ce _package_. 

Celui-ci est accompagné par un tutoriel pas-à-pas pour découvrir les principales
fonctionnalités de la librairie. Il est possible de tester 
le _notebook_ en un seul clic sur le `SSP Cloud` ou sur `Google Colab`. 

Vous pouvez également retrouver ce tutoriel depuis
l'[espace formation](https://www.sspcloud.fr/formation) du SSP Cloud. 
