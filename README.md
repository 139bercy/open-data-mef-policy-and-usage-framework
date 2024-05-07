# Politique d'usage de la plateforme data.economie.gouv.fr

## Public

Cette publication est destinée aux agents du Ministère de l'économie et des finances chargés de la publication et de la
maintenance des données ouvertes au sein de leur direction et à ce titre amenés à contribuer à la plateforme
[data. economie.gouv.fr](https://data.economie.gouv.fr).

## Fonctionnalités

### Générer le document au format docx

**Attention**: Cette fonctionnalité nécessite Pandoc.

```
$ bin/to-docx.sh src/main.md
```

## Contributions

Toute contribution est la bienvenue.

Les commits suivent la spécification [conventional commits](https://www.conventionalcommits.org/fr/v1.0.0/).

```
$ python -m venv venv
$ source venv/bin/activate
$ pip install -r requirements.txt
$ pre-commit install
$ pre-commit autoupdate
```

## Contact

- [contact.dataeconomie@finances.gouv.fr](mailto:contact.dataeconomie@finances.gouv.fr)
