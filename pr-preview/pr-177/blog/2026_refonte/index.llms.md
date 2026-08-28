# Quel est le besoin ?

Si vous êtes déjà venus ici, vous avez dû remarquer que **le site a changé de tête**. Trois nouveautés sont apparues le 29 mai[^1].

- une rubrique **[Projets innovants](../../project.llms.md)** avec une trentaine de fiches ;
- une **version anglaise** du site ;
- et les contenus de **deux anciens sites** qui nous rejoignent avec leur mise hors service ⚰️.

Derrière ces trois lignes, il y a une [*pull request*](https://github.com/InseeFrLab/ssphub/pull/112) de 412 fichiers modifiés, à peu près 5 000 lignes ajoutées et 3 000 supprimées. C’était l’occasion de reprendre pas mal de choses et donc l’occasion d’un post de blog pour raconter les choix qui ont été faits - si jamais cela vous est utile aussi.

# Que veut-on voir sur ce site ?

Avant de toucher au “comment?”, on a parlé du “pourquoi?”. Après des échanges avec quelques personnes au sein du réseau, on est arrivé aux quatre besoins suivant pour le site :

## L’infolettre passe en mode archive

L’infolettre, c’est historiquement le coeur du réseau. Mais elle vit désormais surtout **par mail et sur Tchap** là où sont les gens. Le site n’a plus besoin d’en être la vitrine mais plutôt une archive 👵.

**Rien ne se perd, tout se transforme** comme disait Lavoisier: [tous les numéros](../../infolettre/infolettre.llms.md) sont toujours bien listés sur le site, jusqu’aux plus anciens, ils ont juste quitté la barre de navigation principale pour le menu « À propos ».

## Les projets innovants deviennent la vitrine

C’est le gros morceau. On a voulu (re)mettre en avant **ce que l’on fait au sein du réseau** et avoir un endroit où partager nos projets.

Des projets étaient autrefois affichés sur le site avant d’en disparaître. La vie n’étant qu’éternel recommencement, on a décidé de les inclure à nouveau.

Dans l’idée, cela donne :

> **Un(e) chef(fe)**\
> Il faut faire de la codification automatique avec de l’IA
>
> **Un(e) agent(e)**\
> Mais bien sûr 😅.\
> *à lui/elle-même*: Mais je sais pas faire. Qui en a fait avant ?
>
> **Un(e) agent(e)**\
> Oh, mais le site du SSPHub donne des repo Git, des descriptions sommaires sur tel projet qui nous serait utile. Si on les contactait ?
>
> **Un(e) chef(fe)**\
> Bien vu, jeune padawan !

Concrètement, on a repris les projets sur lesquels l’Insee ou des SSM ont travaillé de manière innovante. Les projets sont maintenant structurés dans **un tableau formatté pour tous les projets** qui permet facilement de comprendre ce que le projet fait, où il en est, où est la documentation et où est le code public. Les projets sont par ailleurs taggés par **catégories**. Cela permet de créer des listings pour **retrouver facilement des projets similaires**.

Pour chaque projet, on a ainsi rempli ce tableau, échangé avec la personne qui en était à l’origine pour relire et mettre à jour son statut. Cette étape là, qui a demandé un peu de coordination et d’échanges entre intelligences humaines, a été relativement longue (environ deux semaines de travail étalées sur de nombreuses semaines pour la partie coordination).

À la fin, cela donne la présentation d’**une trentaine de projets innovants**[^2] menés dans le SSP. Nowcasting, images satellitaires, codification automatique de l’APE, webscraping pour l’IPC, données de cartes bancaires, packages d’accès aux données, détection d’atypies dans la DSN, ségrégation urbaine…

Un point important : **cette liste n’est pas exhaustive.** Elle repose sur le volontariat. Si vous êtes vexé que votre projet n’y soit pas ou que vous avez mené un projet qui y a sa place, ouvrez une issue et proposez de l’ajouter ! Mon petit doigt me dit qu’avec l’IA maintenant cela se fait rapidement 😅 - cf la marche à suivre en bas de ce post.

## Deux sites nous rejoignent

<https://ssplab.lab.sspcloud.fr> et <https://statoscope.wordpress.com> sont décommissionnés[^3]. Au passage, on a fait un peu de ménage, supprimé le contenu trop ancien et **rapatrié les contenus encore d’actualité ici** : funathons, formations R et Observable, présentations, partenariats, billets.

## Une version anglaise partielle

Il arrive qu’on ne soit pas seul au monde et qu’on ait des interlocuteurs hors de France. Une **version anglaise** des projets était donc une demande initiale forte, avec aussi une traduction de la présentation du réseau.

En revanche, le blog, les événements et les infolettres restent en français. Ce n’est pas (seulement) de la paresse : **on s’est dit que l’actualité franco-française du SSP n’intéresserait pas forcément d’autres personnes** (peut-être à tort).

# Un site bilingue, ce n’est pas si simple

Voilà pour le pourquoi et les objectifs. Maintenant comment faire ?

Le site tourne sous [Quarto](https://quarto.org). Et **Quarto ne sait pas gérer nativement deux langues**. C’est un serpent de mer : l’issue [\#275](https://github.com/quarto-dev/quarto-cli/issues/275) du dépôt Quarto traîne depuis des années, plusieurs solutions communautaires cohabitent et aucune n’est officielle.

On a exploré deux pistes pour un profil intermédiaire en quarto comme moi : utiliser les profils de Quarto ou un package R fait exprès pour ceci, `babelquarto`. Les critères qui m’ont fait choisir [`babelquarto`](https://docs.ropensci.org/babelquarto/) c’est 1/ **le lien page à page natif** et 2/ une **plus grande lisibilité des fichiers quarto** : il y a un fichier en français et un autre en anglais.

Concrètement : quand vous lisez une fiche projet en français, un bouton doit vous emmener sur *cette* fiche en anglais, pas sur la page d’accueil anglaise. La solution concurrente ne proposait à l’époque qu’un aiguillage à l’entrée du site : vous choisissez votre langue une fois et ensuite vous êtes coincé. **Comme ce besoin me semblait prioritaire, il a emporté la décision malgré les désavantages que cela implique après techniquement**. L’autre solution a aussi des atouts, c’est un arbitrage qui a été fait entre les fonctionnalités proposées, la simplicité, mes capacités à maintenir ensuite le site. Un autre arbitrage est tout aussi possible suivant les conditions !

> **NOTE:**
>
> Voici plus en détail les deux candidats qu’on a regardés :
>
> **Les profils Quarto**
>
> Concrètement, cela utilise la fonctionnalité de [profils](https://quarto.org/docs/projects/profiles.html) native à Quarto en jouant avec les dossiers où le site est rendu (le profil anglais insère le rendu dans le dossier `/en` et le profil français dans le dossier par défaut). Pour ajouter des liens pages à page, il faut par ailleurs ajouter des filtres Lua. C’est ce qu’un collègue a fait pour le site du cours [Python pour la data science](https://pythonds.linogaliana.fr/) et qu’il a détaillé dans le fil de discussion de l’issue [\#275 sus-nommée](https://github.com/quarto-dev/quarto-cli/issues/275#issuecomment-3687937583).
>
> Sur l’analyse coût bénéfice :
>
> - ✅ C’est du Quarto natif : CI simple, `quarto preview` fonctionnel.
> - ❌ Pas de lien page à page.
> - ❌ nécessité d’utiliser des filtres Lua ensuite pour faire quelque chose de plus spécifique, alors que le site doit rester “simple” pour être maintenable facilement.
> - ❌ L’écriture est alourdie par les divs conditionnelles `::: {when-profile="fr"}` qui, je trouve, polluent les `.qmd` et rendent la maintenance plus compliquée.
>
> **babelquarto**
>
> L’autre solution est d’utiliser le package R [`babelquarto`](https://docs.ropensci.org/babelquarto/) développé par *R Open Science*. Le package permet de spécifier dans le fichier `_quarto.yml` quelles langues coexistent. Il suffit ensuite de nommer les fichiers en français en `index.qmd` et les fichiers anglais équivalents en `index.en.qmd`. Le package va les détecter lors du rendu du site, les mettre dans un dossier pour chaque langue (ici seulement `en/`) et créer des liens pages à page pour basculer d’une langue à l’autre.
>
> Sur l’analyse coût bénéfice :
>
> - ✅ Le lien entre versions se construit tout seul : on n’écrit **rien** dans les liens.
> - ❌ Le rendu ne passe plus par `quarto render` mais par R — donc perte du preview natif et surtout, le plus désagréable, adhérence à R.
>
> Même avec babelquarto, on a utilisé des profils Quarto pour permettre une version anglaise partielle :
>
> - `_quarto-en.yml` n’expose que trois entrées : la page d’accueil, où sont présentés les projets, la description du réseau et un lien vers le 💓 SSPCloud 💓 bien sûr.
> - La version française, configurée dans `_quarto-fr.yml`, contient en plus les posts de blog, les ateliers et les infolettres.
>
> Sans les profils Quarto, il aurait fallu traduire tout le site ou rien.
>
> ``` yaml
> profile:
>   default: fr
>   group: [fr, en]
>
> babelquarto:
>   languagelinks: navbar
>   mainlanguage: "fr"
>   languages: ["en"]
> ```
>
> Exemple grandeur nature de babelquarto : le [devguide de rOpenSci](https://devguide.ropensci.org/) dont le code source est ouvert et qui m’a bien aidé.

Au passage, on a ajouté un **script de traduction automatisé** grâce à [`babeldown`](https://docs.ropensci.org/babeldown/). Cela envoie le `.qmd` à traduire à DeepL et récupère un `.qmd` traduit, en préservant (à peu près) le YAML et les blocs de code.

> **TIP:**
>
> Une trentaine de lignes de R et une clé d’API DeepL dans les variables d’environnement :
>
> ``` r
> babeldown::deepl_translate(
>   path = input_path,
>   out_path = out_path,
>   source_lang = "FR",
>   target_lang = "EN-GB",
>   formality = "default",
>   yaml_fields = c("title", "description", "categories")
> )
> ```
>
> Le script R corrige ensuite automatiquement certaines typos qui ressortaient quasi systématiquement de la traduction parce qu’ils sont liés au modèle de tableau utilisé : trop de `---` dans les tableaux, des caractères spéciaux insérés qui cassent la phase de rendering : `\-` par exemple et `{{\< fa brands`.
>
> L’usage de ce script fait **gagner un temps considérable sur la mise en forme** et on ne fait que **relire la traduction**, ce qui en fait un exercice rapide. Il ne traduit pas par contre les métadonnées (et donc les catégories, qui sont à reprendre à la main !).

# Contribuer, c’est devenu plus simple

Avant, ajouter du contenu demandait de comprendre comment le site était fabriqué. Maintenant, **trois commandes suffisent** :

1.  une pour créer le squelette d’une fiche projet, pré-remplie avec les bons champs ;
2.  une pour en produire la version anglaise ;
3.  une pour prévisualiser le site en local pendant qu’on écrit.

Tout est documenté dans le [README](https://github.com/InseeFrLab/ssphub/blob/main/README.md).

Et surtout, il y a **la prévisualisation automatique** : dès que vous proposez une modification par une demande de tirage (pull request), une version consultable du site est construite et publiée sur internet. Vous voyez votre ajout en ligne, avec sa vraie mise en page, avant qu’il ne soit visible sur le site.

> **NOTE:**
>
> Les scripts vivent dans `scripts/`, numérotés par ordre d’usage :
>
> ``` bash
> # 1 - Créer une nouvelle fiche projet
> cd scripts && uv run 1_template.py "2026_mon_projet"
>
> # Rendre le site
> uv run Rscript scripts/1_render.R
>
> # 2 - Traduire une fiche projet
> Rscript scripts/2_translate.R 2026_mon_projet
>
> # 3 - Rendre et prévisualiser en local
> uv run Rscript scripts/3_render_preview.R
> ```
>
> **C’est un mélange de R et de Python** et, honnêtement, je ne trouve pas cela très beau. Mais comme on dit, tant pis c’est comme cela 🫠.
>
> On doit donc utiliser `uv run Rscript` parce que justement on utilise `uv` pour Python et qu’un article de blog utilise Python lors de la phase de render. Il l’est donc à nouveau pour initier des projets et pour que l’environnement soit reproductible grâce à [`uv`](https://docs.astral.sh/uv/). R est ensuite utilisé pour ses packages babelquarto et babeldown pour la traduction.
>
> Côté déploiement, il y a désormais **trois environnements** :
>
> |  | Déclencheur | Cible |
> |----|----|----|
> | **Preview - build** | ouverture d’une PR sur `main` | GitHub Pages, une preview par PR |
> | **Pré-prod** | manuel | Netlify (site de test) |
> | **Prod** | push sur `main` | Netlify (site public) |
>
> La preview est une GitHub Action maison plutôt que l’action Netlify standard : c’est une conséquence directe du choix de babelquarto, qui nous privait du preview natif. Elle gère la concurrence (une nouvelle poussée annule le build précédent) et nettoie derrière elle à la fermeture de la PR.
>
> Remarquez par ailleurs que pour permettre les preview à partir de fork du dépôt, **l’action *Preview - build* ne fait que rendre le site**. Pour le déployer, il faut avoir accès en écriture au repo, ce qui n’est pas possible depuis un fork. Il y a donc une action spécifique, **Preview - deploy** qui est lancée depuis le repo `ssphub` pour déployer la prévisualisation automatiquement.

# Un peu de ménage et autres

Une refonte, c’est aussi l’occasion de faire un peu de ménage.

**Les trois `init.sh`**: À la racine du dépôt dormait un script qui installait Go et Hugo, le générateur qu’on utilisait *avant* Quarto. Le script avait survécu à la migration vers Quarto, il a été rattrapé par la patrouille.

Les deux autres `init.sh` lançaient le tuto Polars sur le SSP Cloud. Ils sont devenus inutiles le jour où le notebook a déménagé dans [son propre dépôt](https://github.com/SSPHub/Formation-polars).

**Les gros fichiers**: Le dépôt versionnait des PDF de plusieurs mégaoctets et une présentation ODP, hérités du `static/` de Hugo. Ils sont partis sur le **stockage S3 du SSP Cloud**, et le site pointe dessus. Git n’est pas fait pour ça et le repo commence à être lourd.

**L’arborescence**: Les dossiers portent enfin le nom des rubriques : `post/` est devenu `blog/`, `talk/` s’est réparti entre `event/` et `course/`, le CSS et le SCSS ont rejoint `assets/`.

**LLMs**: Autre petit ajout de la refonte : `llms-txt: true` dans `_quarto.yml`, qui génère une version du site lisible par les modèles de langage. C’est d’ailleurs comme ça que vous pouvez donner un post entier à lire à un assistant, en ajoutant `.llms.md` à l’URL : <https://ssphub.fr/project.llms.md> est la version allégée pour IA de <https://ssphub.fr/project>.

**Centralisation des variables**: Toutes les adresses et liens du réseau vivent maintenant dans `_variables.yml` et s’appellent dans les `.qmd` avec `contact-ssphub@insee.fr`. Cela permet de mettre à jour des liens facilement partout dans le site.

``` yaml
contact:
  email: <contact-ssphub@insee.fr>
  tchap: https://tchap.gouv.fr/#/room/#ssphub:agent.finances.tchap.gouv.fr

signup:
  form: https://grist.numerique.gouv.fr/o/ssphub/forms/...
```

# Et un changement d’adresse

Le site était déployé avant sur <https://ssphub.netlify.app> par facilité, comme cela permettait d’avoir une CI/CD facilement intégrée à GitHub. Quelques personnes tiquaient quand même sur le fait d’avoir une adresse url qui fasse peu propre pour un réseau d’agents publics. On a donc décidé de sortir le (petit) porte-monnaie et d’acheter le nom de domaine [ssphub.fr](https://ssphub.fr), détenu maintenant très officiellement par l’État français (*himself*), représenté par le MEFSIN (*himself*), représenté par l’Insee (*himself*) (cf [le site de l’AFNIC](https://www.afnic.fr/en/domain-names-and-support/everything-there-is-to-know-about-domain-names/find-a-domain-name-or-a-holder-using-whois/)).

Le site a ainsi déménagé sur **[ssphub.fr](https://ssphub.fr)** à l’été 2026 par la fameuse [demande de tirage (PR) 173](https://github.com/InseeFrLab/ssphub/pull/173). On a au passage inséré une redirection de l’ancien nom de domaine vers le nouveau. <https://ssphub.netlify.app/project/2026_sndstools/> est redirigé automatiquement vers <https://ssphub.fr/project/2026_sndstools/>.

# Ce qu’il reste à faire

Comme toujours, des chantiers restent ouverts :

- **la version anglaise ne couvre pas le blog ni les événements.** C’est un choix ;
- **la synchronisation automatique des fiches projets** : un mécanisme existe pour récupérer la documentation directement depuis les dépôts des projets, afin que les fiches restent à jour toutes seules. Il est écrit, il est en place… et il est désactivé, parce qu’il ne marche pas encore assez bien.

> **NOTE:**
>
> Le travail de refonte global du site a pris **environ deux mois de travail**, étalé sur un an !
>
> - environ deux semaines de travail pour étudier les anciens sites à décommissionner, lister leur contenu, rapatrier ce qui serait à rapatrier, supprimer le reste ;
> - environ une semaine de travail sur le cadrage de la refonte du site, monter une expérimentation et la valider ;
> - environ deux semaines pour chercher les informations sur les projets innovants, les inclure ;
> - une semaine de travail pour la relecture des projets, les relances, les échanges ;
> - une semaine de travail technique sur le site, améliorer le déploiement ;
> - enfin quelques jours de choix de nom de domaine et de gestion lié à la bascule ;
> - et le temps d’écriture de ce post de blog et de la communication à faire ensuite autour des projets 😉 (un gros jour pour ce post, à voir pour la suite !).

# Pour contribuer au site

**Vous avez mené un projet innovant dans le SSP ?** Il a sa place dans la rubrique Projets. La procédure complète est dans le [README](https://github.com/InseeFrLab/ssphub/blob/main/README.md), et si vous préférez, ouvrez simplement une [issue](https://github.com/InseeFrLab/ssphub/issues) : on s’occupe du reste.

# Ressources

- le code source du site : <https://github.com/InseeFrLab/ssphub> ;
- la PR de la refonte : <https://github.com/InseeFrLab/ssphub/pull/112> ;
- l’issue Quarto sur le multilingue : <https://github.com/quarto-dev/quarto-cli/issues/275> ;
- des exemples de sites Quarto multilingues, dans la catégorie [Show and Tell](https://github.com/quarto-dev/quarto-cli/discussions/categories/show-and-tell) du dépôt Quarto ;
- la documentation de [`babelquarto`](https://docs.ropensci.org/babelquarto/) ;
- la documentation de [`babeldown`](https://docs.ropensci.org/babeldown/) ;
- le [devguide de rOpenSci](https://devguide.ropensci.org/), exemple grandeur nature ;
- la documentation d’[`uv`](https://docs.astral.sh/uv/).

## Notes de bas de page

[^1]: *cf.* le délicieux commit [c3c88ce](https://github.com/InseeFrLab/ssphub/commit/c3c88ce62f11054ad2077e55d2fe035cef54aa46).

[^2]: La page [projets](../../project.llms.md) tente une définition de ce qu’on entend par « projet innovant ».

[^3]: Dans les faits, seul <https://ssplab.lab.sspcloud.fr> est redirigé vers <https://ssphub.fr>. L’autre site n’a pas pu être décommissionné pour des raisons fort avouables (on a perdu les identifiants 😱).
