# Politique d'usage de la plateforme data.economie.gouv.fr

## Public

Cette publication est destinée aux agents du Ministère de l'économie et des finances chargés de la publication et de la
maintenance des données ouvertes au sein de leur direction et à ce titre amenés à contribuer à la plateforme
[data.economie.gouv.fr](https://data.economie.gouv.fr).

## Fonctionnalités

### Générer le document au format docx

**Attention** : Cette fonctionnalité nécessite Pandoc.

```
$ make release
```

Le fichier est disponible en sortie dans le dossier `build` au format suivant :
`data-economie-politique-d-usage-<version>-main.docx`

### Générer le document au format PDF

```
$ mdpdf -o main.pdf --footer ",,{page}," src/main.md
```

## Contributions

Toutes les contributions sont les bienvenues, soit en utilisant la boîte de contact renseignée ci-dessous ou en faisant
une pull request.

Les commits suivent la spécification [conventional commits](https://www.conventionalcommits.org/fr/v1.0.0/).

La gestion et le formatage des fichiers nécessitent une version Python à jour.

Les montées de version restent une tâche à la charge de l'administrateur.

```
$ python -m venv venv
$ source venv/bin/activate
$ pip install -r requirements.txt
$ pre-commit install --install-hooks && pre-commit autoupdate
```

### Périmètre de la gestion sémantique de version

Un utilitaire de gestion sémantique de version a été ajouté, qui ne prend pour objet que le contenu textuel dans le
dossier `./src`, soit les politiques d'usage de la plateforme.

Les fonctionnalités permettant de générer des documents à des formats divers (`pdf`, `docx`, etc.), autres ajout de code
de traitement, pré-commits, etc, ne rentrent pas dans ce cadre.

**Attention** : La gestion sémantique de version est une tâche administrateur.

## Contact

- [contact.dataeconomie@finances.gouv.fr](mailto:contact.dataeconomie@finances.gouv.fr)
