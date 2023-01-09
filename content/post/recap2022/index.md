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
les réseaux sociaux pour synthétiser l'activité de leurs utilisateurs.

Cette *newsletter* un peu spéciale propose un retour sur la première année du réseau des
data scientists de la statistique publique qui existe
de manière informelle depuis mars et de manière officielle depuis septembre. 

Elle permet aussi d'illustrer le potentiel d'outils qui ont été présentés
dans la [rétrospective de l'année 2022](https://ssphub.netlify.app/post/retrospective2022/).
Les principaux ingrédients qui ont été ici utilisés, et qui avaient été mentionnés dans la 
première partie de la rétrospective, sont `Observable`, `Quarto` et `DuckDB`. Les données
sont stockées sur le système de stockage `S3` du `SSPCloud`.


<div class="alert alert-info" role="alert">
<h3 class="alert-heading"><i class="fa-solid fa-comment"></i> Note</h3>

Les 

</div>




# L'année du réseau

Le réseau comporte deux canaux de communication: une liste de diffusion mail
et un canal de discussions instantanées.
Intéressons nous d'abord à la liste de diffusion mail !

<div id="observablehq-evolution-bbfd8ffe"></div>

Pendant l'année 2022, **7 _newsletters_** ont été diffusées par mail.
Chacune a permis d'augmenter sensiblement le nombre de personnes dans la liste de diffusion. 
A la fin de l'année, il y avait __312 inscrits__[^1] dans la liste de diffusion. 

Le réseau a organisé __trois événements__ pendant l'année 2022. D'abord, avant l'été, 
deux _open hours_ ont eu lieu. Cet événement informel prenant la forme
de retour d'expérience a été l'occasion de discussions stimulantes 
autour de d'usage de la _data science_ pour l'administration.
En novembre, l'[événement autour d'`Observable`](/talk/presentation-dobservable-par-nicolas-lambert/)
animé par [Nicolas Lambert](https://observablehq.com/@neocartocnrs)
a réuni près de 50 personnes. 

[^1]: Les actions de communication du mois de janvier
ont permis d'augmenter sensiblement
le nombre de personnes dans cette liste. Une occasion
idéale pour une autre rétrospective quantitative. 

# Répartition des modes d'accès au réseau

<iframe width="100%" height="529" frameborder="0"
  src="https://observablehq.com/embed/@linogaliana/2022-year-recap-data-scientists-network?cells=repartition"></iframe>

# Composition du réseau

<div id="observablehq-treemap_network-81108356"></div>

# Évolution de la composition du réseau

<div id="observablehq-grid-bbfd8ffe"></div>


# Programme 10%

<iframe width="100%" height="967" frameborder="0"
  src="https://observablehq.com/embed/@linogaliana/2022-year-recap-data-scientists-network?cells=containeur_github"></iframe>


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
  if (name === "evolution") return new Inspector(document.querySelector("#observablehq-evolution-bbfd8ffe"));
  if (name === "grid") return new Inspector(document.querySelector("#observablehq-grid-bbfd8ffe"));
});
</script>