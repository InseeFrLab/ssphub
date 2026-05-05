# Présentation de l’atelier

Le SSM Agriculture a mené un PoC pour que des LLM génèrent des commentaires sur l’évolution d’indicateurs agricoles à partir de graphiques. Si l’approche semblait prometteuse pour produire un premier jet que les analystes pourraient ensuite affiner, un premier point d’étape a mis en évidence des limites importantes (erreurs fréquentes sur les valeurs numériques, inversions de tendances, comparaisons incorrectes entre territoires …).

Dans le cadre d’un travail de recherche, un étudiant de l’Ecole polytechnique a travaillé à rendre plus robuste cette expérimentation sous la supervision d’une chercheuse de l’INRIA. Il a ainsi mis en place un cadre d’analyse pour quantifier les erreurs et proposé des améliorations pour répondre aux défauts identifiés.

**Ils nous ont présenté leurs travaux le mardi 14 avril à 14h**, en [visio](https://visio.numerique.gouv.fr/wvv-cwou-ugn) et en présentiel à l’Insee (en salle 4C-458). Tout le monde est le bienvenu !

# Replay de l’atelier

# Support de présentation

Your browser does not support PDFs. [Download the PDF instead.](https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2026-04-ssmagri/20260414_SSPHub_ComLLM_ALS.pdf)

``` js
createButton(
  "https://minio.lab.sspcloud.fr/ssphub/diffusion/website/2026-04-ssmagri/20260414_SSPHub_ComLLM_ALS.pdf",
  "Télécharger les slides en pdf"
)
```

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
