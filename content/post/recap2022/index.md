---
title: Rétrospective de l'année du réseau
subtitle: Une rétrospective interactive
toc: true
summary: |
  TO BE COMPLETED
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


<div id="observablehq-evolution-bc310100"></div>



<div id="observablehq-viewof-input_date-bc310100"; style="background-color: white !important; color: black;"></div>
<div id="observablehq-grid-bc310100"></div>

<div id="observablehq-repartition-bc310100"></div>


<div id="observablehq-treemap_network-81108356"></div>



<style media="screen">

  #observablehq-treemap_network-81108356 .has-title {
    fill: black;
  }

  .slidecontainer {
    width: 100%;
  }

  .slider {
    -webkit-appearance: none;
    width: 100%;
    height: 15px;
    border-radius: 5px;
    background: #d3d3d3;
    outline: none;
    opacity: 0.7;
    -webkit-transition: .2s;
    transition: opacity .2s;
  }

  .slider:hover {
    opacity: 1;
  }

  .slider::-webkit-slider-thumb {
    -webkit-appearance: none;
    appearance: none;
    width: 25px;
    height: 25px;
    border-radius: 50%;
    background: #4CAF50;
    cursor: pointer;
  }

  .slider::-moz-range-thumb {
    width: 25px;
    height: 25px;
    border-radius: 50%;
    background: #4CAF50;
    cursor: pointer;
  }

  svg {
    background-color: white !important;
    color: black !important;
  }
  
  figure figcaption {
    /* text-align: center; */
    text-align: left;
  }
.fullwidth {
  width: 100vw;
  position: relative;
  left: 50%;
  right: 50%;
  margin-left: -50vw;
  margin-right: -50vw;
}  
</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@observablehq/inspector@5/dist/inspector.css">
<script type="module">
import {Runtime, Inspector} from "https://cdn.jsdelivr.net/npm/@observablehq/runtime@5/dist/runtime.js";
import define from "https://api.observablehq.com/@linogaliana/2022-year-recap-data-scientists-network.js?v=3";
new Runtime().module(define, name => {
  if (name === "evolution") return new Inspector(document.querySelector("#observablehq-evolution-bc310100"));
  if (name === "viewof input_date") return new Inspector(document.querySelector("#observablehq-viewof-input_date-bc310100"));
  if (name === "grid") return new Inspector(document.querySelector("#observablehq-grid-bc310100"));
  if (name === "repartition") return new Inspector(document.querySelector("#observablehq-repartition-bc310100"));
  if (name === "treemap_network") return new Inspector(document.querySelector("#observablehq-treemap_network-81108356"));
  return ["plt1","subset","plt2","plt3","array2"].includes(name);
});
</script>

