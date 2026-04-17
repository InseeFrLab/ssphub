Ce guide présente quelques exemples d’utilisation des données du recensement de la population diffusées au format `Parquet`. Il s’agit d’une version HTML enrichissant le guide publié sur le site [insee.fr](https://www.insee.fr/fr/statistiques/7637890) pour les langages `Python` et avec des exemples interactifs pouvant être construits par le biais de `Quarto Markdown` et `Observable`.

L’ensemble des codes utilisés pour produire cette note est disponible sur le dépôt [`Github` InseeFrLab/exemples-recensement-parquet](https://github.com/InseeFrLab/exemples-recensement-parquet) au format [`Quarto Markdown`](https://quarto.org/).

Pour plus d’informations sur le format `Parquet`, dans un contexte de statistique publique, se référer à Dondon et Lamarche ([2023](#ref-dondon-lamarche-2023)). Pour un exemple sur la différence entre format `CSV` et `Parquet` illustré sur les données du recensement de la population, voir Mauvière ([2022](#ref-mauviere-2022)).

Ce guide propose d’utiliser [`DuckDB`](https://duckdb.org/) à travers plusieurs langages pour effectuer des traitements sur les fichiers détails du recensement. Par rapport à d’autres approches, [`DuckDB`](https://duckdb.org/) a été choisi pour son efficacité ainsi que pour son universalité[^1].

Afficher le dictionnaire des variables

Il est possible de rechercher dans la documentation des noms de variables ou des informations dans les descriptions. Lorsqu’une variable présente de nombreuses modalités, seules la première est la dernière sont retournées. Un exemple ci-dessous montre comment utiliser une requête SQL pour récupérer l’ensemble des valeurs d’une telle variable.

``` js
viewof unique_description_filter = Inputs.search(
  documentation, {
    placeholder: "Trouver une information dans la documentation"
  }
  )
```

``` js
table_filtre_description = Inputs.table(
  unique_description_filter,
  {
    header: {
      description_variable: "Description de la variable"
    }    
  }
)
```

``` js
documentation = db.query(`SELECT * FROM documentation_indiv`)
```

> **NOTE:**
>
> Ce *post* accompagne la mise à disposition des données du recensement de la population au format `Parquet` sur le site [insee.fr](https://www.insee.fr/fr/statistiques/7706119?sommaire=7637890).
>
> Il vise à fournir une expérience plus ergonomique et des exemples supplémentaires liés au langage `Javascript` au guide PDF disponible sur la page du site [insee.fr](https://www.insee.fr/fr/statistiques/7706119?sommaire=7637890).
>
> ⚠️ Cette page s’appuie sur l’exploitation de données qui sont préalablement téléchargées de manière automatique par le navigateur *web*. Celles-ci représentent une volumétrie autour de 1Go, ce qui peut nécessiter un certain temps en fonction de la bande passante. Une fois téléchargées, l’exploitation de ces données nécessite néanmoins beaucoup moins de ressources grâce à l’optimisation permise par `DuckDB`.

# Initialisation

Les données sont disponibles sur le site `data.gouv` aux adresses suivantes :

- [Fichier détail individuel](https://www.insee.fr/fr/statistiques/7706119?sommaire=7637890) ;
- [Fichier détail logement](https://www.insee.fr/fr/statistiques/7705908?sommaire=7637890).

Dans la suite de ce guide, il sera fait l’hypothèse pour `Python` et `R` que les données sont récupérées depuis les URL stables, enregistrées dans un même dossier et qu’il existe une variable *ad hoc* enregistrant ce chemin dans `Python` ou `R`. En ce qui concerne `Observable`, il est proposé d’utiliser directement l’URL de mise à disposition des fichiers.

## `Observable` via `Quarto`

Les URL stables de mise à dispositon des données seront directement renseignées dans la création de la base de données.

> **CAUTION:**
>
> En ce qui concerne `Observable`, il est proposé d’utiliser directement l’URL de mise à disposition des fichiers car l’extension `httpfs` est nativement intégrée à la librairie `DuckDB`, *a contrario* des clients `Python` et `R`.
>
> Ces jeux de données sont automatiquement téléchargés par le navigateur et mis en *cache* pour accélérer des utilisations ultérieures de la page. Le premier chargement de tous les tableaux et graphiques sur celle-ci peut ainsi prendre un peu plus de temps.

## `Python`

``` python
path_data = 'C:/MesDocuments/dossierpersonnel'
# remplacer par l'emplacement où sont stockées 
# les données
```

## `R`

``` r
path_data <- 'C:/MesDocuments/dossierpersonnel'
# remplacer par l'emplacement où sont stockées 
# les données
```

## `R (dbplyr)`

``` r
path_data <- 'C:/MesDocuments/dossierpersonnel'
# remplacer par l'emplacement où sont stockées 
# les données
```

Il est proposé, pour initialiser la connexion entre les données `Parquet` et le langage client (`Javascript`, `R` ou `Python`) d’utiliser des vues. Ceci permet de faire référence de manière répétée à la même source de données par le biais d’un alias (`table_logement` ou `table_individu`).

## `Observable` via `Quarto`

Dérouler pour découvrir le code `Observable` d’initialisation de la base de données avec `DuckDB`

```` markdown
```{ojs}
url_table_logement = "https://www.data.gouv.fr/fr/datasets/r/f314175a-6d33-4ee4-b5eb-2cb6c29df2c2"
url_table_individu = "https://www.data.gouv.fr/fr/datasets/r/c8e1b241-75fe-43e9-a266-830fc30ec61d"
url_doc_logement = "https://www.data.gouv.fr/fr/datasets/r/c274705f-98db-4d9b-9674-578e04f03198"
url_doc_individu = "https://www.data.gouv.fr/fr/datasets/r/1c6c6ab2-b766-41a4-90f0-043173d5e9d1"

renommage_documentation = `SELECT 
  COD_VAR AS nom_variable, 
  LIB_VAR AS description_variable, 
  TYPE_VAR AS type_variable, 
  COD_MOD AS code_modalite, 
  LIB_MOD AS description_modalite,
  LONG_VAR as longueur_variable`

db = {
  const configuredClient = await DuckDBClient.of();

  await configuredClient.query(`
    CREATE OR REPLACE VIEW table_individu 
    AS SELECT *
    FROM read_parquet('${url_table_individu}')`
  ) ;

  await configuredClient.query(`
    CREATE OR REPLACE VIEW table_logement 
    AS SELECT *
    FROM read_parquet('${url_table_logement}')`
  ) ;

  await configuredClient.query(`
    CREATE OR REPLACE VIEW documentation_logement
    AS ${renommage_documentation} FROM read_csv_auto('${url_doc_logement}', header=true)`
  ) ;
  
  await configuredClient.query(`
    CREATE OR REPLACE VIEW documentation_indiv
    AS ${renommage_documentation} FROM read_csv_auto('${url_doc_individu}', header=true)`
  ) ;

  return configuredClient
}
```
````

``` js
url_table_logement = "https://static.data.gouv.fr/resources/recensement-de-la-population-fichiers-detail-logements-ordinaires-en-2020-1/20231023-123618/fd-logemt-2020.parquet"
url_table_individu = "https://static.data.gouv.fr/resources/recensement-de-la-population-fichiers-detail-individus-localises-au-canton-ou-ville-2020-1/20231023-122841/fd-indcvi-2020.parquet"
url_doc_logement = "https://www.data.gouv.fr/fr/datasets/r/c274705f-98db-4d9b-9674-578e04f03198"
url_doc_individu = "https://www.data.gouv.fr/fr/datasets/r/1c6c6ab2-b766-41a4-90f0-043173d5e9d1"

renommage_documentation = `SELECT 
  COD_VAR AS nom_variable, 
  LIB_VAR AS description_variable, 
  TYPE_VAR AS type_variable, 
  COD_MOD AS code_modalite, 
  LIB_MOD AS description_modalite,
  LONG_VAR as longueur_variable`

db = {
  const configuredClient = await DuckDBClient.of();

  await configuredClient.query(`
    CREATE OR REPLACE VIEW table_individu 
    AS SELECT *
    FROM read_parquet('${url_table_individu}')`
  ) ;

  await configuredClient.query(`
    CREATE OR REPLACE VIEW table_logement 
    AS SELECT *
    FROM read_parquet('${url_table_logement}')`
  ) ;
  
  await configuredClient.query(`
    CREATE OR REPLACE VIEW documentation_indiv
    AS ${renommage_documentation} FROM read_csv_auto('${url_doc_individu}', header=true)`
  ) ;

  await configuredClient.query(`
    CREATE OR REPLACE VIEW documentation_logement
    AS ${renommage_documentation} FROM read_csv_auto('${url_doc_logement}', header=true)`
  ) ;

  return configuredClient
}
```

## `Python`

``` python
import duckdb
import os

if not os.path.isdir(path_data):
    raise ValueError("path_data n'est pas un répertoire valide.")

duckdb.sql(f'''
  CREATE OR REPLACE VIEW table_individu
  AS SELECT * FROM read_parquet("{path_data}/FD_INDCVI_2020.parquet")
'''
)

duckdb.sql(f'''
  CREATE OR REPLACE VIEW table_logement
  AS SELECT * FROM read_parquet("{path_data}/FD_LOGEMT_2020.parquet")
'''
)

duckdb.sql(f'''
  CREATE OR REPLACE VIEW documentation_indiv
  AS SELECT COD_VAR AS nom_variable,
     LIB_VAR AS description_variable,
     TYPE_VAR AS type_variable,
     COD_MOD AS code_modalite,
     LIB_MOD AS description_modalite,
     LONG_VAR as longueur_variable
  FROM read_csv_auto("{path_data}/dictionnaire_variables_indcvi_2020.csv", header=true)
'''
)

duckdb.sql(f'''
  CREATE OR REPLACE VIEW documentation_logement
  AS SELECT COD_VAR AS nom_variable,
     LIB_VAR AS description_variable,
     TYPE_VAR AS type_variable,
     COD_MOD AS code_modalite,
     LIB_MOD AS description_modalite,
     LONG_VAR as longueur_variable
  FROM read_csv_auto("{path_data}/dictionnaire_variables_logemt_2020.csv", header=true)
'''
)
```

## `R`

``` r
library(duckdb)
library(glue)

# Pour créer une base de données en mémoire
con <- dbConnect(duckdb())

path_data_sql <- DBI::SQL(path_data)


renommage_documentation <-  DBI::SQL(paste(
"SELECT",
"COD_VAR AS nom_variable,",
"LIB_VAR AS description_variable,",
"TYPE_VAR AS type_variable,",
"COD_MOD AS code_modalite,",
"LIB_MOD AS description_modalite,",
"LONG_VAR as longueur_variable"
))


dbExecute(
  con,
  glue_sql(  
    'CREATE OR REPLACE VIEW table_individu AS ',
    'SELECT * FROM read_parquet("{path_data_sql}/FD_INDCVI_2020.parquet")',
    .con=con
  )
)

dbExecute(
  con,
  glue_sql(  
    'CREATE OR REPLACE VIEW table_logement AS ',
    'SELECT * FROM read_parquet("{path_data_sql}/FD_LOGEMT_2020.parquet")',
    .con=con
  )
)

dbExecute(
  con,
  glue_sql(
  'CREATE OR REPLACE VIEW documentation_indiv AS ',
  '{renommage_documentation} FROM ',
  'read_csv_auto("{path_data_sql}/dictionnaire_variables_indcvi_2020.csv", header=true)',
  .con=con
  )
)

dbExecute(
  con,
  glue_sql(
  'CREATE OR REPLACE VIEW documentation_logement AS ',
  '{renommage_documentation} FROM ',
  'read_csv_auto("{path_data_sql}/dictionnaire_variables_logemt_2020.csv", header=true)',
  .con=con
  )
)
```

## `R (dbplyr)`

``` r
library(duckdb)
library(dplyr)
library(stringr)
library(glue)

# Pour créer une base de données en mémoire
con <- dbConnect(duckdb())

path_data_sql <- DBI::SQL(path_data)

renommage_documentation <-  DBI::SQL(paste(
"SELECT",
"COD_VAR AS nom_variable,",
"LIB_VAR AS description_variable,",
"TYPE_VAR AS type_variable,",
"COD_MOD AS code_modalite,",
"LIB_MOD AS description_modalite,",
"LONG_VAR as longueur_variable"
))


dbExecute(
  con,
  glue_sql(  
    'CREATE OR REPLACE VIEW table_individu AS ',
    'SELECT * FROM read_parquet("{path_data_sql}/FD_INDCVI_2020.parquet")',
    .con=con
  )
)

table_individu <- tbl(con, "table_individu")
# La requête pourrait aussi s'écrire directement dans l'appel à tbl :
table_individu_direct <- tbl(con, glue('read_parquet("{path_data}/FD_INDCVI_2020.parquet")'))
print(table_individu_direct)

dbExecute(
  con,
  glue_sql(  
    'CREATE OR REPLACE VIEW table_logement AS ',
    'SELECT * FROM read_parquet("{path_data_sql}/FD_LOGEMT_2020.parquet")',
    .con=con
  )
)
table_logement <- tbl(con, "table_logement")

dbExecute(
  con,
  glue_sql(
  'CREATE OR REPLACE VIEW documentation_indiv AS ',
  '{renommage_documentation} FROM ',
  'read_csv_auto("{path_data_sql}/dictionnaire_variables_indcvi_2020.csv", header=true)',
  .con=con
  )
)
documentation_indiv <- tbl(con, "documentation_indiv")

dbExecute(
  con,
  glue_sql(
  'CREATE OR REPLACE VIEW documentation_logement AS ',
  '{renommage_documentation} FROM ',
  'read_csv_auto("{path_data_sql}/dictionnaire_variables_logemt_2020.csv", header=true)',
  .con=con
  )
)
documentation_logement <- tbl(con, "documentation_logement")
```

Pour rapidement avoir une idée des informations présentes dans ces données, le code ci-dessous peut être utilisé :

## `Observable` via `Quarto`

```` markdown
```{ojs}
schema_table_logement = db.query(
  "SELECT * FROM documentation_logement"
  )
Inputs.table(documentation_logement)

schema_table_individu = db.query(
  "SELECT * FROM documentation_indiv"
  )
Inputs.table(schema_table_individu)
```
````

## `Python`

``` python
schema_table_individu = duckdb.sql(
  "SELECT * FROM documentation_indiv"
  ).to_df()
display(schema_table_individu.head(2))

schema_table_logement = duckdb.sql(
  "SELECT * FROM documentation_logement"
  ).to_df()
display(schema_table_logement.head(2))
```

## `R`

``` r
schema_table_individu <- dbGetQuery(
  con,
  "SELECT * FROM documentation_indiv"
)
print(head(schema_table_individu))

schema_table_logement <- dbGetQuery(
  con,
  "SELECT * FROM documentation_logement"
)
print(head(schema_table_logement))
```

## `R (dbplyr)`

``` r

print(head(documentation_indiv))

print(head(documentation_logement))
```

``` js
schema_table_individu = db.query(
  "SELECT * FROM documentation_indiv"
  )
schema_table_logement = db.query(
  "SELECT * FROM documentation_logement"
  )
```

Voici le dictionnaire des variables de la table logement:

``` js
viewof search_logement = Inputs.search(schema_table_logement, {
  placeholder: "Rechercher une information dans la table logement"
})
```

``` js
Inputs.table(search_logement)
```

Et voici celui de la table individus:

``` js
viewof search_individus = Inputs.search(schema_table_individu, {
  placeholder: "Rechercher une information dans la table individus"
})
```

``` js
Inputs.table(search_individus)
```

Pour découvrir les informations présentes dans la base, il est possible d’utiliser les fonctions pré-implémentées de `DuckDB` pour la [manipulation de données textuelles](https://duckdb.org/docs/sql/functions/char.html). Par exemple, pour extraire toutes les modalités des variables dont la description contient le terme *“catégorie”* :

## `Observable` via `Quarto`

```` markdown
```{ojs}
query = "SELECT * FROM documentation_logement WHERE CONTAINS(description_variable, 'Catégorie')"
Inputs.table(
    db.query(query)
)
```
````

## `Python`

``` python
query = "SELECT * FROM documentation_logement WHERE CONTAINS(description_variable, 'Catégorie')"
duckdb.sql(query)
```

## `R`

``` r
query <- "SELECT * FROM documentation_logement WHERE CONTAINS(description_variable, 'Catégorie')"
dbGetQuery(con, query)
```

## `R (dbplyr)`

``` r
documentation_logement %>%
  filter(str_detect(description_variable, "catégorie"))
```

``` js
query = "SELECT * FROM documentation_logement WHERE CONTAINS(description_variable, 'Catégorie')"
Inputs.table(
    db.query(query)
)
```

Cette approche peut permettre de récupérer les modalités d’une variable. Dans cette base de données, les valeurs `Z` sont à part. Il est possible d’avoir du détail sur celles-ci avec la requête suivante :

## `Observable` via `Quarto`

```` markdown
```{ojs}
Inputs.table(
  db.query(
    "SELECT * FROM documentation_indiv WHERE CONTAINS(code_modalite, 'Z')"
  ),
  {
    columns: [
      "nom_variable","code_modalite",
      "description_modalite", "description_variable",
      "type_variable"
      ]
  }
)
```
````

## `Python`

``` python
duckdb.sql(
  "SELECT * FROM documentation_indiv WHERE CONTAINS(code_modalite, 'Z')"
)
```

## `R`

``` r
query <- "SELECT * FROM documentation_indiv WHERE CONTAINS(code_modalite, 'Z')"
dbGetQuery(con, query)
```

## `R (dbplyr)`

``` r
documentation_indiv %>%
  filter(str_detect(code_modalite, "Z"))
```

``` js
Inputs.table(
  db.query(
    "SELECT * FROM documentation_indiv WHERE CONTAINS(code_modalite, 'Z')"
  ),
  {
    columns: [
      "nom_variable","code_modalite",
      "description_modalite", "description_variable",
      "type_variable"
      ]
  }
)
```

# Lecture et affichage de quelques valeurs

Pour visualiser un nombre limité de valeurs, par exemple 5, deux approches sont possibles :

- Sélectionner un échantillon restreint sur les premières lignes du `Parquet`, par exemple les 5 premières lignes ;
- Sélectionner un échantillon aléatoire.

Pour les premières lignes, la commande à utiliser est `LIMIT`.

## `Observable` via `Quarto`

```` markdown
```{ojs}
Inputs.table(
    db.query("SELECT * FROM table_logement LIMIT 5")
)
```
````

## `Python`

``` python
duckdb.sql("SELECT * FROM table_logement LIMIT 5")
```

## `R`

``` r
dbGetQuery(
  con,
  "SELECT * FROM table_logement LIMIT 5"
)
```

## `R (dbplyr)`

``` r
table_logement %>% head(5)
```

``` js
Inputs.table(
    db.query("SELECT * FROM table_logement LIMIT 5")
)
```

Pour un échantillon aléatoire, la commande à utiliser est `USING SAMPLE`.

``` js
Inputs.table(
    db.query("SELECT * FROM table_logement USIN SAMPLE 5")
)
```

## `Observable` via `Quarto`

```` markdown
```{ojs}
Inputs.table(
    db.query("SELECT * FROM table_logement USING SAMPLE 5")
)
```
````

## `Python`

``` python
duckdb.sql("SELECT * FROM table_logement USING SAMPLE 5")
```

## `R`

``` r
dbGetQuery(
  con,
  "SELECT * FROM table_logement USING SAMPLE 5"
)
```

## `R (dbplyr)`

``` r
tbl(con, sql("SELECT * FROM table_logement USING SAMPLE 5"))
```

``` js
Inputs.table(
    db.query("SELECT * FROM table_logement USING SAMPLE 5")
)
```

# Sélectionner des observations ou des variables

## Requêtes sur les colonnes (`SELECT`)

La liste des colonnes à extraire du fichier peut être renseignée avec la clause `SELECT`. Celles-ci peuvent être renommées en appliquant au passage la clause `AS`.

## `Observable` via `Quarto`

```` markdown
```{ojs}
Inputs.table(
    db.query("SELECT IPONDI AS poids, AGED, VOIT FROM table_individu LIMIT 10")
)
```
````

## `Python`

``` python
duckdb.sql("SELECT IPONDI AS poids, AGED, VOIT FROM table_individu LIMIT 10")
```

## `R`

``` r
dbGetQuery(
  con,
  "SELECT IPONDI AS poids, AGED, VOIT FROM table_individu LIMIT 10"
)
```

## `R (dbplyr)`

``` r
table_individu %>%
  select(poids = IPONDI, AGED, VOIT) %>%
  head(10)
```

``` js
Inputs.table(
    db.query("SELECT IPONDI AS poids, AGED, VOIT FROM table_individu LIMIT 10")
)
```

`DuckDB` propose également des fonctionnalités pour extraire des colonnes à travers des [expressions régulières](https://fr.wikipedia.org/wiki/Expression_r%C3%A9guli%C3%A8re). De nombreux exemples peuvent être trouvés sur [cette page](https://duckdb.org/2023/08/23/even-friendlier-sql.html).

## `Observable` via `Quarto`

```` markdown
```{ojs}
Inputs.table(
    db.query("SELECT IPONDI AS poids, COLUMNS('.*AGE.*') FROM table_individu LIMIT 10")
)
```
````

## `Python`

``` python
duckdb.sql("SELECT IPONDI AS poids, COLUMNS('.*AGE.*') FROM table_individu LIMIT 10")
```

## `R`

``` r
dbGetQuery(
  con,
  "SELECT IPONDI AS poids, COLUMNS('.*AGE.*') FROM table_individu LIMIT 10"
)
```

## `R (dbplyr)`

``` r
table_individu %>%
  select(poids = IPONDI, contains("AGE")) %>%
  head(10)
```

``` js
Inputs.table(
    db.query("SELECT IPONDI AS poids, COLUMNS('.*AGE.*') FROM table_individu LIMIT 10")
)
```

## Requêtes sur les lignes (`WHERE`)

Pour extraire un sous-échantillon des données complètes, la clause `WHERE` permet d’appliquer des filtres à partir de conditions logiques. Par exemple, il est possible de ne conserver, du fichier national, que les données de l’Aude (11), de la Haute-Garonne (31) et de l’Hérault (34).

## `Observable` via `Quarto`

```` markdown
```{ojs}
Inputs.table(
    db.query("SELECT * FROM table_individu WHERE DEPT IN ('11', '31', '34') LIMIT 10")
)
```
````

## `Python`

``` python
duckdb.sql("SELECT * FROM table_individu WHERE DEPT IN ('11', '31', '34')")
```

## `R`

``` r
dbGetQuery(
  con,
  "SELECT * FROM table_individu WHERE DEPT IN ('11', '31', '34')"
)
```

## `R (dbplyr)`

``` r
table_individu %>%
  filter(DEPT %in% c("11", "31", "34")) %>%
  head(10)
```

``` js
Inputs.table(
    db.query("SELECT * FROM table_individu WHERE DEPT IN ('11', '31', '34') LIMIT 10")
)
```

Il est également possible de formater cette liste telle qu’attendue par SQL à partir d’une liste `Python` ou d’un vecteur `R` plus classique. Pour cela, le code suivant peut servir de modèle :

## `Observable` via `Quarto`

```` markdown
```{ojs}
liste_regions = ["11", "31", "34"]
liste_regions_sql = liste_regions.map(item => `'${item}'`).join(",")
Inputs.table(
    db.query(`SELECT * FROM table_individu WHERE DEPT IN (${liste_regions_sql}) LIMIT 10`)
)
```
````

## `Python`

``` python
con = duckdb.connect()

con.execute('''
  CREATE OR REPLACE VIEW table_individu
  AS SELECT * FROM read_parquet("FD_INDCVI_2020.parquet")
'''
)

liste_regions = ["11", "31", "34"]

dep_slots = ", ".join(["?" for _ in liste_regions])
query = "SELECT * FROM table_individu WHERE DEPT IN ({})".format(dep_slots)
liste_regions_sql = ", ".join([f"'{dep}'" for dep in liste_regions])
con.execute(query, liste_regions).fetchdf()
```

## `R`

``` r
liste_regions <- c("11", "31", "34")
liste_regions_sql <- glue_sql_collapse(
  lapply(
    liste_regions, function(dep) glue_sql("'{`dep`}'", .con=con)
    ),
  ", "
)
query <- glue_sql(
  "SELECT * FROM table_individu WHERE DEPT IN ({liste_regions_sql})",
  .con=con
)
dbGetQuery(con, query)
```

## `R (dbplyr)`

``` r
liste_regions <- c("11", "31", "34")
table_individu %>%
  filter(DEPT %in% liste_regions)
```

``` js
liste_regions = ["11", "31", "34"]
liste_regions_sql = liste_regions.map(item => `'${item}'`).join(",")
Inputs.table(
    db.query(`SELECT * FROM table_individu WHERE DEPT IN (${liste_regions_sql}) LIMIT 10`)
)
```

Pour en savoir plus sur les *prepared statements* avec DuckDB en Python, et plus généralement pour avoir des exemples d’utilisations différentes, c’est [ici](https://duckdb.org/docs/api/python/dbapi.html) que ça se passe.

  

Les filtres sur les observations peuvent être faits à partir de critères sur plusieurs colonnes. Par exemple, pour ne conserver que les observations de la ville de Nice où la date d’emménagement est postérieure à 2020, la requête suivante peut être utilisée :

## `Observable` via `Quarto`

```` markdown
```{ojs}
Inputs.table(
    db.query(
        "SELECT * FROM table_logement WHERE COMMUNE = '06088' and AEMM > 2020"
    )
)
```
````

## `Python`

``` python
query = "SELECT * FROM table_logement WHERE COMMUNE = '06088' and AEMM > 2020"
duckdb.sql(query)
```

## `R`

``` r
dbGetQuery(
  con,
  "SELECT * FROM table_logement WHERE COMMUNE = '06088' and AEMM > 2020"
)
```

## `R (dbplyr)`

``` r
table_logement %>%
  filter(COMMUNE == "06088") %>%
  filter(AEMM > 2020)
# Peut aussi s'écrire en une fois :
# table_logement %>% filter(COMMUNE == "06088", AEMM > 2020)
```

``` js
Inputs.table(
    db.query(
        "SELECT * FROM table_logement WHERE COMMUNE = '06088' and AEMM > 2020"
    )
)
```

# Statistiques agrégées

Le langage `SQL` permet d’exécuter de manière très efficace des requêtes complexes afin de construire, à partir de données fines, des statistiques agrégées.

Cette partie illustre d’abord ceci avec deux exemples de statistiques agrégées renvoyant une unique statistique :

- Extraire la liste des codes arrondissements de Paris, Lyon, Marseille où au moins une personne a été recensée ;
- Reproduire l’exemple de Mauvière ([2022](#ref-mauviere-2022)) permettant de calculer le nombre d’habitants de Toulouse qui ont changé de logement en un an ;

Ensuite, des statistiques plus fines sont construites par le biais d’agrégations par groupe :

- Calculer le nombre de personnes recensées par cohorte pour les départements de l’Aude (11), de la Haute-Garonne (31) et de l’Hérault (34) ;
- Calculer le nombre de centenaires recensés par département.

La fonction `DISTINCT` appliquée à la variable `ARM` permet d’extraire la liste des codes arrondissements présents dans la base de données.

## `Observable` via `Quarto`

```` markdown
```{ojs}
Inputs.table(
    db.query(
        "SELECT DISTINCT(ARM) FROM table_logement WHERE NOT CONTAINS(ARM, 'ZZZZZ') ORDER BY ARM"
    )
)
```
````

## `Python`

``` python
query = "SELECT DISTINCT(ARM) " +\
    "FROM table_logement " +\
    "WHERE NOT CONTAINS(ARM, 'ZZZZZ') " +\
    "ORDER BY ARM"
duckdb.sql(query)
```

## `R`

``` r
query <- glue_sql(
    "SELECT DISTINCT(ARM) ",
    "FROM table_logement ",
    "WHERE NOT CONTAINS(ARM, 'ZZZZZ') ",
    "ORDER BY ARM",
    .con=con
)
dbGetQuery(con, query)
```

## `R (dbplyr)`

``` r
table_logement %>%
  filter(str_detect(ARM, "ZZZZZ", negate = TRUE)) %>%
  summarise(ARM = distinct(ARM)) %>%
  arrange(ARM)
```

``` js
Inputs.table(
    db.query(
        "SELECT DISTINCT(ARM) FROM table_logement WHERE NOT CONTAINS(ARM, 'ZZZZZ') ORDER BY ARM"
    )
)
```

Il est possible d’extraire des statistiques beaucoup plus raffinées par le biais d’une requête SQL plus complexe. Par exemple pour calculer le nombre d’habitants de Toulouse qui ont changé de logement en un an:

## `Observable` via `Quarto`

```` markdown
```{ojs}
Inputs.table(
  db.query(
    `
    SELECT CAST(
      SUM(IPONDL*CAST(INPER AS INT)) AS INT
    ) AS habitants_toulouse_demenagement
    FROM table_logement
    WHERE COMMUNE == '31555' AND IRANM NOT IN ('1', 'Z') AND INPER != 'Y'
    `
  )
)
```
````

## `Python`

``` python
query = \
"""
SELECT CAST(
  SUM(IPONDL*CAST(INPER AS INT)) AS INT
) AS habitants_toulouse_demenagement
FROM table_logement
WHERE COMMUNE == '31555' AND IRANM NOT IN ('1', 'Z') AND INPER != 'Y'
"""
duckdb.sql(query).df()
```

## `R`

``` r
query <- paste(
  "SELECT CAST(SUM(IPONDL*CAST(INPER AS INT)) AS INT) ",
  "AS habitants_toulouse_demenagement",
  "FROM table_logement",
  "WHERE COMMUNE == '31555' AND IRANM NOT IN ('1', 'Z') AND INPER != 'Y'",
  sep = " ")
dbGetQuery(con, query)
```

## `R (dbplyr)`

``` r
table_logement %>%
  filter(COMMUNE == '31555', !IRANM %in% c('1', 'Z'), INPER != "Y") %>%
  mutate(INPER = as.integer(INPER)) %>%
  summarise(habitants_toulouse_demenagement = as.integer(sum(IPONDL * INPER)))
```

``` js
Inputs.table(
  db.query(
    `
    SELECT CAST(
      SUM(IPONDL*CAST(INPER AS INT)) AS INT
    ) AS habitants_toulouse_demenagement
    FROM table_logement
    WHERE COMMUNE == '31555' AND IRANM NOT IN ('1', 'Z') AND INPER != 'Y'
    `
  )
)
```

Pour représenter la pyramide des âges recensés dans ces trois départements, il est possible de procéder en deux étapes

- Effectuer une agrégation par le biais de `DuckDB` et transformer ces résultats sous forme de *dataframe*
- Utiliser ce *dataframe* avec un *package* d’analyse graphique pour représenter la pyramide des âges.

> **NOTE:**
>
> Pour illustrer le parallélisme possible entre les codes `R` et `Python`, l’exemple de représentation graphique ci-dessus s’appuie sur le *package* `plotnine` - dont la syntaxe reproduit celle du *package* `R` `ggplot2`, plutôt que sur `matplotlib` ou `seaborn`.

## `Observable` via `Quarto`

> **CAUTION:**
>
> Pour les versions de `Quarto` antérieures à la v1.4, la version embarquée par défaut de la librairie `Plot` ne propose pas d’interactivité par le biais des [*tooltips*](https://observablehq.com/plot/marks/tip).
>
> Pour utiliser une version compatible, par exemple la `0.6.11`, faire:
>
> ```` markdown
> ```{ojs}
> Plot = require("https://cdn.jsdelivr.net/npm/@observablehq/plot@0.6.11/dist/plot.umd.min.js")
> ```
> ````

Code pour structurer les données pour la représentation graphique.

```` markdown
```{ojs}
pyramide_ages = db.query(
`
SELECT
  CAST(SUM(IPONDI) AS INT) AS individus,
  CAST(AGED AS INT) AS AGED,
  DEPT AS departement
FROM table_individu
  WHERE DEPT IN ('11', '31', '34')
GROUP BY AGED, DEPT ORDER BY DEPT, AGED
`
)
Inputs.table(pyramide_ages)
```
````

Code pour produire la représentation graphique.

```` markdown
```{ojs}
Plot.plot({
  x: {label: null},
  y: {percent: true},
  marks: [
    Plot.barY(
        pyramide_ages,
        {x: "AGED", y: d => d.individus/1000, fy: 'departement', fill: "departement", tip: true}
        ),
    Plot.ruleX([18], {stroke: "red"}),
    Plot.tickY(
        pyramide_ages,
        {x: "AGED", y: d => d.individus/1000, fy: 'departement'}
        ),
    Plot.ruleY([0]),
    Plot.axisY({label: "Population (en milliers)"}),
    Plot.axisX({ticks: d3.ticks(0, 120, 10), label: "Âge", fontSize: 12})
  ]
})
```
````

## `Python`

``` python
import matplotlib.pyplot as plt
from plotnine import *

pyramide_ages = duckdb.sql(
"""
SELECT
  SUM(IPONDI) AS individus,
  CAST(AGED AS int) AS AGED,
  DEPT AS departement
FROM table_individu
  WHERE DEPT IN ('11', '31', '34')
GROUP BY AGED, DEPT ORDER BY DEPT, AGED
"""
).to_df()

(
    ggplot(pyramide_ages, aes(x = "AGED", y = "individus")) +
    geom_bar(
      aes(fill = "departement"),
      stat = "identity", show_legend=False
    ) +
    geom_vline(xintercept = 18, color = "grey", linetype = "dashed") +
    facet_wrap('departement', scales = "free_y", nrow = 3) +
    theme_minimal() +
    labs(y = "Individus recensés", x = "Âge")
)
```

## `R`

``` r
library(labeling)
library(ggplot2)

query <- paste(
  "SELECT SUM(IPONDI) AS individus, AGED, DEPT AS departement",
  "FROM table_individu",
  "WHERE DEPT IN ('11', '31', '34')",
  "GROUP BY AGED, DEPT",
  "ORDER BY DEPT, AGED",
  sep = " "
)
pyramide_ages <- dbGetQuery(con, query)

ggplot(pyramide_ages, aes(x = AGED, y = individus)) +
  geom_bar(aes(fill = departement), stat = "identity") +
  geom_vline(xintercept = 18, color = "grey", linetype = "dashed") +
  facet_wrap(~departement, scales = "free_y", nrow = 3) +
  theme_minimal() +
  labs(y = "Individus recensés", x = "Âge")
```

## `R (dbplyr)`

``` r
library(labeling)
library(ggplot2)

pyramide_ages <- table_individu %>%
  filter(DEPT %in% c('11', '31', '34')) %>%
  group_by(AGED, departement = DEPT) %>%
  summarise(individus = sum(IPONDI), .groups = "drop") %>%
  arrange(departement, AGED) %>%
  collect()

ggplot(pyramide_ages, aes(x = AGED, y = individus)) +
  geom_bar(aes(fill = departement), stat = "identity") +
  geom_vline(xintercept = 18, color = "grey", linetype = "dashed") +
  facet_wrap(~departement, scales = "free_y", nrow = 3) +
  theme_minimal() +
  labs(y = "Individus recensés", x = "Âge")
```

``` js
pyramide_ages = db.query(
`
SELECT
  CAST(SUM(IPONDI) AS INT) AS individus,
  CAST(AGED AS INT) AS AGED,
  DEPT AS departement
FROM table_individu
  WHERE DEPT IN ('11', '31', '34')
GROUP BY AGED, DEPT ORDER BY DEPT, AGED
`
)
Inputs.table(pyramide_ages)
```

``` js
Plot.plot({
  x: {label: null},
  y: {percent: true},
  marks: [
    Plot.barY(
        pyramide_ages,
        {x: "AGED", y: d => d.individus/1000, fy: 'departement', fill: "departement", tip: true}
        ),
    Plot.ruleX([18], {stroke: "red"}),
    Plot.tickY(
        pyramide_ages,
        {x: "AGED", y: d => d.individus/1000, fy: 'departement'}
        ),
    Plot.ruleY([0]),
    Plot.axisY({label: "Population (en milliers)"}),
    Plot.axisX({ticks: d3.ticks(0, 120, 10), label: "Âge", fontSize: 12})
  ]
})
```

Figure 1: Un exemple de représentation graphique produite à partir du recensement de la population

Si on s’intéresse plus spécifiquement au nombre de centenaires recensés par département et qu’on désire classer ces derniers par ordre décroissant.

## `Observable` via `Quarto`

```` markdown
```{ojs}
db.query(
`
SELECT
  SUM(IPONDI) AS individus_recenses,
  DEPT
FROM table_individu
  WHERE AGED >= 100
GROUP BY DEPT
ORDER BY individus_recenses DESC
`
)
```
````

## `Python`

``` python
duckdb.sql(
"""
SELECT
  SUM(IPONDI) AS individus_recenses,
  DEPT
FROM table_individu
  WHERE AGED >= 100
GROUP BY DEPT
ORDER BY individus_recenses DESC
"""
)
```

## `R`

``` r
query <- paste(
  "SELECT SUM(IPONDI) AS individus_recenses, DEPT",
  "FROM table_individu",
  "WHERE AGED >= 100",
  "GROUP BY DEPT",
  "ORDER BY individus_recenses DESC",
  sep = " "
)
dbGetQuery(con, query)
```

## `R (dbplyr)`

``` r
table_individu %>%
  filter(AGED >= 100) %>%
  group_by(DEPT) %>%
  summarise(individus_recenses = as.integer(sum(IPONDI)), .groups = "drop") %>%
  arrange(desc(individus_recenses))
```

``` js
Inputs.table(
  db.query(
  `
  SELECT
    CAST(SUM(IPONDI) AS INT) AS individus_recenses,
    DEPT
  FROM table_individu
    WHERE AGED >= 100
  GROUP BY DEPT
  ORDER BY individus_recenses DESC
  `
  )
)
```

# Associer à d’autres sources de données

Le [*code officiel géographique* (COG)](https://www.insee.fr/fr/information/6800675) est utile pour illuster l’ajout d’information annexe. Le code commune va être utilisé pour associer les deux bases de données. Cette variable porte des noms différents dans les deux bases, ce qui n’est pas un problème.

Il est proposé, ci-dessous, de télécharger les données de manière reproductible, via une fonction adaptée (ici à travers le *package* `requests` pour `Python` ou via `download.file` en `R`). Bien que `DuckDB` permette l’import direct depuis un *url*, ceci implique l’installation en amont de l’[extension `httpfs`](https://duckdb.org/docs/extensions/httpfs.html).

L’association de sources de données passe généralement par un `JOIN`. Pour illustrer cette clause, il est possible d’associer les agrégats de la table logement à un niveau communal avec celles du COG grâce au code commune.

## `Observable` via `Quarto`

La lecture directe depuis `Observable` du fichier par le biais du protocole `https` vers le site de l’Insee ne fonctionnant pas, il est recommandé de télécharger en amont le fichier par l’intermédiaire de `Python` ou de `R`.

Code `Python` pour récupérer le code officiel géographique

``` python
import requests
import os

url_cog = "https://www.insee.fr/fr/statistiques/fichier/6800675/v_commune_2023.csv"
if os.path.exists("cog.csv") is False:
  response = requests.get(url_cog)
  with open("cog.csv", mode="wb") as file:
      file.write(response.content)
```

Code `R` pour récupérer le code officiel géographique

``` r
url <- "https://www.insee.fr/fr/statistiques/fichier/6800675/v_commune_2023.csv"
download.file(url, "cog.csv")
```

Après avoir récupérées les données, ce code peut permettre de créer une base de données intégrant le code officiel géographique:

```` markdown
```{ojs}
db2 = {
  const configuredClient = await db ;
  await configuredClient.query(
    `
    CREATE OR REPLACE VIEW cog2023 AS
    SELECT * FROM read_csv_auto('cog.csv', header = true)
    `
    )

  return configuredClient ;

}
```
````

```` markdown
```{ojs}
Inputs.table(
  db2.query(
    `
    SELECT cog2023.NCCENR, CAST(SUM(table_logement.IPONDL) AS INT) AS recenses
    FROM table_logement
    LEFT OUTER JOIN cog2023 ON table_logement.COMMUNE = cog2023.COM
    GROUP BY cog2023.NCCENR
    ORDER BY recenses;
    `
  )  
)
```
````

## `Python`

``` python
import requests
import os

url_cog = "https://www.insee.fr/fr/statistiques/fichier/6800675/v_commune_2023.csv"
if os.path.exists("cog.csv") is False:
  response = requests.get(url_cog)
  with open("cog.csv", mode="wb") as file:
      file.write(response.content)
```

``` python
duckdb.sql(
  'CREATE OR REPLACE VIEW cog2023 AS ' +\
  'SELECT * FROM read_csv_auto("cog.csv", header=true)'
)
```

``` python
duckdb.sql(
"""
SELECT cog2023.NCCENR, CAST(SUM(table_logement.IPONDL) AS INT) AS recenses
FROM table_logement
LEFT OUTER JOIN cog2023 ON table_logement.COMMUNE = cog2023.COM
GROUP BY cog2023.NCCENR
ORDER BY recenses;
"""
)
```

## `R`

``` r
url <- "https://www.insee.fr/fr/statistiques/fichier/6800675/v_commune_2023.csv"
download.file(url, "cog.csv")

dbExecute(
  con,
  glue_sql(
    "CREATE OR REPLACE VIEW cog2023 AS ",
    "SELECT * FROM read_csv_auto("cog.csv", header=true)",
    .con=con
  )
)

query <- paste(
  "SELECT cog2023.NCCENR, CAST(SUM(table_logement.IPONDL) AS INT) AS recenses",
  "FROM table_logement",
  "LEFT OUTER JOIN cog2023 ON table_logement.COMMUNE = cog2023.COM",
  "GROUP BY cog2023.NCCENR ORDER BY recenses",
  sep = " "
)
dbGetQuery(con, query)
```

## `R (dbplyr)`

``` r
url <- "https://www.insee.fr/fr/statistiques/fichier/6800675/v_commune_2023.csv"
download.file(url, "cog.csv")
```

``` r
cog <- tbl(con, glue('read_csv_auto("{path_data}/cog.csv", header = true)'))
```

``` r
table_logement %>%
  left_join(cog, by = c("COMMUNE" = "COM")) %>%
  group_by(NCCENR) %>%
  summarise(recenses = as.integer(sum(IPONDL)), .groups = "drop") %>%
  arrange(recenses)
```

``` js
proxy = "https://corsproxy.io/?"
url_cog = "https://www.insee.fr/fr/statistiques/fichier/6800675/v_commune_2023.csv"
db2 = {
  const configuredClient = await db ;
  await configuredClient.query(
    `
    CREATE OR REPLACE VIEW cog2023 AS
    SELECT * FROM read_csv_auto('${proxy + url_cog}', header = true)
    `
    )

  return configuredClient ;

}
```

Les données du code officiel géographique présentent l’aspect suivant :

Requête Observable pour explorer les premières lignes

``` js
Inputs.table(
  db2.query(`SELECT * FROM cog2023 LIMIT 10`)
)
```

Voici par exemple le résultat d’une fusion avec une agrégation produite à la volée sur la table logement :

Requête pour explorer les premières lignes

``` js
Inputs.table(
  db2.query(
    `
    SELECT cog2023.NCCENR, CAST(SUM(table_logement.IPONDL) AS INT) AS recenses
    FROM table_logement
    LEFT OUTER JOIN cog2023 ON table_logement.COMMUNE = cog2023.COM
    GROUP BY cog2023.NCCENR
    ORDER BY recenses;
    `
  )  
)
```

## Références

Dondon, Alexis, et Pierre Lamarche. 2023. « Quels formats pour quelles données? » *Courrier des statistiques*, nᵒ 9.

Mauvière, Éric. 2022. « Parquet devrait remplacer le format CSV ». Post de blog \[Consulté le 12 octobre 2023\]. <https://www.icem7.fr/cartographie/parquet-devrait-remplacer-le-format-csv/>.

## Notes de bas de page

[^1]: Des propositions d’enrichissements de cette documentation à partir d’implémentations alternatives, par exemple s’appuyant sur `Arrow` et `dbplyr` ou sur `Polars` sont bienvenues sur le [Github InseeFrLab/exemples-recensement-parquet](https://github.com/InseeFrLab/exemples-recensement-parquet).
