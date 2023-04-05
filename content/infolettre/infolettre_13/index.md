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

## Un foisonnement d'avancées... 

L'actualité des modèles d'intelligence artificielle est très chargée ([résumé des annonces du mois de mars](https://twitter.com/dustinvtran/status/1639159641635717120?t=tUqtzOHFvolL7MJef-M2Cw&s=19)) et cette lettre se concentrera sur les actualités majeures. 

`Github Copilot`, l'assistant de code de `Microsoft`, devrait prochainement [utiliser `ChatGPT`](https://github.blog/2023-03-22-github-copilot-x-the-ai-powered-developer-experience/).
Après `ChatGPT`, le navigateur `Bing` s'enrichit également d'un [créateur d'image](https://www.bing.com/create) basé sur `Dall-E`. 
Pendant ce temps, `Midjourney` (une des principales alternatives de création d'images) sort sa [V5](https://www.lesnumeriques.com/intelligence-artificielle/midjourney-v5-est-disponible-comment-l-utiliser-n208168.html), améliorant encore le réalisme du rendu. 

Face à la recrudescence des montages utilisant `Midjourney`, qu'il s'agisse de _deep fakes_ ou
d'images à vocation humoristique, _Le Monde_ a publié un
guide pour [reconnaître une image générée par une IA](https://www.lemonde.fr/les-decodeurs/article/2023/03/30/comment-reconnaitre-une-image-generee-par-midjourney_6167525_4355770.html#xtor=AL-32280270-%5Bdefault%5D-%5Bios%5D).

![](https://preview.redd.it/pope-francis-goes-to-space-v0-7e9161rhoypa1.png?width=640&crop=smart&auto=webp&s=75d424b86993ca3b081e4182e774b51b4b6d3bce)
_Source: [Reddit](https://www.reddit.com/r/midjourney/comments/1221l3j/pope_francis_goes_to_space/)_

La publication de modèles de langage, permettant une grande variété d'applications comme les _chatbots_ ou l'extraction d'information, continue à suivre un rythme presque quotidien. 
Cet [état de l'art](https://arxiv.org/pdf/2301.04655.pdf) publié en janvier, pourtant complet,
est déjà largement dépassé. 
[Celui-ci](https://arxiv.org/abs/2303.18223), qui vient de sortir, risque de l'être aussi rapidement.

![](featured.jpg)

Dans la dernière quinzaine, l'une des principales annonces est la publication par [`LAION`](https://laion.ai/blog/)
d'[`OpenFlamingo`](https://laion.ai/blog/open-flamingo/) une version _open source_
de [Flamingo](https://www.deepmind.com/blog/tackling-multiple-tasks-with-a-single-visual-language-model),
modèle développé par DeepMind (filiale de Google) pour décrire de manière automatique une scène présente sur une image et offrir des informations contextuelles.

Afin de pouvoir intégrer à la fois des fonctionnalités de reconnaissance d'image et textuelle, 
celui-ci s'appuie sur des composantes _open source_ pour les modèles de langage et 
de reconnaissance d'image et un jeu de données ouvert. Des exemples de réutilisation
en `Python` sont disponibles sur le [dépôt `Github`](https://github.com/mlfoundations/open_flamingo).

Dans le registre IA ouverte, une équipe de chercheurs de plusieurs universités américaines a
mis en oeuvre un `chatbot` ouvert, à partir des modèles `LLaMA` (Meta, voir [Newsletter #11](https://ssphub.netlify.app/infolettre/infolettre_11/))
ou `Alpaca` (Stanford) : [`Vicuna`](https://vicuna.lmsys.org/).
Ce chatbot généraliste permet à un internaute de discuter sur une grande variété de sujets. 
En plus de s'appuyer sur des modèles ouverts ce qui peut faciliter sa ré-utilisation dans
un cadre interne,
ce chat présente un avantage technique
puisqu'il s'appuie sur des modèles de langage plus économes en ressources que les modèles type GPT-4. 

Dans le même temps, `Databricks` s'est également 
appuyé sur `LLaMA` et `Alpaca` pour proposer 
un autre modèle de langage ouvert avec lequel il est possible 
d'échanger. Ce modèle s'appelle [`Dolly`](https://www.databricks.com/blog/2023/03/24/hello-dolly-democratizing-magic-chatgpt-open-models.html) et est pensé comme premier clône du modèle [`Alpaca`](https://github.com/tatsu-lab/stanford_alpaca).
`Dolly` peut être entrainé en 30 minutes sur un corpus massif et 
ne présente _"que"_ 6 milliards de paramètres (qu'il hérite d'`Alpaca`)
ce qui en fait, dans l'écosystème actuel des modèles de langage (LLM) un nain: `GPT-3` comporte 175 milliards de paramètres et
le nombre de paramètres de `GPT-4` est inconnu mais l'ordre de grandeur pourrait être la centaine de trillions. 

Mozilla rejoint également le bal en investissant 30 millions de dollars pour lancer la _startup_ [Mozilla.ai](https://blog.mozilla.org/en/mozilla/introducing-mozilla-ai-investing-in-trustworthy-ai/). Pour Mozilla, cette startup sert à adapter la philosophie à l'origine du navigateur Firefox au développement d'intelligences artificielles: proposer des outils ouverts indépendants des principaux acteurs marchands du numérique, sur le modèle des communs plutôt que du bien privé. 




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
artificielle, dont les signataires soulignent à quel point il est difficile de les _"comprendre, prédire ou contrôler de manière fiable"_. Cette lettre a été rapidement critiquée. 
[Andrew Ng](https://twitter.com/AndrewYNg/status/1641121451611947009?t=VyRYGWCjBeOxFOr0-bIJcQ&s=19)
ou par les
Mais la critique est aussi venue de Timnit Gebru (DAIR), Emily Bender (University of Washington), Angelina McMillan-Major (University of Washington) et Margaret Mitchell (Hugging Face), autrices citées dans la lettre en référence au concept de _["Stochastic Parrots"](https://dl.acm.org/doi/abs/10.1145/3442188.3445922) (les modèles de langage répétent des séquences de formes linguistiques comme des ensemble de mots observés dans les corpus d'apprentissage, en fonction de critères probabilistes sur la façon dont ces informations se combinent, mais sans aucune référence au sens). 
([voir la réponse des auteurs](https://www.dair-institute.org/blog/letter-statement-March2023)).


## ... mais ne nous font pas oublier certaines autres nouveautés dignes d'intérêt

L'intensité de l'actualité autour de `ChatGPT` occulte beaucoup de
faits qui auraient, dans un autre contexte, amené à 
des discussions passionnées. 

Dans les faits majeurs quelques peu occultés par le bruit autour
Ainsi, la [publication en open source de l'algorithme de recommandation de Twitter](https://www.lesechos.fr/tech-medias/medias/elon-musk-ouvre-une-partie-de-twitter-en-open-source-les-annonceurs-mefiants-1921111)
permet de mieux comprendre la manière dont
fonctionne l'[algorithme de recommandation](https://www.theverge.com/2023/3/31/23664849/twitter-releases-algorithm-musk-open-source)
de `Twitter`, notamment la manière dont des [bulles de filtre](https://www.cnil.fr/fr/definition/bulle-de-filtre)
peuvent advenir après avoir cliqué sur un _post_ par curiosité. 

La publication de ce code prend place quelques jours après la découverte qu'une 
partie important du
code de `Twitter` était [déjà sur `Github`](https://www.theverge.com/2023/3/27/23657928/twitter-source-code-leak-github), sans
doute suite à une fuite après l'un des licenciements massifs des derniers mois. 

Peut-être n'avez-vous pas remarqué mais Twitter n'a plus le même logo depuis lundi. L'oiseau bleu a été remplacé par
un chien (un Shiba Inu), logo d'une cryptomonnaie, le _dogecoin_, dont Elon Musk  avait fait une [promotion controversée](https://gizmodo.com/elon-musk-crypto-dogecoin-tesla-1850293273) et
dont les cours ont [connu une envolée depuis](https://techcrunch.com/2023/04/03/twitters-new-dog-icon-is-sending-dogecoin-sigh-to-the-moon/?guccounter=1&guce_referrer=aHR0cHM6Ly90LmNvLw&guce_referrer_sig=AQAAAJNxrMnEUPBmdQSt0itSK2mkXlYk2q2oU6Xlfk4DvUuTbtY0ycbsOICeiE4h9nfrCDw7vMehvG9RnBo3-AtvTmylVThzobsrraE27Rr-5pKjCdFf6fp97WB-dWGKoIxuYhipoFCua_PzoJG8x1PR5STbJqGbZqXhmos0IdWM26Rr).

Le logiciel de création d'applications [`Docker`](https://fr.wikipedia.org/wiki/Docker_(logiciel)) (principal logiciel de [conteneurisation](https://www.redhat.com/fr/topics/cloud-native-apps/what-is-containerization)) noue un [partenariat](https://www.docker.com/blog/docker-and-hugging-face-partner-to-democratize-ai/) avec [`HuggingFace`](https://huggingface.co/), qui rassemble une immense bibliothèque de modèles,  pour faciliter la réutilisation
de modèles de _deep learning_. Avec cette approche, il est plus facile de proposer
aux ré-utilisateurs de modèles
des applications prêtes à l'emploi
pour tester ou enrichir un modèle sur des infrastructures compatibles 
avec la technique de la conteneurisation, par exemple comme
celles s'appuyant sur le logiciel [`Onyxia`](https://ssphub.netlify.app/post/onyxia/).

La plateforme `Observable` propose
un [comparatif](https://observablehq.com/@observablehq/data-wrangling-translations) des principales syntaxes
de manipulation de données (`JavaScript`, `Python`, `R` et `SQL`). 

Enfin, si vous appréciez les cartes, un _hashtag_ à suivre
est le [#MapPromptMonday](https://twitter.com/hashtag/MapPromptMonday).

# Actualités du réseau: événements à venir

Place aux actualités de notre réseau avec les prochains événements
que nous organisons. 

## Première journée du réseau le 17 avril

<img src="treso.webp" alt="La Tréso" width="500"> 

Nous rappelons la __journée du réseau le 17 avril, en présentiel__ 📅 ([_Newsletter #12_](https://ssphub.netlify.app/infolettre/infolettre_12/)).
Les places en présentiel sont
presque épuisées, ne tardez pas à vous inscrire !
Si vous désirez tout de même suivre les échanges, inscrivez-vous à la retransmission par Zoom. 

## Les masterclass avec `DataScientest` continuent

Nos cycles de _masterclass_ `datascientest` continuent !
Les cycles parallèles NLP et analyse d'image continuent. 

Au programme: 

- Analyse d'image, niveau confirmé (📅 14 avril, 10h-12h )
- NLP, niveau avancé (📅 12 mai, 10h-12h )
- Analyse d'image, niveau avancé (📅 9 juin, 10h-12h )

Inscription [ici](https://framaforms.org/participation-aux-masterclass-datascientest-2e-serie-1680103227)


# Actualités du réseau: dernières nouveautés

## Replay "Bonnes pratiques en `Python`" (30 mars)

Le replay de la présentation succincte 
du contenu du cours de l'ENSAE ["Bonnes pratiques et mise en production de projets data science"](https://ensae-reproductibilite.netlify.app/) ayant eu lieu dans le cadre du programme 10% (voir [_Newsletter #12_](https://ssphub.netlify.app/infolettre/infolettre_12/))
est disponible [sur le site du programme 10%](https://bbb-dinum-scalelite.visio.education.fr/playback/presentation/2.3/871ab1ad6290d683201d2996582dffe96174d9a6-1680176731865). 


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

Le replay est [ici](https://ssphub.netlify.app/talk/presentation-du-projet-meta-academy-carpentries/) !
