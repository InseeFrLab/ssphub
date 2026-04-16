## Christophe Dervieux, "`Quarto` : Une évolution de `R Markdown` pour des travaux statistiques reproductibles"

**2 mai (15h - 16h30)**

``` js
html`${slides_button}`
```

``` js
slides = "https://cderv.github.io/2024-quarto-evolution-rmd/#/title-slide"
```

``` js
slides_button = html`<p class="text-center">
  <a class="btn btn-primary btn-lg cv-download" href="${slides}" target="_blank">
    <i class="fa-solid fa-file-arrow-down"></i>&ensp;Voir les slides
  </a>
</p>`
```

# Quarto: Pour des travaux scientifiques reproductibles

Une évolution de R Markdown

Christophe Dervieux

Posit PBC

5 février 2024

# Qu’est-ce que Quarto ?

*Quarto est la nouvelle génération de R Markdown. Il unifie et étend **rmarkdown**, le et son écosytème.*

## Quarto …

…est un nouveau système de publication scientifique et technique à code source ouvert ([MIT](https://deploy-preview-1093--mystifying-jepsen-fa4396.netlify.app/license.html)).

- Edition: Markdown via [Pandoc](https://pandoc.org) avec de nombreuses améliorations
- Programmation : Python, R, Julia, Observable JS, …
- Publication : Documents, présentations, sites web, livres, …

Illustration de la présentation “Hello, Quarto” de Julia Lowndes et Mine Çetinkaya-Rundel, présentée lors de la conférence RStudio 2022. Illustré par Allison Horst.

## Avec Quarto…

… vous pouvez “tisser” ensemble du texte narratif et du code pour produire des publications au formats (HTML, PDF, DOCX, …) et formes multiples (documents, pages Web, billets de blog, livres et bien plus encore.

*comme R Markdown…*

mais pas *juste comme*, car il y a plus que ça…

## Quarto …

**unifie** + **étend** l’écosystème R Markdown

## Quarto …

**unifie** + **étend** l’écosystème R Markdown

**unifie** pour les connaisseurs de R Markdown

## Quarto …

**unifie** + **étend** l’écosystème R Markdown

**unifie** pour les connaisseurs de R Markdown

**étend** pour les personnes qui ne connaissent pas R Markdown

# Pourquoi Quarto ?

Un peu d’histoire

## Les origines

- Projet open source sponsorisé par Posit, PBC.
- 10 ans d’expérience avec R Markdown ont convaincus que les idées de base étaient solides.
- Le nombre de langages et de moteurs d’exécution utilisés pour le discours scientifique est très large.
- Quarto est une réimagination de R Markdown qui est fondamentalement multi languages de programmation et multi moteurs de calculs.

## Objectif: Publication avec données calculées

- Documents qui intègrent le code source nécessaire à leur production
- “*Notebook*” ou texte brut
- Automatisation et reproductibilité

Issue de *Nature*, [“1,500 scientists lift the lid on reproducibility”](https://www.nature.com/articles/533452a)

## Objectif: Markdown pour la publication scientifique

Simplifier l’utilisation de markdown pour le scientifique. Aujourd’hui une bonne alternative mais trop complexe trop vite

## Objectif : Une source unique pour la publication

<https://coko.foundation/articles/single-source-publishing.html>

## Alors, pourquoi un nouveau système ?

- Le nombre de langages et de moteurs d’exécution utilisés pour le discours scientifique est très large (et l’écosystème Jupyter en particulier est extraordinairement populaire).
- Quarto est à la base multi-languages et multi-exécution (supportant Knitr, Jupyter, et Observable aujourd’hui et potentiellement d’autres moteurs demain).
- D’un autre côté, R Markdown est fortement lié à R ce qui limite le nombre de personnes qui peuvent en bénéficier.
- Quarto est la tentative de Posit d’apporter 10 ans d’expérience de R Markdown à tous !

# Comment utiliser Quarto ?

*Ce n’est pas un package R comme R Markdown…*

## Une nouvelle fois : Qu’est-ce que Quarto ?

Quarto est une interface de ligne de commande (CLI) qui transforme les formats de texte brut (`.qmd`, `.rmd`, `.md`) **OU** les formats mixtes (`.ipynb`/Jupyter notebook) en rapports statiques PDF/Word/HTML, livres, sites web, présentations et plus encore.

``` numberSource
$ quarto --help

  Usage:   quarto
  Version: 1.4.553

  Description:

    Quarto CLI

  Options:

    -h, --help     - Show this help.
    -V, --version  - Show the version number for this program.

  Commands:

    render     [input] [args...]     - Render files or projects to various document types.
    preview    [file] [args...]      - Render and preview a document or website project.
    serve      [input]               - Serve a Shiny interactive document.
    create     [type] [commands...]  - Create a Quarto project or extension
    use        <type> [target]       - Automate document or project setup tasks.
    add        <extension>           - Add an extension to this folder or project
    update     [target...]           - Updates an extension or global dependency.
    remove     [target...]           - Removes an extension.
    convert    <input>               - Convert documents to alternate representations.
    pandoc     [args...]             - Run the version of Pandoc embedded within Quarto.
    typst      [args...]             - Run the version of Typst embedded within Quarto.
    run        [script] [args...]    - Run a TypeScript, R, Python, or Lua script.
    install    [target...]           - Installs a global dependency (TinyTex or Chromium).
    uninstall  [tool]                - Removes an extension.
    tools                            - Display the status of Quarto installed dependencies
    publish    [provider] [path]     - Publish a document or project to a provider.
    check      [target]              - Verify correct functioning of Quarto installation.
    help       [command]             - Show this help or the help of a sub-command.
```

# Moteurs de calculs disponibles

- Knitr
- Jupyter
- Observable JS
- Julia (en test dans v1.5 pre-release seulement)
- Et d’autres possible dans le futur…

## Knitr

Pour R, Quarto utilise toujours Knitr sous le capot. Par conséquent, ***la grande majorité des fichiers Rmd existants*** peuvent être rendus avec Quarto sans modification.

La syntaxe standard des options de blocs a changé:

```` markdown
```{r}
#| echo: false
#| fig-cap: "Cars"
plot(cars)
```
````

## Knitr

## Jupyter — ipynb

Le moteur Jupyter prend en charge l’utilisation de Python, Julia, R et de tout autre langage doté d’un noyau Jupyter.

Jupyter supporte deux formats de fichiers d’entrée :

- Carnets de notes traditionnels (`.ipynb`)
- Markdown avec morceaux (`.qmd`)

Hello Jupyter: <https://quarto.org/#hello-quarto>

ex: Kernel multi-language

## Jupyter — ipynb

Vous pouvez également transformer les notebooks Jupyter (fichiers `.ipynb`) directement. A noter: aucune exécution n’a lieu par défaut.

Les notebooks conservent l’éxécution et Quarto va par défaut respecter cela

## Jupyter: Les outils

Aperçu côte à côte pour JupyterLab, VS Code, Emacs, etc :

``` bash
$ quarto preview notebook.ipynb
```

## Observable JS

Quarto inclut un support natif pour Observable JS, un ensemble d’améliorations apportées au JavaScript vanille créé par [Mike Bostock](https://en.wikipedia.org/wiki/Mike_Bostock) (également auteur de [D3](https://d3js.org/)).

Observable JS se distingue par son temps d’exécution réactif, particulièrement adapté à l’exploration et à l’analyse interactives des données.

Demo: <https://quarto.org/docs/interactive/ojs/#example>

## 

# Les formats Quarto

Comme R Markdown, on peut produire différents formats de documents.

## De multiples formats…

- `format: html`
- `format: pdf`
- `format: typst`

- `format: docx`
- `format: pptx`
- `format: revealjs`

- `format: gfm`
- …

``` yaml
format: 
  html:
    code-fold: true
  pdf:
1    lof: true
2toc: true
```

1  
`lof` = *List Of Figures*

2  
Exemple d’option commune aux formats HTML et PDF

## …basée sur Pandoc

## 

# Une syntaxe commune coté source

Les fonctionnalités essentielles sont exprimées de la même manière dans tous les formats :

- Pliage du code en HTML (*code folding*)

- Onglets

- Thèmes pour le style

## Unification par rapport à R Markdown

L’écosystème R Markdown a été construit sur près d’une décennie - ce qui a entraîné de nombreuses incohérences et duplications.

##### Librairies

- tufte
- rticles
- revealjs
- xaringan
- bookdown
- blogdown
- distill

##### Fonctionnalités (*Terminologie anglaise de la doc*)

- Floating TOC
- Code folding / copying
- Syntax highlighting
- Page layout
- Theming
- Tabsets
- Section anchors

Certaines fonctionnalités et/ou formats nécessitent des libraires R spécifiques et une syntaxe particulière. Avec Quarto, ces fonctionnalités sont intégrées dans le système de base.

## Code folding & bouton de copy

Code

```` markdown
```{r}
#| code-fold: true

library(ggplot2)
dat <- data.frame(cond = rep(c("A", "B"), each=10),
                  xvar = 1:20 + rnorm(20,sd=3),
                  yvar = 1:20 + rnorm(20,sd=3))

ggplot(dat, aes(x=xvar, y=yvar)) +
    geom_point(shape=1) + 
    geom_smooth() 
```
````

## Tabsets

## R

## Python

Tabset syntax: <https://quarto.org/docs/output-formats/html-basics.html#tabsets>

## Appliquer un style avec des thèmes

Système partagé de création de thèmes (basé sur `.scss` de [SASS](https://sass-lang.com/)) pour tous les formats de sortie HTML (partagé par les diapositives HTML et RevealJS, extensible pour fonctionner plus largement). Basé sur les variables de base définies par [bslib](https://rstudio.github.io/bslib/). ([Exemple de thème Quarto](https://quarto.org/docs/output-formats/html-themes.html#theme-options))

``` scss
/*-- scss:defaults --*/
$h2-font-size:          1.6rem !default;
$headings-font-weight:  500 !default;

$custom-color: blue;

/*-- scss:rules --*/
h1, h2, h3, h4, h5, h6 {
  text-shadow: -1px -1px 0 rgba(0, 0, 0, .3);
  color: $custom-color;
}
```

**bslib** était seulement supporté via les thèmes bootstrap 5 dans `html_document()`

# Nouvelles fonctionnalités

(*Terminologie anglaise de la doc*)

- Cross references
- Advanced page layout
- Figure/layout panels
- Callouts

- Diagrams
- Extensions
- YAML intelligence
- Publishing

## Exemple: Les références aux contenus

Pour les figures, tableaux, équations, sections, théorèmes, et même des éléments personnalisés.

- Avec la syntaxe [markdown brute](https://quarto.org/docs/authoring/cross-references.html#subfigures)

- Avec les options pour [les cellules éxécutés avec Knitr or Jupyter](https://quarto.org/docs/authoring/cross-references.html#computations)

## 

## 

## Mise en page avancée

Fonctionnalités avancées de mise en page inspirées de Tutfe, Distill et Hugo Prose.

- Figures et tableaux couvrant toute la page
- Utilisation de marges pour les figures, les équations, les légendes, les apartés, les notes de bas de page et les citations
- Affichage/masquage réactif de la navigation sur le site et de la table des matières.
- Exemples : [HTML](https://quarto-dev.github.io/quarto-gallery/page-layout/tufte.html), [PDF](https://quarto-dev.github.io/quarto-gallery/page-layout/tufte.pdf)

Cliquez sur le lien pour voir l’exemple

## Figure/Layout Panels

- Disposition au choix des figures et des tables (similaire à [cowplot](https://wilkelab.org/cowplot/articles/plot_grid.html) et [patchwork](https://patchwork.data-imaginist.com/))
- Fonctionne également pour les cellules de code qui produisent des figures et des tableaux. [Exemple](https://quarto.org/docs/authoring/figures.html#computations)
- Une syntaxe abrégée (`layout-ncol` ou `layout-nrow`) est disponible pour les cas simples.
- Peut cibler un contenu arbitraire, y compris des équations, des listes à puces, etc.

``` markdown
::: {layout="[[40,-20,40], [100]]"}
![Surus](surus.png)
![Hanno](hanno.png)
![Lin Wang](lin-wang.png)
:::
```

## Callouts

Fonctionne dans les différents formats: [HTML](https://quarto-dev.github.io/quarto-gallery/page-layout/tufte.html#references), [PDF](https://quarto-dev.github.io/quarto-gallery/page-layout/tufte.pdf), MS Word, et ePub

``` markdown
::: {.callout-note}
Note that there are five types of callouts, including:
`note`, `tip`, `warning`, `caution`, et `important`.
:::
```

## Diagrams

Quarto supporte nativement l’intégration des diagrammes [Mermaid](https://mermaid-js.github.io/mermaid/#/) et [Graphviz](https://graphviz.org/).

```` markdown
```{mermaid}
%%| output-location: column
flowchart TD
  A[Hard edge] --> B(Round edge)
  B --> C{Decision}
  C --> D[Result one]
  C --> E[Result two]
```
````

## Ajout de fonctionnalités: Quarto Extensions

Liste des extensions existantes à <https://quarto.org/docs/extensions/>

- Les [Shortcodes](https://quarto.org/docs/extensions/shortcodes.html) sont des directives markdown spéciales qui génèrent divers types de contenu. Par exemple, pour intégrer des vidéos dans un document :

  ``` markdown
  {{< video https://www.youtube.com/embed/wo9vZccmqwc >}}
  ```

- Les [Filtres](https://quarto.org/docs/extensions/filters.html) sont un outil flexible et puissant pour introduire de nouveaux comportements globaux et/ou de nouveaux comportements de rendu du texte. Par exemple,

  ``` yaml
  filters: [webr]
  ```

- Les [Formats](https://quarto.org/docs/extensions/formats.html) permettent de créer de nouveaux formats de sortie en regroupant des options de document, des modèles, des feuilles de style et d’autres contenus. Par exemple, un article pour le journal “Association of Computing Machinery (ACM)”

  ``` yaml
  format: acm-pdf
  ```

## YAML Intelligence

Un ajout important pour l’expérience utilisateur:

- Complétion du code YAML pour les fichiers de configuration, les pages de garde et les options de morceaux
- Diagnostic en temps réel et suppression des erreurs au moment du rendu en cas de YAML invalide

#### Completion

#### Diagnostics

## Publier ses productions

#### <https://quarto.org/docs/publishing/>

Commande intégrée `quarto publish` qui cible un grand nombre de services:

``` bash
❯ quarto publish -h

Usage:   quarto publish [provider] [path]
Version: 99.9.9

Description:

  Publish a document or project to a provider.

  Available providers include:

   - Quarto Pub (quarto-pub)
   - GitHub Pages (gh-pages)
   - Posit Connect (connect)
   - Posit Cloud (posit-cloud)
   - Netlify (netlify)
   - Confluence (confluence)
   - Hugging Face Spaces (huggingface)

  Accounts are configured interactively during publishing.
  Manage/remove accounts with: quarto publish accounts
```

# Advanced Formats

- Sites web (*Website*)

- Livres (*Books*)

- Blogs (*Blogs & Listings*)

- Présentations (*Presentations*)

- Articles de journaux (*Journals Articles*)

## Quarto Websites

- Profondeur et organisation arbitraires du contenu
- Navigation à plusieurs niveaux (barre de navigation / barre latérale / hybride)
- Recherche en texte intégral (côté client ou Algolia)
- Fonctionnalité de “gel” (*freeze*) des contenus exécutés par les moteurs.
- Exemple : <https://quarto.org> et plus encore dans la [gallerie](https://quarto.org/docs/gallery/#websites)

``` yaml
project:
  type: website

website:
  title: "today"
  favicon: logo.png
  navbar:
    left:
      - href: index.qmd
        text: Home
      - about.qmd

format:
  html:
    theme: cosmo
    css: styles.css
    toc: true
    
freeze: auto
```

## Quarto Books

- Hérite des fonctionnalités des sites web Quarto (navigation, recherche, etc.)

- Prise en charge des références croisées entre les chapitres

- Formats de sorties variés : HTML, PDF, MS Word et ePub.

- Exemples : [Galerie](https://quarto.org/docs/gallery/#books)

``` yaml
project:
  type: book

book:
  title: "mybook"
  author: "Jane Doe"
  date: "8/18/2021"
  chapters:
    - index.qmd
    - intro.qmd
    - references.qmd

bibliography: references.bib

format:
  html: default
  pdf: default
  epub:
    cover-image: cover.png
```

## 

## 

## Quarto Presentations

<https://quarto.org/docs/presentations/revealjs/demo/>

- Basé sur une version personnalisée de RevealJS :
  - Arrière-plans d’images, de vidéos et d’iframes
  - Impression PDF
  - Vue pour les notes de présentations
  - Système d’extensions via les “plugins” RevealJS
- De nombreuses fonctionnalités inspirées de [xaringanExtra](https://pkg.garrickadenbuie.com/xaringanExtra/#/?id=xaringanextra) :
  - Tableau noir / dessin sur les diapositives
  - Multicast (diapositives synchronisées présentateur / spectateur)
  - Tonalité des diapositives (pour l’accessibilité)
  - Positionnement absolu des éléments de la diapositive

## Quarto Journals

### <https://quarto.org/docs/journals/>

Possibilité de créer des formats personnalisés conçu pour faciliter la création d’articles destinés à être publiés dans des revues professionnelles :

- La possibilité d’adapter de manière flexible les modèles LaTeX natifs fournis par les revues pour les utiliser avec Pandoc.

- L’utilisation de contenu en ligne et en bloc pour appliquer le formatage (ce qui permet le ciblage par CSS pour la sortie HTML et les macros/environnements LaTeX pour la sortie PDF).

- Un schéma normalisé pour les auteurs et les affiliations afin de pouvoir exprimer ces données une fois pour toutes et qu’elles soient ensuite automatiquement formatées selon les styles requis par les différentes revues.

- L’utilisation du Citation Style Language (CSL) pour automatiser le formatage des citations et des bibliographies selon le style requis par les différentes revues.

Example: <https://quarto-journals.github.io/jss/>

# L’outillage autour de Quarto

- Quarto CLI

- Intégration avec RStudio IDE

- Extension VS Code

- Extension Jupyter Lab

- Support par les éditeurs de texte

- Éditeur visuel (dans RStudio IDE et VS Code)

## Learning More

#### Slides: <https://cderv.github.io/2024-quarto-evolution-rmd>

- Bien démarrer: <https://quarto.org/docs/get-started/>

- Guide utilisateur: <https://quarto.org/docs/guide/>

- Découverte de l’écosystème: <https://github.com/mcanouil/awesome-quarto>

- Présentation existantes:

  - [Keynote: Reimagine + Collaborate + Share with Quarto](https://www.rstudio.com/conference/2022/keynotes/collaborate-with-quarto/)
  - [Quarto for R Markdown users](https://www.rstudio.com/conference/2022/talks/quarto-for-rmarkdown-users/)
  - [These are a few of my favorite things (about Quarto presentations)](https://www.rstudio.com/conference/2022/talks/my-favorite-things-quarto-presentations/)
  - [Literate Programming With Jupyter Notebooks and Quarto](https://www.rstudio.com/conference/2022/talks/literate-programming-quarto/)
  - [Websites & Books & Blogs, oh my! Creating Rich Content with Quarto](https://www.rstudio.com/conference/2022/talks/sessions/quarto-deep-dive/websites-books-blogs-quarto/)

#### Questions?

A suivre sur <https://cderv.github.io/2024-quarto-evolution-rmd/> et <https://quarto.org>
