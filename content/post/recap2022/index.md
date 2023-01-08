---
title: L'année 2022 dans le monde de la data science
subtitle: Rétrospective d'une année riche
toc: true
summary: |
  La _data science_ a beaucoup fait parler d'elle en 2022,
  notamment du fait des deux coups
  médiatiques d'[openAI](https://openai.com/), à savoir [`Dall-E`](https://openai.com/dall-e-2/)
  et [`chatGPT`](https://openai.com/blog/chatgpt/),
  qui ont créé un réel engouement au delà de la sphère
  des praticiens de la donnée. Cet article 
  ouvre une série de _post_ rétrospectifs sur l'année 2022
  pour faire un bilan de l'actualité de la _data science_
  et du réseau. 
# Link this post with a project
projects: []

# Date published
date: '2022-12-31T00:00:00Z'

# Date updated
lastmod: '2022-12-31T00:00:00Z'

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
  - retrospective
  - observable
  - quarto
  - deep learning
  - infolettre

categories:
  - Insee
  - Retrospective
  - Infolettre
---


*Vous désirez intégrer la liste de diffusion ? Un mail à <ssphub-contact@insee.fr> suffit*

La [rétrospective de l'année 2022](https://ssphub.netlify.app/post/retrospective2022/) promettait
une version plus personnalisée, inspirée des visualisations proposées par
plusieurs applications pour synthétiser l'activité de leurs utilisateurs.

Cette *newsletter* permet aussi d'illustrer le potentiel d'outils qui ont été présentés
dans la [rétrospective de l'année 2022](https://ssphub.netlify.app/post/retrospective2022/).
Les principaux ingrédients ici utilisés sont `Observable`, `Quarto` et `DuckDB`. Les données
sont stockées sur le système de stockage `S3` du `SSPCloud`.

<div>
  <div id="evolution_reseau"></div>
</div>


<script type="module">
      import {Runtime, Inspector} from "https://cdn.jsdelivr.net/npm/@observablehq/runtime@4/dist/runtime.js";
      import notebook from "https://api.observablehq.com/@linogaliana/2022-year-recap-data-scientists-network@177.js?v=3";

      function render(_node, value) {
        if (!(value instanceof Element)) {
          const el = document.createElement("span");
          el.innerHTML = value;
          value = el;
        }
        if (_node.firstChild !== value) {
          if (_node.firstChild) {
            while (_node.lastChild !== _node.firstChild) _node.removeChild(_node.lastChild);
            _node.replaceChild(value, _node.firstChild);
          } else {
            _node.appendChild(value);
          }
        }
      }
      
      const renders = {
      	//"viewof season": "#viewof-season",
        "evolution_reseau": "#evolution_reseau",
      }

      
      const runtime = new Runtime();
      const main = runtime.module(notebook, name => {
        const selector = renders[name];
        if (selector) {
          return {fulfilled: (value) => render(document.querySelector(selector), value)}
        } else {
          return true;
        }
      });
      
</script>