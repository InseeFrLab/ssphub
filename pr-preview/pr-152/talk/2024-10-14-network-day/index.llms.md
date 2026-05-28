## Replay de la deuxième journée du SSPHub le 14 octobre 2024

Les sessions plénières de la journée du réseau sont disponibles ci-dessous:

Séquencement de la vidéo et *slides*

- **00:00-03:30**: Introduction de la journée par Romain Lesur

- **03:30-46:30**: *“Le blé vu du ciel : images satellitaires et prédiction des rendements agricoles à l’échelle de la parcelle”* (Service statistique ministériel du Ministère de l’Agriculture, de la souveraineté alimentaire et de la Forêt).

``` js
createButton(
  "https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/agriculture.pdf",
  "Télécharger les slides du SSM Agriculture"
)
```

- **46:30-83:00**: *“Identifier et classer les causes de décès en automatisant le traitement des certificats en langage naturel”* (CépiDC, Inserm)

``` js
createButton(
  "https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/cepidc.pdf",
  "Télécharger les slides du CépiDC"
)
```

- **86:00-123:00**: *Keynote* de Pascal Rivière (chef de l’Inspection générale de l’Insee) *“Data science et statistique publique : contexte institutionnel et évolutions”*

- **123:00-164:00**: *“Extraction automatisée de tableaux dans des PDF pour la construction de statistiques d’entreprises”* (Insee)

``` js
createButton(
  "https://ssplab.pages.lab.sspcloud.fr/table-extraction-evaluation/#/title-slide",
  "Voir les slides de l'Insee"
)
```

- **164:00-205:00**: *“Scraper et retravailler les offres d’emploi en ligne pour permettre des analyses fines du marché du travail, le projet JOCAS”* (Dares: Service statistique ministériel du Ministère du Travail et de l’Emploi)

``` js
createButton(
  "https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/jocas.pptx",
  "Télécharger les slides de la DARES"
)
```

- **A partir de 205:00**: *Keynote* de Pierre Etienne Devineau (ex-DINUM) sur les enjeux rencontrés par le projet Albert autour de l’entraînement et de la mise en production de grands modèles de langage (LLM) francophones.

``` js
createButton(
  "https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/albert.pptx",
  "Télécharger les slides de la keynote"
)
```

Quelques photos de l’événement:

[![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img1.jpg)](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img1.jpg "Figure 1: ")

[![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img2.jpg)](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img2.jpg "Figure 1: ")

[![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img3.jpg)](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img3.jpg "Figure 1: ")

[![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img4.jpg)](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img4.jpg "Figure 1: ")

[![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img5.jpg)](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img5.jpg "Figure 1: ")

[![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img6.jpg)](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img6.jpg "Figure 1: ")

Figure 1: [![](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img7.jpg)](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2024-10-14-network/img7.jpg "Figure 1: ")

Les *slides* des différentes présentations peuvent être téléchargées ⬆️

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

Rappel du programme de la journée

- **9h30-10h**: **Accueil**, moment de convivialité autour d’un café.
- **10h-11h30**: **Retours d’expérience** de projets innovants autour de la classification de textes ou d’images :
  - Le blé vu du ciel : images satellitaires et prédiction des rendements agricoles à l’échelle de la parcelle (SSM Agriculture) ;
  - Identifier et classer les causes de décès en automatisant le traitement des certificats en langage naturel (CépiDC, Inserm).
- **11h30-12h15**: **Atelier de réflexion** autour des applications des méthodes de classification de textes ou d’images sur les données des \* participants.
- **12h15-14h**: **Pause déjeuner**, moment de convivialité.
- **14h-14h30**: Pascal Rivière (Chef de l’inspection générale de l’Insee) interviendra sur le thème **“Data science et statistique publique : contexte institutionnel et évolutions”**.
- **14h30-16h**: **Retours d’expérience** de projets faisant intervenir un processus innovant d’extraction de données :
  - Extraction automatisée de tableaux dans des PDF pour la construction de statistiques d’entreprises (Insee) ;
  - Scraper et retravailler les offres d’emploi en ligne pour permettre des analyses fines du marché du travail, le projet JOCAS (Dares, SSM Travail) ;
- **16h-16h30**: **Pause**, moment de convivialité.
- **16h30-17h30**: ***Keynote*** par Pierre Etienne Devineau (Ministères sociaux) et Léo Guillaume (Dinum). Les enjeux rencontrés par le projet Albert autour de l’entraînement et de la mise en production de grands modèles de langage (LLM) francophones.
- **17h30-19h30**: **Pot**, moment de convivialité.

Pour toute information : <ssphub-contact@insee.fr>

📺️ La première journée du réseau ayant eu lieu en 2023 est également [disponible en replay](../../talk/2023-ssphubday/index.llms.md).
