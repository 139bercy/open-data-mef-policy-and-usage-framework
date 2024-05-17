# Politique d'usage de la plateforme Open Data des ministères économiques et financiers `data.economie.gouv.fr`

## Présentation

Ce document est destiné aux agents du ministère de l'Économie et des Finances chargés de la publication et de la
maintenance des données ouvertes au sein de leur direction et à ce titre amenés à contribuer à la plateforme
[data.economie.gouv.fr](https://data.economie.gouv.fr).

## Usage

Le document est téléchargeable [ici](https://github.com/139bercy/data-economie-policies-and-use/releases) au format
`PDF` ainsi qu'au format `DOCX`.

Les fichiers sources sont consultables dans le dossier
[`src`](https://github.com/139bercy/data-economie-policies-and-use/tree/main/src/main.md).

## Choix du format

Les fichiers de travail sont au format [Markdown](https://docs.framasoft.org/fr/grav/markdown.html).

Ce format de fichier ouvert, à la syntaxe simple, permet d'effectuer l'essentiel des actions de traitement de texte tout
en restant léger et compatible avec les systèmes de contrôle de version, ce qui en fait un outil tout à fait compatible
avec les exigences d'un travail collaboratif.

En outre, sa portabilité permet un export simple vers des formats `HTML`, `PDF` ou `DOCX` ainsi qu'une intégration
facilitée vers des outils en ligne de gestion documentaire ou un site Web dédié.

## Édition (mode développeur)

### Installation

```
$ python -m venv venv
$ source venv/bin/activate
$ pip install -r requirements.txt
```

### Exports DOCX et PDF

La gestion et le formatage des fichiers nécessitent une version Python à jour.

**Attention** : Cette fonctionnalité nécessite :

- [Pandoc](https://pandoc.org/)
- [tmlgr (LaTeX)](https://tug.org/texlive/tlmgr.html)
- [Marianne](https://www.systeme-de-design.gouv.fr/elements-d-interface/fondamentaux-de-l-identite-de-l-etat/typographie/)

```
$ make release
```

Le fichier est disponible en sortie dans le dossier `build` aux formats suivants :

- `data-economie-politique-d-usage-<version>-main.pdf`
- `data-economie-politique-d-usage-<version>-main.docx`

### Générer une table des matières

```
$ make toc
```

## Contribuer

Se reporter à la documentation sise dans le dossier `.github` à la racine du dépôt.

## Contact

- [contact.dataeconomie@finances.gouv.fr](mailto:contact.dataeconomie@finances.gouv.fr)
