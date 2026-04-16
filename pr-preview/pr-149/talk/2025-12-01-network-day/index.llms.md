# Photos de l’événement

![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2025-12-network/IMG20251201122703_diff.jpg)

![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2025-12-network/IMG20251201122643_diff.jpg)

![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2025-12-network/IMG20251201115612_diff.jpg)

# Inscription

👉️ Les inscriptions se font [ici](https://www.eventbrite.com/e/billets-3e-journee-du-reseau-des-data-scientists-1664052518879?aff=oddtdtcreator). 👈️ Possibilité de participer en présentiel et en ligne.

# Agenda

- **9h30-10h**: **Accueil**, moment de convivialité autour d’un café.
- **10h-11h30**: **Retours d’expérience** ;
  - Présentation de l’offre LLM du SSP Cloud, Insee - Division Innovation instruction technique (DIIT) ;
  - Extraire et analyser les compétences numériques dans les offres d’emploi grâce au NLP (Dares - Service statistique ministériel du Ministère du Travail et de l’Emploi & Insee - DEE) ;
- **11h30-12h15**: **Atelier de partage** sur l’usage de l’IA pour les *data scientists* et statisticiens :
  - quels assistants de code pour un *data scientist* / statisticien ?
  - assistants, agents & vibe coding : partage d’expériences
- **12h15-14h**: **Pause déjeuner**, moment de convivialité
- **14h-14h45**: invité : Quelles évolutions récentes et à venir sur [data.gouv](https://www.data.gouv.fr/) (Dinum)
- **14h45-16h15**: **Retours d’expérience** sur l’extraction de données et la classification :
  - Automatisation des [Infos rapides Justice](https://www.justice.gouv.fr/documentation/etudes-et-statistiques?categories%5B%5D=394&items_per_page=10) grâce au package R `chartegraphique.sser` (SSER - SSM Justice) ;
  - Présentation du package torchTextClassifiers, qui propose un cadre unifié et agile pour la classification de texte, basé sur PyTorch et PyTorch Lightning (Insee - SSPLab) ;
- **16h15-16h45**: **Pause**, moment de convivialité
- **16h45-17h30**: ***Keynote*** présentation du portail <https://data.ina.fr/>, le service de l’exploration des médias utilisant l’IA pour établir les indicateurs sur les médias (personnalités les plus mentionnées, répartition du temps de parole entre femme et homme …)
- **17h30-19h30**: **Pot**, moment de convivialité

# Replay et présentations

``` yaml
```

# Journée du réseau du SSP Hub

01/12/2025

## Bienvenue - début à 10h

## Agenda

- **9h30-10h**: **Accueil**, café
- **10h-11h30**: **Retours d’expérience** ;
  - Présentation de l’offre LLM du SSP Cloud, (Insee)
  - Extraire et analyser les compétences numériques dans les offres d’emploi grâce au NLP (Dares & Insee)
- **11h30-12h15**: **Atelier de partage** sur l’usage de l’IA pour les *data scientists* et statisticiens
- **12h15-14h**: **Pause déjeuner**, moment de convivialité
- **14h-14h45**: Quelles évolutions récentes et à venir sur [data.gouv](https://www.data.gouv.fr/) (Dinum)
- **14h45-16h15**: **Retours d’expérience** :
  - Automatisation des [Infos rapides Justice](https://www.justice.gouv.fr/documentation/etudes-et-statistiques?categories%5B%5D=394&items_per_page=10) grâce au package R `chartegraphique.sser` (SSER - SSM Justice)
  - Présentation du package torchTextClassifiers (Insee)
- **16h15-16h45**: **Pause**, moment de convivialité
- **16h45-17h30**: ***Keynote*** présentation du portail <https://data.ina.fr/> (INA)
- **17h30-19h30**: **Pot**, moment de convivialité

## Présentation de l’offre LLM du SSP Cloud (Insee)

## Extraire et analyser les compétences numériques dans les offres d’emploi (DARES, Insee)

## Atelier de partage: l’IA générative pour les data scientists

**Introduction**

- Quel est l’impact de l’intelligence artificielle générative? Est-ce une technologie destructrice d’emploi?

- Les débuts de réponse à ces questions sont pour le moins contrastés.

  - Est-ce le bon moment de se poser ces questions, étant donné que la technologie évolue si vite ?
  - L’arrivée de l’IA aurait ralenti la croissance de l’emploi aux Etats-Unis ([Canaries in the Coal Mine? Six Facts about the Recent Employment Effects of AI](https://digitaleconomy.stanford.edu/publications/canaries-in-the-coal-mine/))
  - L’impact serait différencié selon le niveau d’expertise : de très utile pour des sujets où l’on débute à peu de plus value sur les sujets d’expertise poussée.
  - Pour les développeurs, l’impact sur la productivité serait [non significatif](https://mikelovesrobots.substack.com/p/wheres-the-shovelware-why-ai-coding) voire [négatif](https://arxiv.org/abs/2507.09089)

**A l’Insee, utilisation de l’IA générative¹ pour:**

- traduction de code (SAS vers R notamment)
- aide au code
- assistant pour rédaction, génération résumé, mail, images

1.  source: rapport de l’IG n°2025_15122_DG75-B001 sur l’IA

## Cadre de l’atelier

- **Objectif** : discuter, entre utilisateurs de l’IA, de son apport dans ce qu’on a vécu dans nos métiers respectifs, que ce soit lié au code ou plus général

- Concernant les **cas d’usage** :
  - Pour quels cas d’usage est-ce que j’utilise l’IA ?
  - Pour quels languages informatiques (yaml, Quarto, R, Python) ?
  - Est-ce pour des choses que je maîtrise et que je n’ai pas envie de taper, ou pour des choses nouvelles ?
- Concernant les **outils** :
  - Quels sont les modèles d’IA utilisés (ChatGPT, Mistral, Claude, Copilot) ? Un arbitrage suivant le type de tâches demandées ?
  - Quels agents sont utiles dans mon travail ? Pour quelles tâches ?
  - Comment utiliser l’IA : par le *vibe coding* ? Avec des agents, ou *via* un chat ?

- Sur la **qualité de la production** :

  - Est-ce que j’expertise ensuite la réponse apportée d’un point de vue technique ? Comment ?
  - en tant que manager, est ce que je perçois un impact sur le temps de production ou sur le temps de relecture ? Quel impact global de l’IA ?

- des conseils particuliers à partager ?

- **Comment ?**

  - par petit groupe de 5/6, des échanges de 25 minutes.
  - 12h : restitution de 2 minutes par groupe

## Déjeuner - reprise à 14h

## Quelles évolutions récentes et à venir sur data.gouv (Dinum) ?

[*Cf.* présentation en ligne](https://www.figma.com/deck/bGTGzYw9ZDrLGzbOzJbwJp/D%C3%89MO-INSEE-1-DECEMBRE?node-id=4-3555&viewport=-145,-74,0.69&t=wS4mpPXywS1FgL52-1&scaling=min-zoom&content-scaling=fixed&page-id=0:1)

## Automatisation des Infos rapides Justice grâce au package R chartegraphique.sser (SSER - SSM Justice)

*Cf.* [Présentation détaillée](https://journees-methodologie-statistique.insee.net/automatisation-de-la-production-des-infos-rapides-justice-a-la-charte-graphique-du-sser-au-format-pdf-a-laide-dun-outil-combinant-rmarkdown-et-pagedown/) du package aux JMS 2025

## [Présentation](https://inseefrlab.github.io/codif-ape-prez/slides/jms-ttc-prez/#/title-slide) du package torchTextClassifiers (Insee)

## Pause - reprise à 16h45

## Keynote - présentation du portail <https://data.ina.fr/>

*Cf.* <https://data.ina.fr/>

## Pot - reprise demain matin au travail

1^(er) décembre 2025 - Journée du SSPHub

``` js
createButton(
  "https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2025-12-network/0_general.pdf",
  "Télécharger les slides"
)
```

## Présentation de l’offre LLM du SSP Cloud, Insee - Division Innovation instruction technique (DIIT)

``` js
createButton(
  "https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2025-12-network/1_SSPCloud_LLM.pdf",
  "Télécharger les slides"
)
```

## Extraire et analyser les compétences numériques dans les offres d’emploi grâce au NLP (Dares - Service statistique ministériel du Ministère du Travail et de l’Emploi & Insee - DEE)

``` js
createButton(
  "https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2025-12-network/2_JOCAS_DARES.pdf",
  "Télécharger les slides"
)
```

## Quelles évolutions récentes et à venir sur [data.gouv](https://www.data.gouv.fr/) (Dinum)

Présentation disponible sur [Figma](https://www.figma.com/deck/bGTGzYw9ZDrLGzbOzJbwJp/D%C3%89MO-INSEE-1-DECEMBRE?node-id=4-3555&viewport=-145%2C-74%2C0.69&t=wS4mpPXywS1FgL52-1&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1)

## Automatisation des [Infos rapides Justice](https://www.justice.gouv.fr/documentation/etudes-et-statistiques?categories%5B%5D=394&items_per_page=10) grâce au package R `chartegraphique.sser` (SSER - SSM Justice)

Le papier a été publié lors des [journées de méthodologie statistique 2025](https://journees-methodologie-statistique.insee.net/automatisation-de-la-production-des-infos-rapides-justice-a-la-charte-graphique-du-sser-au-format-pdf-a-laide-dun-outil-combinant-rmarkdown-et-pagedown/).

``` js
createButton(
  "https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2025-12-network/4_SSER_autoIRJ.pdf",
  "Télécharger les slides"
)
```

## Le package torchTextClassifiers, un cadre unifié pour la classification de texte basé sur PyTorch et PyTorch Lightning (Insee - SSPLab)

``` yaml
```

# torchTextClassifiers, un framework en PyTorch pour la classification de texte

Meilame Tayebjee

<meilame.tayebjee@insee.fr>

Insee, SSP Lab

2026-03-30

# Pour suivre la présentation…

# 1️⃣ Contexte

## fastText : en production, mais archivé

- fastText : le *go-to* pour la classification de texte à l’Insee
- Efficace, performant, mis en production pour la codification APE…
- …mais repo archivé depuis le 19/03/2024

## Enjeux

- La non-maintenance de la librairie : à terme, risques de maintenance, de compatibilité…
- Surtout : freine les possibilités de **modernisation**
- Dans le même temps, un éco-système **deep learning**/ NLP très dynamique: **PyTorch**, **Hugging Face**…

## 2024 : passage à PyTorch !

- Modèle PyTorch proche du modèle fastText : transition en douceur
- On en parlait [ici](https://inseefrlab.github.io/codif-ape-prez/slides/grp-veille-codif-auto-10/#/title-slide)
  - PyTorch permet de *customiser* l’architecture et l’adapter à nos besoins (gestion des variables catégorielles)
  - Meilleur *monitoring* de l’entraînement
  - Opportunités de modernisation: explicabilité, calibration, **modèles plus performants**…
- Les défis de temps d’inférence ont été relevés
  - dimensionnement du modèle plus raisonné
  - le modèle est déployé [ici](https://codification-ape2025-pytorch.lab.sspcloud.fr/docs)

## Pourquoi faire un package ?

- au début, le modèle a été mis à disposition sous la forme d’un package Python, **torchFastText**. Pourquoi ?

  - le modèle se balade beaucoup : repo d’entraînement, repo API (inférence), puis prod
    - il faut s’assurer d’une **source de vérité unique**
    - **PyPI** (avec connexion au Nexus interne) permet portabilité, installation et mise à jour
  - le modèle / la méthodologie a **une existence propre**, ce qui justifie de le séparer des autres codes (entraînement, inférence)
    - pour la diffuser
    - pour collaborer dessus

## de *torchFastText* à *torchTextClassifiers*

- évolution du package initial vers un **toolkit** (ou un *unifying framework*) de la classification de texte avec variables catégorielles
  - d’autres exemples de *toolkits* en PyTorch : [Pythae](https://github.com/clementchadebec/benchmark_VAE) pour les VAE, [TorchSeg](https://github.com/yu-changqian/TorchSeg) pour la segmentation…
- conceptualisation des différents composants d’un modèle de classification de texte
- connexion avec l’eco-système Hugging Face

&nbsp;

- **Objectif**:
  - manipulation de ces composants, instantiation rapide et entraînement facilité de différentes architectures classiques
  - en faire le standard de codification automatique au niveau institutionnel (Insee / SSM / INS européens)
- **Destinataires**: tous ceux qui veulent entraîner leur propre modèles maisons à taille réduite, avoir la main sur leur architecture et qui ne peuvent utiliser les gros modèles d’Hugging Face !

## Zone d’intérêt de la librairie

D’un point de vue production

# 2️⃣ Présentation du package

## Structure générale

## Une démo ?

[Lien vers le notebook de démo](https://inseefrlab.github.io/torchTextClassifiers/notebooks/example.html)

## Lien vers la documentation

https://inseefrlab.github.io/torchTextClassifiers/

# 

**Merci de votre attention !**

``` js
createButton(
  "https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2025-12-network/5_TorchTextClassifier_Insee.pdf",
  "Télécharger les slides"
)
```

## Le portail <https://data.ina.fr/>, produire des indicateurs de suivi des médias grâce à l’IA

*Cf.* le portail <https://data.ina.fr/>

``` js
function createButton(slides, message="Télécharger les slides"){
  const button = html`
  <p class="text-center">
    <a class="btn btn-primary btn-lg cv-download" href="${slides}" target="_blank">
      <i class="fa-solid fa-file-arrow-down"></i>&ensp;${message}
    </a>
  </p>`
  return button
}
```

# Contact

Pour toute information : <ssphub-contact@insee.fr>

📺️ La deuxième journée du réseau ayant eu lieu en 2024 est également [disponible en replay](../../talk/2024-10-14-network-day/index.llms.md).
