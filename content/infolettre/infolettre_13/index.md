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

L'actualité des modèles de langage et des _chatbots_ est très chargée ([résumé annonces du mois de mars](https://twitter.com/dustinvtran/status/1639159641635717120?t=tUqtzOHFvolL7MJef-M2Cw&s=19)) et cette lettre se concentrera sur les actualités majeures. 

`Github Copilot`, l'assistant de code de `Microsoft`, devrait prochainement [utiliser `ChatGPT`](https://github.blog/2023-03-22-github-copilot-x-the-ai-powered-developer-experience/).
Après `ChatGPT`, le navigateur `Bing` s'enrichit également d'un [créateur d'image](https://www.bing.com/create) basé sur `Dall-E`. 
Pendant ce temps, `Midjourney` (une des principales alternatives de création d'images) sort sa [V5](https://www.lesnumeriques.com/intelligence-artificielle/midjourney-v5-est-disponible-comment-l-utiliser-n208168.html), améliorant encore le réalisme du rendu. 

Face à la recrudescence des montages utilisant `Midjourney`, qu'il s'agisse de _deep fakes_ ou
d'images à vocation humoristique, _Le Monde_ a publié un
guide pour [reconnaître une image générée par une IA](https://www.lemonde.fr/les-decodeurs/article/2023/03/30/comment-reconnaitre-une-image-generee-par-midjourney_6167525_4355770.html#xtor=AL-32280270-%5Bdefault%5D-%5Bios%5D).

![](https://preview.redd.it/pope-francis-goes-to-space-v0-7e9161rhoypa1.png?width=640&crop=smart&auto=webp&s=75d424b86993ca3b081e4182e774b51b4b6d3bce)
_Source: [Reddit](https://www.reddit.com/r/midjourney/comments/1221l3j/pope_francis_goes_to_space/)_

La publication de modèles de langage continue à suivre un rythme presque quotidien. 
Cet [état de l'art](https://arxiv.org/pdf/2301.04655.pdf) publié en janvier est déjà largement dépassé.

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
son modèle de langage ouvert: [`Dolly`](https://www.databricks.com/blog/2023/03/24/hello-dolly-democratizing-magic-chatgpt-open-models.html).

Mozilla rejoint également le bal en investissant 30 millions de dollars pour lancer la _startup_ [Mozilla.ai](https://blog.mozilla.org/en/mozilla/introducing-mozilla-ai-investing-in-trustworthy-ai/). 

Et la course folle n'est pas prête de s'arrêter puisque la prochaine étape 
est peut-être de générer des formes en 3D à partir [d'un jeu de données ouvertes en 3D](https://twitter.com/mattdeitke/status/1638608472525897728).

{{< video src="3d.mp4" controls="yes" >}}
_Source: [Twitter](https://twitter.com/mattdeitke/status/1638608472525897728)_


La question de la sécurité et de la confidentialité des informations
fournies à `OpenAI` a également été au centre de l'attention au cours
de la dernière quinzaine. `OpenAI` a
révélé une faille de sécurité à l'origine d'une [fuite de données](https://twitter.com/OpenAI/status/1639297361729191936?t=j1gdTehqAT8OraZRC34iqg&s=19). 
Cette question de la confidentialité des informations fournies à `ChatGPT` 
a d'ailleurs amené la CNIL italienne à demander le blocage
temporaire de l'outil d'OpenAI ([voir ici](https://www.lefigaro.fr/secteur/high-tech/rgpd-la-cnil-italienne-bloque-temporairement-l-acces-au-robot-conversationnel-chatgpt-20230331)).

Cette interdiction prend place dans un contexte de discussions intenses autour de la place
à venir dans nos sociétés de ces robots conversationnels.
Une [lettre ouverte](https://futureoflife.org/open-letter/pause-giant-ai-experiments/) au [fort écho médiatique](https://www.lemonde.fr/economie/article/2023/03/29/elon-musk-et-des-centaines-d-experts-reclament-une-pause-dans-le-developpement-de-l-ia_6167461_3234.html#xtor=AL-32280270-%5Bdefault%5D-%5Bios%5D) publiée par 
des figures de la _tech_ (dont Elon Musk) et des universitaires réclame 
un moratoire dans le développement de nouveaux modèles d'intelligence
artficielle. Cette lettre a été rapidement critiquée, que ce soit par
[Andrew Ng](https://twitter.com/AndrewYNg/status/1641121451611947009?t=VyRYGWCjBeOxFOr0-bIJcQ&s=19)
ou par les
auteurs de l'article développant le concept de _"Stochastic Parrots"_ qui est cité dans la lettre 
([voir la réponse des auteurs](https://www.dair-institute.org/blog/letter-statement-March2023)).


## Le reste de l'actualité

L'intensité de l'actualité autour de `ChatGPT` occulte beaucoup de
faits qui auraient, dans un autre contexte, amenés à 
des discussions passionnées. 

Dans les faits majeurs quelques peu occultés par le bruit autour
de `ChatGPT`, il y a
la [publication en open source de l'algorithme de recommandation de Twitter](https://www.lesechos.fr/tech-medias/medias/elon-musk-ouvre-une-partie-de-twitter-en-open-source-les-annonceurs-mefiants-1921111). 
Celui-ci permet de mieux comprendre la manière dont
fonctionne l'[algorithme de recommandation](https://www.theverge.com/2023/3/31/23664849/twitter-releases-algorithm-musk-open-source)
de `Twitter`, notamment la manière dont des [bulles de filtre](https://www.cnil.fr/fr/definition/bulle-de-filtre)
peuvent advenir après avoir cliqué sur un _post_ par curiosité. 

La publication de ce code prend place quelques jours après la découverte qu'une 
partie important du
code de `Twitter` était [déjà sur `Github`](https://www.theverge.com/2023/3/27/23657928/twitter-source-code-leak-github), sans
doute suite à une fuite après l'un des licenciements massifs des derniers mois. 

`Docker` et `HuggingFace` nouent un [partenariat](https://www.docker.com/blog/docker-and-hugging-face-partner-to-democratize-ai/) pour faciliter la réutilisation
de modèles `HuggingFace`. Avec cette approche, il est maintenant possible de proposer
aux ré-utilisateurs, directement depuis `HuggingFace`, 
une application prête à l'emploi, avec tous
les ingrédients pré-installés, pour
tester ou enrichir un modèle. 

La plateforme `observable` propose
un [comparatif](https://observablehq.com/@observablehq/data-wrangling-translations) des principales syntaxes
de manipulation de données (`JavaScript`, `Python`, `R` et `SQL`). 

Si vous appréciez les cartes, un _hashtag_ à suivre
est le [#MapPromptMonday](https://twitter.com/hashtag/MapPromptMonday).

# Actualités du réseau: événements à venir

Place aux actualités de notre réseau avec les prochains événements
que nous organisons. 

## Première journée du réseau en avril (17 avril)

<img src="treso.webp" alt="La Tréso" width="500"> 

Nous rappelons la __journée du réseau le 17 avril, en présentiel__ 📅 ([_Newsletter #12_](https://ssphub.netlify.app/infolettre/infolettre_12/)).
Les places en présentiel sont
presque épuisées, ne tardez pas à vous inscrire !
Si vous désirez tout de même suivre les échanges, inscrivez-vous à la retransmission par Zoom. 


# Actualités du réseau: dernières nouveautés

## Replay "Bonnes pratiques en `Python`" (30 mars)

Le replay de la présentation succincte 
du contenu du cours de l'ENSAE ["Bonnes pratiques et mise en production de projets data science"](https://ensae-reproductibilite.netlify.app/) ayant eu lieu dans le cadre du programme 10% (voir [_Newsletter #12_](https://ssphub.netlify.app/infolettre/infolettre_12/))
est disponible en ligne [LIEN A VENIR]


## Replay de l'événement autour de l'OCRisation avec Christopher Kermorvant (29 mars)

[Christopher Kermorvant](https://www.linkedin.com/in/christopher-kermorvant-87158b2/?originalSubdomain=fr),
chercheur spécialisé en OCRisation et fondateur de [Teklia](https://teklia.com/)
a proposé au réseau une présentation très pédagogique sur l'extraction de texte 
avec des méthodes de _deep learning_.

A partir de l'exemple de recensements de la fin du XIXe siècle, nous avons
ainsi bénéficié d'une excellente introduction à l'histoire des techniques d'OCRisation
et la manière dont aujourd'hui ces modèles fonctionnent en associant reconnaissance d'image
et analyse textuelle. 

Le replay est [ici](https://ssphub.netlify.app/talk/ocrisation-teklia/) !


## Replay de la présentation de la documentation collaborative _Carpentries_ (28 mars)

Kate Burnett-Isaacs, de Statistics Canada, nous a présenté
l'initiative Meta Academy / Carpentries permettant de
construire une documentation francophone de référence
sur `R`, `Python` et `Git` pensée pour les utilisateurs de données.

Le replay est [ici](https://ssphub.netlify.app/talk/ocrisation-teklia/) !