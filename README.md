# Politique d'usage de la plateforme data.economie.gouv.fr

## Public

Cette publication est destinée aux agents du Ministère de l'économie et des finances chargés de la publication et de la
maintenance des données ouvertes au sein de leur direction et à ce titre amenés à contribuer à la plateforme
[data.economie.gouv.fr](https://data.economie.gouv.fr).

## Choix du format

Les fichiers de travail sont au format [Markdown](https://docs.framasoft.org/fr/grav/markdown.html). Ce format de
fichier ouvert à la syntaxe simple permet d'effectuer l'essentiel des actions de traitement de texte tout en restant
léger, permet un contrôle de version tout à fait compatible avec les exigences d'un travail collaboratif et offre une
portabilité simple vers des formats HTML, PDF ou DOCX.

## Fonctionnalités

### Générer le document au format docx

**Attention** : Cette fonctionnalité nécessite Pandoc.

```
$ make release
```

Le fichier est disponible en sortie dans le dossier `build` au format suivant :
`data-economie-politique-d-usage-<version>-main.docx`

### Générer le document au format PDF (Beta)

```
$ mdpdf -o main.pdf --footer ",,{page}," src/main.md
```

## Contributions

La gestion et le formatage des fichiers nécessitent une version Python à jour. Les commits suivent la spécification
[conventional commits](https://www.conventionalcommits.org/fr/v1.0.0/).

```
$ python -m venv venv
$ source venv/bin/activate
$ pip install -r requirements.txt
```

**Attention** : Les montées de version restent une tâche à la charge de l'administrateur.

### Pre-commit hooks

Pour garantir un formatage uniforme, un certain nombre de `pre-commits` hooks ont été ajoutés :

- `mdformat` : contrôle du formatage des fichiers _markdown_
- `commitizen` : contrôle du formatage des commits au format pré-cité

Pour les installer :

```
$ pre-commit install --install-hooks && pre-commit autoupdate
```

### Périmètre de la gestion sémantique de version

Un utilitaire de gestion sémantique de version a été ajouté, qui ne prend pour objet que le contenu textuel dans le
dossier `./src`, soit les politiques d'usage de la plateforme.

Les fonctionnalités permettant de générer des documents à des formats divers (`pdf`, `docx`, etc.), autres ajout de code
de traitement, pré-commits, etc, ne rentrent pas dans ce cadre.

À des fins documentaires, vous trouverez la liste des commandes dans le fichier `Makefile`.

**Attention** : La gestion sémantique de version est une tâche administrateur.

## Contact

- [contact.dataeconomie@finances.gouv.fr](mailto:contact.dataeconomie@finances.gouv.fr)
