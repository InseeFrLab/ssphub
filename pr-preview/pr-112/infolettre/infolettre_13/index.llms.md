> **NOTE:**
>
> ***Vous désirez intégrer la liste de diffusion ? L’inscription se fait [ici](https://grist.numerique.gouv.fr/o/ssphub/forms/jSjAV3L2F8mmiRVuVEpfF7/103).***

# Actualités de la data science

## Un foisonnement d’avancées…

L’actualité des modèles d’intelligence artificielle est très chargée ([résumé des annonces du mois de mars](https://twitter.com/dustinvtran/status/1639159641635717120?t=tUqtzOHFvolL7MJef-M2Cw&s=19)) et cette lettre se concentrera sur les actualités majeures.

`Github Copilot`, l’assistant de code de `Microsoft`, devrait prochainement [utiliser `ChatGPT`](https://github.blog/2023-03-22-github-copilot-x-the-ai-powered-developer-experience/). Après `ChatGPT`, le navigateur `Bing` s’enrichit également d’un [créateur d’image](https://www.bing.com/create) basé sur `Dall-E`. Pendant ce temps, `Midjourney` (une des principales alternatives de création d’images) sort sa [V5](https://www.lesnumeriques.com/intelligence-artificielle/midjourney-v5-est-disponible-comment-l-utiliser-n208168.html), améliorant encore le réalisme du rendu.

Face à la recrudescence des montages utilisant `Midjourney`, qu’il s’agisse de *deep fakes* ou d’images à vocation humoristique, *Le Monde* a publié un guide pour [reconnaître une image générée par une IA](https://www.lemonde.fr/les-decodeurs/article/2023/03/30/comment-reconnaitre-une-image-generee-par-midjourney_6167525_4355770.html#xtor=AL-32280270-%5Bdefault%5D-%5Bios%5D).

![](https://preview.redd.it/pope-francis-goes-to-space-v0-7e9161rhoypa1.png?width=640&crop=smart&auto=webp&s=75d424b86993ca3b081e4182e774b51b4b6d3bce)

Exemple d’image générée par IA (*source: [Reddit](https://www.reddit.com/r/midjourney/comments/1221l3j/pope_francis_goes_to_space/)*)

## … qui alimentent les débats autour de la place de l’IA dans la société et notre économie numérique…

Alors que `ChatGPT` est déjà utilisé par plus de 100 millions d’utilisateurs, seulement quatre mois après sa sortie, il est légitime de se poser la question, comme le fait [Gaspard Koenig dans *Les Echos*](https://www.linkedin.com/posts/gaspard-koenig-36b49647_je-persiste-et-signe-in-les-echos-du-jour-activity-7049265627668078592-Nzm5?utm_source=share&utm_medium=member_desktop), du rapport à la vérité des IA génératrices et des implications sociétales de la généralisation de ces assistants.

Les prospectivistes, après s’être consacrés au *bitcoin* et à la *blockchain*, comme [Jean Detrez - le héros de Jean Philippe Toussaint -](http://www.leseditionsdeminuit.fr/livre-La_Cl%C3%A9_USB-3304-1-1-0-1.html), commencent à proposer des évaluations des conséquences économiques de cette (r)évolution. Dernier chiffre en date : d’après [Goldman Sachs](https://www.forbes.com/sites/jackkelly/2023/03/31/goldman-sachs-predicts-300-million-jobs-will-be-lost-or-degraded-by-artificial-intelligence/), 300 millions d’emplois au niveau mondial pourraient être supprimés ou amenés à évoluer.

Par ailleurs, la question de l’ouverture des corpus ayant servi à entraîner ces modèles ou de la licence à réutiliser des modèles pré-entraînés est importante à plusieurs égards. D’abord, dans une perspective scientifique, il apparaît compliqué d’évaluer la qualité d’un modèle ou lui proposer des alternatives sans accès à des données scientifiques de base comme le nombre de paramètres (inconnu pour GPT-4 par exemple). Mais c’est aussi une question économique : si ces outils deviennent de plus en plus incontournables, quel sera le *business model* de ce secteur ? Ces services resteront-ils gratuits avec en contrepartie une réutilisation des données fournies, potentiellement opaque et difficilement contrôlable par l’utilisateur, ou seront-ils monétisés ?

La publication en *open source* de modèles de langage est donc un enjeu d’indépendance pour les organisations intéressées par l’utilisation de *chatbots* ou l’extraction d’information. Cette publication continue à suivre un rythme presque quotidien. Cet [état de l’art des modèles publiés en open source](https://arxiv.org/pdf/2301.04655.pdf) publié en janvier est déjà largement dépassé. Et [celui-ci](https://arxiv.org/pdf/2303.18223.pdf) ne sera probablement plus à jour tout aussi rapidement.

![](featured.jpg)

Dans la dernière quinzaine, l’une des principales annonces est la publication par [`LAION`](https://laion.ai/blog/) d’[`OpenFlamingo`](https://laion.ai/blog/open-flamingo/), une version *open source* de [Flamingo](https://www.deepmind.com/blog/tackling-multiple-tasks-with-a-single-visual-language-model), modèle développé par DeepMind (filiale de Google) pour décrire de manière automatique une scène présente sur une image et offrir des informations contextuelles.

Afin de pouvoir intégrer à la fois des fonctionnalités de reconnaissance d’image et textuelle, celui-ci s’appuie sur des composantes *open source* pour les modèles de langage et de reconnaissance d’image et sur un jeu de données ouvertes. Des exemples de réutilisation en `Python` sont disponibles sur le [dépôt `Github`](https://github.com/mlfoundations/open_flamingo).

Dans le registre IA ouverte, une équipe de chercheurs de plusieurs universités américaines a mis en oeuvre un `chatbot` ouvert, à partir des modèles `LLaMA` (Meta, voir [Newsletter \#11](../../infolettre/infolettre_11/index.llms.md)) ou `Alpaca` (Stanford) : [`Vicuna`](https://vicuna.lmsys.org/). Ce chatbot généraliste permet à un internaute de discuter sur une grande variété de sujets. En plus de s’appuyer sur des modèles ouverts, ce qui peut faciliter sa ré-utilisation dans un cadre interne, ce *chat* présente un avantage technique puisqu’il s’appuie sur des modèles de langage plus économes en ressources que les modèles type GPT-4.

Dans le même temps, `Databricks` s’est également appuyé sur `LLaMA` et `Alpaca` pour proposer un autre modèle de langage ouvert avec lequel il est possible d’échanger. Ce modèle s’appelle [`Dolly`](https://www.databricks.com/blog/2023/03/24/hello-dolly-democratizing-magic-chatgpt-open-models.html) et est pensé comme premier clone du modèle [`Alpaca`](https://github.com/tatsu-lab/stanford_alpaca). `Dolly` peut être entrainé en 30 minutes sur un corpus massif et ne présente *“que”* 6 milliards de paramètres (qu’il hérite d’`Alpaca`) ce qui en fait, dans l’écosystème actuel des modèles de langage (LLM), un nain : à titre de comparaison `GPT-3` comporte 175 milliards de paramètres et le nombre de paramètres de `GPT-4` est inconnu mais pourrait être de l’ordre de la centaine de trillions.

Mozilla rejoint également le bal en investissant 30 millions de dollars pour lancer la *startup* [Mozilla.ai](https://blog.mozilla.org/en/mozilla/introducing-mozilla-ai-investing-in-trustworthy-ai/). Pour Mozilla, cette startup sert à adapter la philosophie à l’origine du navigateur Firefox au développement d’intelligences artificielles : proposer des outils ouverts indépendants des principaux acteurs marchands du numérique, sur le modèle des communs plutôt que du bien privé.

La question de la sécurité et de la confidentialité des informations fournies à `OpenAI` a également été au centre de l’attention au cours de la dernière quinzaine. `OpenAI` a révélé une faille de sécurité à l’origine d’une [fuite de données](https://twitter.com/OpenAI/status/1639297361729191936?t=j1gdTehqAT8OraZRC34iqg&s=19). Cette question de la confidentialité des informations fournies à `ChatGPT` a d’ailleurs amené la CNIL italienne à demander le blocage temporaire de l’outil d’OpenAI ([voir ici](https://www.lefigaro.fr/secteur/high-tech/rgpd-la-cnil-italienne-bloque-temporairement-l-acces-au-robot-conversationnel-chatgpt-20230331)).

Cette interdiction prend place dans un contexte de discussions intenses autour de la place à venir dans nos sociétés de ces robots conversationnels. Une [lettre ouverte](https://futureoflife.org/open-letter/pause-giant-ai-experiments/) au [fort écho médiatique](https://www.lemonde.fr/economie/article/2023/03/29/elon-musk-et-des-centaines-d-experts-reclament-une-pause-dans-le-developpement-de-l-ia_6167461_3234.html#xtor=AL-32280270-%5Bdefault%5D-%5Bios%5D) publiée par des figures de la *tech* (dont Elon Musk) et des universitaires réclame un moratoire dans le développement de nouveaux modèles d’intelligence artificielle, dont les signataires soulignent à quel point il est difficile de les *“comprendre, prédire ou contrôler de manière fiable”*.

Cette lettre a été rapidement critiquée. En premier lieu par [Andrew Ng](https://twitter.com/AndrewYNg/status/1641121451611947009?t=VyRYGWCjBeOxFOr0-bIJcQ&s=19) qui souligne qu’en plus de l’impossibilité pratique de mettre en oeuvre un tel moratoire dans le cadre d’une recherche privée, ce type de sursis retarde la recherche sur des applications bénéfiques, notamment dans le domaine de la santé. Mais la critique est aussi venue de [Timnit Gebru (DAIR), Emily Bender (University of Washington), Angelina McMillan-Major (University of Washington) et Margaret Mitchell (Hugging Face)](https://www.dair-institute.org/blog/letter-statement-March2023), autrices citées dans la lettre en référence au concept de *[“Stochastic Parrots”](https://dl.acm.org/doi/abs/10.1145/3442188.3445922)* (les modèles de langage répètent des séquences de formes linguistiques comme des ensemble de mots observés dans les corpus d’apprentissage, en fonction de critères probabilistes sur la façon dont ces informations se combinent, mais sans aucune référence au sens).

## … mais ne nous font pas oublier certaines autres nouveautés dignes d’intérêt

L’intensité de l’actualité autour de `ChatGPT` occulte beaucoup de faits qui auraient, dans un autre contexte, amené à des discussions passionnées.

Ainsi, la [publication en open source de l’algorithme de recommandation de Twitter](https://www.lesechos.fr/tech-medias/medias/elon-musk-ouvre-une-partie-de-twitter-en-open-source-les-annonceurs-mefiants-1921111) permet de mieux comprendre la manière dont fonctionne l’[algorithme de recommandation](https://www.theverge.com/2023/3/31/23664849/twitter-releases-algorithm-musk-open-source) de `Twitter`, notamment la manière dont des [bulles de filtre](https://www.cnil.fr/fr/definition/bulle-de-filtre) peuvent advenir après avoir cliqué sur un *post* par curiosité.

La publication de ce code prend place quelques jours après la découverte qu’une partie importante du code de `Twitter` était [déjà sur `Github`](https://www.theverge.com/2023/3/27/23657928/twitter-source-code-leak-github), sans doute suite à une fuite après l’un des licenciements massifs des derniers mois.

Peut-être n’avez-vous pas remarqué mais Twitter n’a plus le même logo depuis lundi. L’oiseau bleu a été remplacé par un chien (un Shiba Inu), logo d’une cryptomonnaie, le *dogecoin*, dont Elon Musk avait fait une [promotion controversée](https://gizmodo.com/elon-musk-crypto-dogecoin-tesla-1850293273) et dont les cours ont [connu une envolée depuis](https://techcrunch.com/2023/04/03/twitters-new-dog-icon-is-sending-dogecoin-sigh-to-the-moon/?guccounter=1&guce_referrer=aHR0cHM6Ly90LmNvLw&guce_referrer_sig=AQAAAJNxrMnEUPBmdQSt0itSK2mkXlYk2q2oU6Xlfk4DvUuTbtY0ycbsOICeiE4h9nfrCDw7vMehvG9RnBo3-AtvTmylVThzobsrraE27Rr-5pKjCdFf6fp97WB-dWGKoIxuYhipoFCua_PzoJG8x1PR5STbJqGbZqXhmos0IdWM26Rr).

Le logiciel de création d’applications [`Docker`](https://fr.wikipedia.org/wiki/Docker_(logiciel)) (principal logiciel de [conteneurisation](https://www.redhat.com/fr/topics/cloud-native-apps/what-is-containerization)) noue un [partenariat](https://www.docker.com/blog/docker-and-hugging-face-partner-to-democratize-ai/) avec [`HuggingFace`](https://huggingface.co/), qui rassemble une immense bibliothèque de modèles, pour faciliter la réutilisation de modèles de *deep learning*. Avec cette approche, il est plus facile de proposer aux ré-utilisateurs de modèles des applications prêtes à l’emploi pour tester ou enrichir un modèle sur des infrastructures compatibles avec la technique de la conteneurisation, approche utilisée par les principales plateformes de *data science* modernes (notamment par celles s’appuyant sur le logiciel [`Onyxia`](../../blog/onyxia/index.llms.md)).

La plateforme `Observable` propose un [comparatif](https://observablehq.com/@observablehq/data-wrangling-translations) des principales syntaxes de manipulation de données (`JavaScript`, `Python`, `R` et `SQL`).

Enfin, si vous appréciez les cartes, un *hashtag* à suivre est le [\#MapPromptMonday](https://twitter.com/hashtag/MapPromptMonday).

# Actualités du réseau: événements à venir

Place aux actualités de notre réseau avec les prochains événements que nous organisons.

## Première journée du réseau le 17 avril

![](treso.webp)

Nous rappelons la **journée du réseau le 17 avril, en présentiel** 📅 ([*Newsletter \#12*](../../infolettre/infolettre_12/index.llms.md)). Les places en présentiel sont presque épuisées, ne tardez pas à vous inscrire ! Si vous désirez tout de même suivre les échanges, inscrivez-vous à la retransmission par Zoom.

## Les masterclass avec `DataScientest` continuent

Nos cycles de *masterclass* `datascientest` continuent ! Les cycles parallèles NLP et analyse d’image continuent.

Au programme:

- Analyse d’image, niveau confirmé (📅 14 avril, 10h-12h )
- NLP, niveau avancé (📅 12 mai, 10h-12h )
- Analyse d’image, niveau avancé (📅 9 juin, 10h-12h )

Inscription [ici](https://framaforms.org/participation-aux-masterclass-datascientest-2e-serie-1680103227) !

# Actualités du réseau: dernières nouveautés

## Replay “Bonnes pratiques pour la mise en production de projets *data science*” (30 mars)

Le replay de la présentation succincte du contenu du cours de l’ENSAE [“Bonnes pratiques pour la mise en production de projets *data science*”](https://ensae-reproductibilite.netlify.app/) ayant eu lieu dans le cadre du programme 10% (voir [*Newsletter \#12*](../../infolettre/infolettre_12/index.llms.md)) est disponible [sur le site du programme 10%](https://bbb-dinum-scalelite.visio.education.fr/playback/presentation/2.3/871ab1ad6290d683201d2996582dffe96174d9a6-1680176731865).

## Replay de l’événement autour de l’OCRisation avec Christopher Kermorvant (29 mars)

[Christopher Kermorvant](https://www.linkedin.com/in/christopher-kermorvant-87158b2/?originalSubdomain=fr), chercheur spécialisé en OCRisation et fondateur de [Teklia](https://teklia.com/), a proposé au réseau une présentation très pédagogique sur l’extraction de texte avec des méthodes de *deep learning*.

A partir de l’exemple de recensements de la fin du XIXe siècle, nous avons ainsi bénéficié d’une excellente introduction à l’histoire des techniques d’OCRisation et la manière dont aujourd’hui ces modèles fonctionnent en associant reconnaissance d’image et analyse textuelle.

Le replay est [ici](../../event/ocrisation-teklia/index.llms.md) !

## Replay de la présentation de la documentation collaborative *Carpentries* (28 mars)

Kate Burnett-Isaacs, de Statistics Canada, nous a présenté l’initiative Meta Academy / Carpentries permettant de construire une documentation francophone de référence sur `R`, `Python` et `Git` à destination des utilisateurs de données.

Le replay est [ici](../../event/presentation-du-projet-meta-academy-carpentries/index.llms.md) !
