# Guide pour contribuer au site web du réseau

## :one: Introduction

Il est possible de contribuer au projet `utilitR` de différentes manières, détaillées dans ce document. 
Il n'est pas nécessaire d'être un expert des fonctionnalités de `Git` ou `Github` pour pouvoir
proposer des modifications du site web grâce à quelques outils qui simplifient les contributions
et qui sont détaillés par la suite. 

Les contributions peuvent prendre différentes formes, qu'il s'agisse d'une discussion autour de contenu à ajouter,
d'une proposition d'ajout à l'une des rubriques du site ou l'écriture d'un post de blog. 

> **Note**
> 
> Il n'est pas nécessaire d'être un data scientist expert pour contribuer au site web. En
> revanche, il est nécessaire de s'inscrire dans le fonctionnement
> classique des projets _open source_,
> fonctionnement qui est orchestré autour de `Github` et de ses différents outils.
> Il est possible d'en acquérir très rapidement les bases à partir de ce document présentant le [Travail collaboratif avec `R`](https://linogaliana.gitlab.io/collaboratif/git.html#des-bases-de-git), ou à partir d'échanges avec les contributeurs actuels
> depuis le salon [`Tchap`](https://www.tchap.gouv.fr/) du réseau (pour l'intégrer, un mail à <ssphub-contact@insee.fr> suffit)

Un environnement prêt à l'emploi pour l'exécution des scripts est disponible sur le `SSPCloud`, à 
travers l'interface du logiciel `VSCode`.
En cliquant sur le lien suivant, un service `VSCode` avec l'ensemble des dépendances nécessaires pour utiliser la documentation est disponible: [![SSPcloud](https://img.shields.io/badge/SSPcloud-Tester%20via%20SSP--cloud-informational?logo=visualstudio)](https://datalab.sspcloud.fr/launcher/ide/vscode-python?autoLaunch=false&networking.user.enabled=true&security.allowlist.enabled=false&init.personalInit=%C2%ABhttps%3A%2F%2Fraw.githubusercontent.com%2FInseeFrLab%2Fssphub%2Fcontributing%2Finit.sh%C2%BB).
Le reste de la procédure pour prévisualiser le site web depuis un service existant est expliqué dans l'annexe technique.

<br>

## :two: Comment proposer des modifications légères sur une page déjà existante ? 

[:arrow_up: Retour à l'introduction](#one-introduction)

Pré-requis: avoir un compte `Github`.

Pour ce type de modifications, il est demandé d'utiliser directement
l'outil de suggestions de changements de `Github`.
Les pages déployées sur https://ssphub.netlify.app comprennent un bouton `Edit` qui
permet de proposer, automatiquement, des modifications via l'interface de 
`Github`. Ce bouton se trouve à la fin de la table des matières et a cette apparence:

![](https://img.shields.io/badge/Proposer%20une%20modification-%236886bb?logo=github)

<br>

Après avoir cliqué sur ce bouton, le fichier source à l'origine de la page
web est ouvert sur `Github`. Celui-ci est au format `Markdown` (voir les explications
techniques [plus bas](#structure-d-une-page), si besoin)

Cette fonctionnalité est utilisable même
lorsque vous n'avez pas les droits en écriture sur le dépôt (droits attachés
au statut de *mainteneur* sur le projet), grâce à la notion de [*fork*](https://github.com/InseeFrLab/utilitr-bonnes-pratiques/edit/master/CONTRIBUTING.md#one-forker-le-d%C3%A9p%C3%B4t-utilitr).

A l'ouverture du lien, s'il n'existe pas de fork du projet sur son compte, un pop-up s'ouvre pour indiquer qu'il faut en créer un pour pouvoir proposer des modifications : en acceptant, un fork est créé automatiquement.

On se retrouve alors sur une interface permettant d'éditer,
de visualiser et de proposer des modifications du fichier source. 

La documentation officielle de Github sur cette manière de procéder est
disponible
[ici](https://docs.github.com/en/free-pro-team@latest/github/managing-files-in-a-repository/editing-files-in-another-users-repository).

Dans ce menu, vous avez accès au code de la fiche en `R Markdown`.
C'est directement dans cette fenêtre que les modifications sont à écrire.
Il est recommandé de prévisualiser la modification en cliquant sur l'onglet `Preview`.
En cliquant sur `Preview` vous ne verrez pas la fiche mise en forme mais
les modifications seront identifiées (rouge pour suppression, vert pour
insertion) par le système de contrôle de version `Git`

![](https://raw.githubusercontent.com/InseeFrLab/utilitR/master/pics/contributing/Relecture_preview.png)

Enfin, une fois la modification écrite, il convient de la valider.
Cette opération, nommée `commit` dans la terminologie `Git`,
peut être effectuée en: 

* écrivant un message signifiant dans la fenêtre `Commit message`. Les messages cryptiques du type `modification` sont proscrits. 
* sélectionnant la branche dans laquelle la modification s'applique. Si la modification est à appliquer aux supports déployés, il est nécessaire de sélectionner `main`. Les modifications proposées dans `master` ne sont intégrées qu'après validation des mainteneurs du projets, seuls utilisateurs à avoir les droits en écriture sur la version maître. 

![](https://raw.githubusercontent.com/InseeFrLab/utilitR/master/pics/contributing/edit3.png)

<br>

> **Warning**
>
> **Pour faciliter le suivi et l'intégration des modifications, 
> choisir l'option ` Create a new branch for this commit and start a pull request`.
> Si la modification ne concerne que des corrections de coquilles,
> le nom de la branche doit commencer par `typo-`**. Si les propositions sont plus
> substantielles que des coquilles, le nom de la branche est libre. 


<br>

Cliquer sur `Propose changes`. Automatiquement, une page pour soumettre cette
modification au dépôt `ssphub` s'ouvre:

![](https://raw.githubusercontent.com/InseeFrLab/utilitR/master/pics/contributing/edit4.png)

Après avoir
éventuellement révisé le titre de la `Pull Request` et la description associée,
cliquer sur `Create pull request`. Cela permettra aux mainteneurs du projet
`ssphub` d'éventuellement intégrer les modifications ou de démarrer une
discussion sur les propositions de modifications. Celles-ci sont visibles
en cliquant sur l'onglet `Files changed`:

![](https://raw.githubusercontent.com/InseeFrLab/utilitR/master/pics/contributing/edit5.png)

<br>

## :three: Comment participer aux discussions collectives?

[:arrow_up: Retour à l'introduction](#one-introduction)

L'équipe du site web du réseau dispose d'un espace de discussion collective
sur les problèmes techniques et les développements futurs du site.
Cet espace de discussion est stocké sur le dépôt `Github` du projet et est
structuré sous forme d'_issues_.

Une *issue* est un fil de discussion permettant aux contributeurs du site
web (mais aussi aux personnes extérieures) d'échanger sur un sujet précis (défini par le titre de l'*issue*). Vous
pouvez consulter la liste des *issues* ouvertes
en suivant [ce lien](https://github.com/InseeFrLab/ssphub/issues).

Il est possible de contribuer aux discussions de deux façons:

- en participant à la discussion dans une *issue* existante. Pour participer à la discussion dans un _issue_, il suffit de cliquer sur le titre de l'_issue_, de lire les discussions, et de réagit dans le champ en bas de la page.
- en ouvrant une *issue* sur un nouveau sujet. Pour ouvrir une *issue*, il
suffit de [cliquer ici](https://github.com/InseeFrLab/ssphub/issues/new).

Pour des sujets plus transversaux, ou pour discuter avec les autres
membres du réseau, il est possible de rejoindre le salon de discussion dédié
sur le service de messagerie `Tchap`. Il s'agit d'un salon privé auquel vous
pouvez demander l'accès en envoyant un message privé à Lino Galiana ou un
mail à ssphub-contact@insee.fr

## :four: Comment ajouter une référence dans l'une des rubriques événements, ressources ou projets ? 

TO BE COMPLETED

## :five: Comment ajouter un nouveau _post_ au blog ?

[:arrow_up: Retour à l'introduction](#one-introduction)

> **Warning**
>
> Ajouter une nouvelle fiche thématique à la documentation représente un
> travail conséquent. Avant de se lancer dans la rédaction, il est recommandé
> d'en discuter avec l'animateur du réseau en amont via une _issue_.

La compréhension de la tuyauterie permettant de transformer les fichiers
sources (format `Markdown`) n'est pas obligatoire pour pouvoir proposer
une nouvelle page sur le site. La lecture de la partie technique de ce 
guide des contributeurs est néanmoins recommandée car
la compréhension des briques techniques mises en oeuvre
peut aider à comprendre
la mise en forme d'une page sur le site.

### Comment proposer et élaborer un nouveau post ?

La première étape consiste à __ouvrir une *issue*__ dans le
dépôt `Github`. L'_issue_ doit avoir:

- un titre explicite indiquant sur quel sujet vous voulez proposer un _post_ (toutes suggestions bienvenues);
- un contenu détaillant l'objet du _post_ et les grandes lignes de son contenu. 

Une fois que les membres du réseau participants à l'_issue_ sont d'accords
sur l'objet du _post_ et les grandes lignes de son contenu, le _post_ peut être rédigé en suivant la procédure
décrite ci-dessous et les
[contraintes formelles indiquées dans la partie suivante](#six-contraintes-formelles)


> **Warning**
>
> Ne pas travailler sur la branche `main` de son fork. Celle-ci
> servira à mettre à jour le fork pour intégrer les dernières mises à jour
> du site web.

### Utiliser un environnement de travail entièrement configuré pour disposer de l'ensemble des librairies nécessaires à la génération de la documentation

Plutôt que d'utiliser un environnement en local dont la configuration peut différer
de manière parfois significative avec l'environnement canonique qui sert à générer le site web sous `Github`,
il est recommandé d'utiliser le service préconfiguré `VSCode` du `SSP Cloud`.


[![SSPcloud](https://img.shields.io/badge/SSPcloud-Tester%20via%20SSP--cloud-informational?logo=visualstudio)](https://datalab.sspcloud.fr/launcher/ide/vscode-python?autoLaunch=false&networking.user.enabled=true&security.allowlist.enabled=false&init.personalInit=%C2%ABhttps%3A%2F%2Fraw.githubusercontent.com%2FInseeFrLab%2Fssphub%2Fcontributing%2Finit.sh%C2%BB)

## Annexe technique

### Structure d'une page 

