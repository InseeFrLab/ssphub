---
title: Polars, une alternative fraîche à Pandas
subtitle: Winter is coming

# Summary for listings and search engines
summary: Polars, une alternative moderne et fluide à Pandas


# Link this post with a project
projects: []

# Date published
date: '2023-02-10T00:00:00Z'

# Date updated
lastmod: '2023-02-10T00:00:00Z'

# Is this an unpublished draft?
draft: false

# Show this page in the Featured widget?
featured: false

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  focal_point: ''
  placement: 2
  preview_only: false

authors:
  - romaintailhurat

tags:
  - Python
  - Pandas
  - Polars
  - Data wrangling

categories:
  - Python
  - Data wrangling

toc: true
---

> Credit Par File:ZL-Ursus-maritimus.pngFile:Polar bear range map.png, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=17286219

Le concept de [_dataframe_](https://www.databricks.com/glossary/what-are-dataframes) est central pour le _data scientist_ qui manipule des données tabulaires, et en Python la solution préférentielle et historique est [Pandas](https://pandas.pydata.org/). Mais un petit nouveau apporte un vent de fraîcheur dans le domaine : [Polars](https://www.pola.rs/).

Ses atouts ? D'excellentes performances et une expressibilité qui le rapproche d'un [dplyr](https://dplyr.tidyverse.org/).

# Performances

Les _benchmarks_ disponibles [sont clairs](https://h2oai.github.io/db-benchmark/) : Polars va vite !

![Benchmark H2O](polars-benchmark-short.png)

Plusieurs éléments expliquent cette rapidité. En premier lieu, Polars est conçu pour optimiser les requêtes du développeur : grâce au mode _lazy_ ("paresseux"), on laisse la possibilité au moteur d'analyser ce qu'on souhaite faire pour proposer une exécution optimale (pour la lecture comme pour la transformation des jeux de données).

```python
import polars as pl

# Création d'une requête
q = (
    pl.scan_csv("iris.csv") # Lecture lazy
    .filter(pl.col("sepal_length") > 5)
    .groupby("species")
    .agg(pl.all().sum())
)

# Exécution de la requête
df = q.collect()
```

On peut toujours lire de manière plus directe (en mode _eager_, "impatient") en utilisant la fonction `read_csv`, et ensuite appliquer des transformations optimisables en glissant habilement `lazy` :

```python
df = pl.read_csv("iris.csv")

df_res = df.lazy() # ←  ici :)
  .filter(pl.col("sepal_length") > 5)
  .groupby("species")
  .agg(pl.all().sum())
  .collect()
```

Par ailleurs, Polars parallélise les traitements dès que cela est possible, notamment dans le cas d'aggrégation.

![Parallélisation](polars-split-parallel-apply-combine.svg)

Enfin, le choix d'utiliser à la fois le format de représentation en mémoire [Arrow](https://arrow.apache.org/) et le langage [Rust](https://www.rust-lang.org/fr) pour le coeur de la bibliothèque n'est pas étranger à cette performance.

Si Polars travaille vite, il est aussi capable de lire naturellement des jeux de données hors des limites de la mémoire de l'ordinateur, grâce à [sa capacité de lire en flux](https://www.youtube.com/watch?v=3-C0Afs5TXQ) (a.k.a _streaming_)

```python
# La même requête que tout à l'heure va lire le fichier "en flux"
df = q.collect(streaming=True)
```

Et il lit nativement les fichiers Parquet !

# API fluide

C'est un reproche régulièrement fait à Pandas : la syntaxe de manipulations des données est parfois complexe ou peu lisible, et les choix d'écriture ne sont pas transparents du point de vue des performances.

L'API proposée par Polars est à la fois expressive et transparente. Un exemple d'exploitation de la BPE :

```python
df.lazy()
  .filter(
    pl.col("TYPEQU") == "B316"
  )
  .groupby("DEP")
  .agg(
    pl.count().alias("NB_STATION_SERVICE")
  )
  .collect()
```

On retrouve une sémantique d'opérations de haut niveau qui s'enchaînent à la manière de [ce que l'on peut faire en `dplyr`](https://www.book.utilitr.org/03_fiches_thematiques/fiche_tidyverse#comment-utiliser-lop%C3%A9rateur-pipe-avec-le-tidyverse). ;)

# D'autres concurrents

Pandas et Polars ne sont pas seuls dans le grand zoo de la manipulation de données en Python : des solution comme [Vaex](https://github.com/vaexio/vaex) ou [Dask](https://github.com/dask/dask) ont des arguments à faire valoir (et que l'on pourra explorer lors de prochains posts).

# Ressources

- notebook sur le datalab
- https://www.rhosignal.com/tags/polars/
- https://kevinheavey.github.io/modern-polars/