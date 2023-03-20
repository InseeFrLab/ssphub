---
title: Infolettre Mars 2023, deuxième quinzaine (#12)
#subtitle: 
toc: true
summary: |
  Infolettre du mois de mars, deuxième quinzaine
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

Du fait de la densité des actualités dans le monde de la _data science_
et des multiples événements à venir dans le cadre de ce réseau, 
nous proposons d'accélérer le rythme de publication des _newsletters_.

# Actualités de la data science

## ChatGPT encore et toujours

<img src="https://ssphub.netlify.app/post/retrospective2022/featured.png" alt="Un enfant parlant à un robot" width="300"> 


`ChatGPT` continue de centraliser l'attention.
Dans la veine de l'article désignant les modèles de langages
sous le terme de [_"stochastic parrot"_](https://dl.acm.org/doi/10.1145/3442188.3445922) ("perroquets stochastiques"),
Arthur Charpentier
parle lui de ["société du bullshit"](https://freakonometrics.hypotheses.org/66144) pour désigner
la manière dont `ChatGPT` offre, sous un raisonnement en apparence logique, de manière
indifférenciée des absurdités et des vérités. 
Espérons que lorsque `ChatGPT`
sera [embarqué dans les voitures _General Motors_](https://arstechnica.com/cars/2023/03/gm-plans-to-let-you-talk-to-your-car-with-chatgpt-knight-rider-style/), 
il ne nous donnera pas de fausse indication pour changer un pneu ou ne se retournera pas contre
le conducteur comme le ferait HAL 9000.  

Un article intéressant de [Wired](https://www.wired.com/story/the-generative-ai-search-race-has-a-dirty-secret/)
questionne d'ailleurs l'empreinte carbone que pourrait impliquer la généralisation
des modèles de langage dans les moteurs de recherche, qui font face à des milliards de 
requêtes quotidiennes. 

Au moment où `OpenAI` rend public [GPT-4](https://openai.com/product/gpt-4), une version plus riche
de son modèle `GPT-3` qui servait de base à `ChatGPT`, l'un des cofondateurs d'`OpenAI` revient sur
la stratégie d'ouverture (ou plutôt
l'absence d'ouverture) d'`OpenAI` : _"Nous avions tord"_ ([voir _The Verge_](https://www.theverge.com/2023/3/15/23640180/openai-gpt-4-launch-closed-research-ilya-sutskever-interview)). 
Hasard du calendrier, cette déclaration a eu lieu presque au même moment que la publication d'un robot
conversationnel ouvert [`OpenChatKit`](https://www.together.xyz/blog/openchatkit). La concurrence est néanmoins
apre puisque une équipe de Microsoft a déjà proposé l'intégration à `ChatGPT` d'un module permettant
d'interagir avec `ChatGPT` également par le biais d'images (https://www.linkedin.com/posts/thomas-wolf-a056857_ai-opensource-chatgpt-activity-7040347000814383104-eCXz/?utm_source=share&utm_medium=member_android).


## Des turbulences dans la Silicon Valley

<img src="bank_failures.png" alt="Infographie des faillites bancaires" width="300"> 

Une infographie des faillites bancaires par Mike Bostock. Source: [Notebook Observable](https://observablehq.com/@mbostock/bank-failures)

L'autre actualité phare des quinze derniers jours est la faillite 
de la _Silicon Valley Bank_. Aux Etats-Unis, il s'agit de la plus 
principale faillite bancaire depuis 2008 aux Etats-Unis. La
Fed est rapidement intervenue pour éviter
une panique bancaire, même si
la banque était en fait déjà dans les radars de la Fed depuis quelques temps ([NYT](https://www.nytimes.com/2023/03/19/business/economy/fed-silicon-valley-bank.html)). 




## Traitement de données tabulaires: `Arrow` et `Polars` au centre du jeu

<img src="polars-arrow.png" alt="Un ours tirant une flèche avec un arc elfique" width="400"> 

Du côté des données tabulaires plus traditionnelles, 
Apache `Arrow` continue de s'affirmer comme un incontournable. 

La version 2.0 de `Pandas` qui vient de sortir permet de plus facilement
s'appuyer, en arrière-plan, sur `Arrow` plutôt que `Numpy`
qui offre des performances et des fonctionnalités
limitées sur données non numériques (cf. [https://datapythonista.me](https://datapythonista.me/blog/pandas-20-and-the-arrow-revolution-part-i)). 
Il s'agissait d'une des limites majeures de `Pandas`, identifiées dès 2017 par son
créateur Wes McKinney ([voir ici](https://wesmckinney.com/blog/apache-arrow-pandas-internals/))
qui est également très impliqué dans le développement d'Apache `Arrow`.

La librairie [`Polars`](https://www.pola.rs/) connait
une certaine [_hype_](https://airbyte.com/blog/pandas-2-0-ecosystem-arrow-polars-duckdb#the-alternatives) et va sans doute
devenir dans les mois à venir une librairie incontournable, en alternative à `Pandas`.
La [dernière version de `DuckDB`](https://duckdb.org/2023/02/13/announcing-duckdb-070.html) (sortie mi-février)
renforce l'interconnexion entre ces deux écosystèmes ([exemples](https://duckdb.org/docs/guides/python/polars.html)). 
Si vous voulez en savoir plus sur `Polars`, il est recommandé de suivre l'évolution de 
la liste _["Awesome Polars"](https://github.com/ddotta/awesome-polars)_ faite par Damien Dotta
(relayée par la très bonne _newsletter_ du site [Data Elixir](https://dataelixir.com/)) et 
de lire le _post_ à venir prochainement sur le blog de notre réseau.

Par ailleurs, l'article de Jordan Tigani ["Big data is dead"](https://motherduck.com/blog/big-data-is-dead/?utm_campaign=Data_Elixir&utm_source=Data_Elixir_424) vaut le détour. 

## `Huggingface.js`: l'API d'`HuggingFace` directement accessible depuis un navigateur web

<img src="hf-js.png" alt="Exemple d'utilisation de l'API via le navigateur" width="400"> 

`Huggingface` et `Observable` sont chacun devenus des incontournables dans leur domaine
(voir notre [_newsletter_ de décembre](https://ssphub.netlify.app/post/retrospective2022/)).
Alors un rapprochement entre ces deux univers, permettant d'utiliser
de nombreux modèles d'apprentissage via l'API d'`HuggingFace` directement dans le navigateur,
ça donne envie de s'amuser.

Le _notebook_, disponible
sur [`Observable`](https://observablehq.com/@huggingface/hello-huggingface-js-inference),
illustre la richesse des fonctionnalités disponibles. 


# Actualités du réseau: événements à venir

Place aux actualités de notre réseau avec les prochains événements
que nous organisons. 

## Première journée du réseau en avril

<img src="treso.webp" alt="La Tréso" width="500"> 


Notre réseau organise des événements
virtuels depuis un an.
Pour renforcer l'esprit communautaire, nous proposons
une __journée du réseau le 17 avril, en présentiel__ 📅. 

Cet événement aura lieu dans le
tiers-lieu [la Tréso](https://www.latreso.fr/) à Malakoff. 
Pendant la journée se succèderont
plusieurs séquences pour
construire ensemble le réseau, partager autour du sujet
de la _data science_ et échanger ensemble.

Le programme et les
modalités pratiques d'inscription seront communiqués prochainement ! 
Vous pouvez néanmoins déjà marquer la date dans votre calendrier. 

## Présentation de la documentation collaborative _Carpentries_

Pour favoriser l'adoption des langages `R`, `Python` et `Git`
dans les administrations, le
programme `ModernStat` piloté par l'OCDE et Statistics Canada,
a lancé un projet nommé `Meta Academy` et
s'est rapproché de l'organisation américaine `Carpentries`
dont l'objectif est de proposer
des parcours progressifs de formation
dans les langages _open source_, associés à des documentations
disponibles de manière ouverte. 

L'absence de contenu en Français et l'orientation principalement
académique des [contenus](https://datacarpentry.org/lessons/)
a amené le programme `ModernStat` 
à proposer aux _Carpentries_ de créer de nouveaux parcours
de formations en Français. Ces programmes seraient créés
par des membres de la communauté francophone des utilisateurs
des langages `R`, `Python` et `Git`.

Kate Burnett-Isaacs, de Statistics Canada, nous présentera 
l'initiative le __mardi 28 mars à 15h__ 📅
([invitation `Outlook` ](https://minio.lab.sspcloud.fr/lgaliana/ssphub/files/newsletter_11/carpentries.ics)).
La présentation aura lieu
en Anglais et sera suivie d'un
échange (Français et Anglais possibles).
Si vous êtes intéressés
par la manière dont les nombreux contenus créés par
les membres du réseau pourraient prendre place
dans ce cadre, n'hésitez pas à venir pour en savoir plus !
Informations pratiques [ici](https://ssphub.netlify.app/talk/presentation-du-projet-meta-academy-carpentries/) !


## Masterclass datascientest

<img src="datascientest.png" alt="Datascientest" width="200"> 

Les inscriptions à nos cycles de _masterclass_ `datascientest` sont toujours
ouvertes ! Pendant le mois de mars, nous continuerons d'avancer dans
les __deux cursus parallèles__.

En premier lieu, 
la masterclass d'introduction au deep learning (__10 mars de 10h à 12h__ 📅)
permettra d'initier notre
parcours de _computer vision_ avec la présentation de 
certains concepts 
centraux du _deep learning_ (perceptron, convolution, _transfer learning_...).

La deuxième session mensuelle, ayant lieu le __24 mars de 10h à 12h__ 📅
sera elle l'occasion
d'avancer dans notre parcours NLP 
grâce au sujet de la similarité textuelle et de la classification de textes avec
des méthodes d'_embeddings_.

{{% callout %}}

__Pour vous inscrire, il suffit de remplir [ce formulaire](https://framaforms.org/participation-aux-masterclass-datascientest-1675096179) !__

{{% /callout %}}



# Actualités du réseau: dernières nouveautés

## Onyxia

<img src="https://ssphub.netlify.app/post/onyxia/featured.png" alt="Datascientest" width="450"> 

Le [dernier post](https://ssphub.netlify.app/post/onyxia/) sur le site
web du réseau revient sur le projet `Onyxia`, 
le logiciel initié par l'équipe innovation de l'Insee et mis à disposition
sur [`Github`](https://github.com/InseeFrLab/onyxia-web) pour 
permettre à d'autres organisations de développer une infrastructure
de _data science_ à l'état de l'art.

Pour en savoir plus
sur le contexte de naissance d'Onyxia,
les choix techniques mis en oeuvre ou la communauté des 
réutilisateurs, c'est [par ici](https://ssphub.netlify.app/post/onyxia/).


## Replay de l'événement autour des packages facilitant l'accès à l'open data de l'Insee

<img src="dessin-opendata.png" alt="Datascientest" width="450"> 

Le _replay_ des présentations des
packages [`Doremifasol`](https://inseefrlab.github.io/DoReMIFaSol/) (`R`)
et [`Pynsee`](https://github.com/InseeFrLab/pynsee) (`Python`) lors de notre
événement du __13 février__ autour des packages facilitant l'accès
à l'open data de l'Insee est en ligne ! 

La vidéo et les supports présentés sont mis à disposition
sur le [site web du réseau](https://ssphub.netlify.app/talk/presentation-des-packages-r-et-python-pour-acceder-a-lopen-data-de-linsee/)

## Programme 10%

La journée de lancement du programme 10% annonce une saison prometteuse !
Plus de 50 personnes, issues d'un large panel d'administrations, se 
sont rencontrées et ont échangées autour de projets mutualisables. 
Au final, une demi-douzaine de projets ont déjà été identifiés. 

Si vous n'étiez pas disponible lors de cette première journée, il 
est possible à tout moment de rejoindre cette communauté.
Le prochain atelier a lieu le __14 mars au Lieu de la Transformation Publique__ 📅 !