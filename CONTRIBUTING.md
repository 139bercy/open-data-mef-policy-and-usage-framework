# Contributions

Tout d'abord, merci de prendre de votre temps pour contribuer !

Toutes les contributions sont bienvenues :

- Ajoutez une étoile au projet
- Parlez-en autour de vous
- Faites référence au projet dans vos propres travaux

## J'ai une question

Avant de soumettre quoi que ce soit, consultez d'abord la documentation.

Si vous ne trouvez pas ce que vous cherchez :

- Vérifiez que vous utilisez une version à jour,
- Vérifiez qu'une [issue](https://github.com/139bercy/data-economie-policies-and-use/issues) n'a pas déjà été ouverte
- Si oui, n'hésitez pas à y ajouter un commentaire,
- Sinon, ouvrez une [issue](https://github.com/139bercy/data-economie-policies-and-use/issues) ou contactez-nous,
- Donnez le plus de contexte possible à vos remarques,
- Utilisez un **titre clair et descriptif** pour l'issue afin d'identifier la suggestion,
- Fournissez une **description étape par étape de l'amélioration suggérée** aussi détaillée que possible,
- **Expliquez pourquoi cette amélioration serait utile** pour la plupart des utilisateurs.

Vous pouvez également signaler les autres projets qui l'ont mieux résolu et qui pourraient servir d'inspiration.

## Je propose des changements

### Installation

Vérifiez que vous avez bien une version de Python à jour et que toutes les dépendances sont bien installées (cf.
README.md)

### Commits

Les commits suivent la spécification [conventional commits](https://www.conventionalcommits.org/fr/v1.0.0/).

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

**Attention** : La gestion sémantique de version reste une tâche d'administration.
