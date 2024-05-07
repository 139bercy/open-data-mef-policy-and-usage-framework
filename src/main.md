## Introduction

### Objectif du document

Le présent document vise à établir des directives claires pour la plateforme open data du Ministère des Finances data.economie.gouv.fr.

L'objectif est de fournir aux producteurs de données des directions un cadre de référence pour la publication, la gestion et l'utilisation des jeux de données ministériels.

Ces normes et ces bonnes pratiques ont pour finalité d'offrir à nos réutilisateurs une interface cohérente sur nos activités tout en garantissant un certain niveau de qualité.

### Importance de la normalisation

Cet effort de normalisation présente plusieurs avantages :

- **Qualité** : Garantir un niveau de pertinence et de fiabilité des données utilisées
- **Accessibilité** : Une plateforme bien structurée et documentée facilite la recherche, la découverte et l'utilisation des données
- **Interopérabilité** : Adopter des standards et des référentiels pour les données ainsi que les métadonnées facilite leur utilisation intégrée
- **Confiance** : Des pratiques transparentes renforcent la confiance des utilisateurs et valorise notre mission de service public.

## Politique d'utilisation de la plateforme

### Accès et autorisation

L'accès à la plateforme data.economie.gouv.fr n'est autorisé qu'aux agents du Ministère des Finances habilités, après demande auprès de l'administrateur (contact.dataeconomie@finances.gouv.fr).

La gestion des identités et des accès est effectuée par les administrateurs de la plateforme, qui attribuent les droits appropriés en fonction des responsabilités de chaque utilisateur.

Ceux-ci sont priés de se conformer aux politiques et procédures de sécurité de l'organisation lors de l'accès à la plateforme, notamment :

- les comptes doivent être personnels (pas de boîte à lettre fonctionnelle),
- les comptes ne doivent pas être partagés entre utilisateurs.

### Responsabilité des producteurs de données

Les producteurs de données sont responsables de la qualité et de l'intégrité des jeux de données qu'ils publient sur la plateforme. Ceci inclut la vérification de l'exactitude des données et des métadonnées, leur mise à jour éventuelle ainsi que la résolution rapide des problèmes de qualité signalés par les utilisateurs.

Les producteurs de données sont également tenus de garantir que les jeux de données rendus publics - hors usage restreint - ne contiennent pas d'informations sensibles ou confidentielles : un jeu de données rendu public est moissonné de manière programmatique par plusieurs plateformes, dont la plateforme Open Data data.gouv.fr.

### Versionnement des jeux de données

De manière à assurer la traçabilité et la cohérence des jeux de données, un numéro de version doit être associé à chaque jeu de données publié sur la plateforme. A cette fin, nous préconisons en matière de gestion sémantique de version l'emploi du standard [SemVer 2.0.0](https://semver.org/lang/fr/) : `<majeur>.<mineur>.<patch>`

Les producteurs sont tenus de documenter clairement soit dans un fichier texte en pièce jointe type `changelog` ou en description les modifications apportés à chaque version des jeux de données, y compris les mises à jour, les corrections d'erreur et les ajouts de nouvelles données.

## Structure des jeux de données

### Conventions de nommage

> Selon que notre idée est plus ou moins obscure,
> L’expression la suit, ou moins nette, ou plus pure.
> Ce que l’on conçoit bien s’énonce clairement,
> Et les mots pour le dire arrivent aisément. – Boileau, *Art Poétique*, Chant I

Principes généraux :

- **Clarté et concision** : les noms des jeux de données ou des fichiers joints doivent être compréhensibles par un large public : doivent être évités autant que possible les acronymes ou les abréviations obscurs,
- **Uniformité** : de manière à faciliter l'identification des jeux de données et leur regroupement, une structure de nommage cohérente devra être adoptée pour tous les jeux de données (cf. ci-dessous),
- **Encodage** : les jeux de données seront encodés au format `utf-8`, un format d'encodage désormais courant compatible ASCII et devenu standard facilitant la compatibilité et les performances,
- **Mots-clés** : intégrer des mots clefs dans les noms des jeux de données permet d'améliorer leur référencement : qu'ils disent ce qu'ils fassent et qu'ils fassent ce qu'ils disent.
- **Noms** : les noms utilisés pour les jeux de données, les titres, les champs doivent respecter autant que possible un vocabulaire commun et demeurer explicites à l'utilisateur non averti

### Identifiants et noms des jeux de données

Par "identifiant", nous entendons "identifiant technique", soit l'identifiant unique d'un jeu de données sur la plateforme data.economie.gouv.fr, mais également sur les plateformes qui réutilisent nos jeux de données, comme data.gouv.fr.

**Attention** : Le changement d'identifiant technique sur Data Economie est une opération administrateur.

- Il doit être défini avant la publication
- Il ne doit pas être changé après avoir été mis en production

Par "nom", nous entendons la chaîne de caractère identifiant le jeu de données sur la plateforme, soit ce qui est affiché à l'utilisateur soit sur la page du jeu de données lui-même, mais également dans le moteur de recherche.

Quelques considérations :

- Préférer le tiret court (1/4 de cadratin) au tiret bas pour les identifiants des jeux de données,
- Nommer les identifiants techniques des jeux de données en fonction de leur environnement : `test-<dataset_name>` ; `preprod-<dataset_name>`,
- Les variables *environnement* à mentionner sont `test`et `preprod`, la production est considérée par défaut,
- Nommer les identifiants des jeux de données en fonction de leur périmètre de diffusion : `<env>-restreint-<dataset_name>` ; `<env>-interne-<dataset_name>`
- Les noms des jeux de données sont écrits autant que possible en français courant.
- Les variables *environnement* et périmètre de diffusion sont notées entre crochets dans les jeux de données

*Exemple* :
- Identifiant technique : `test-interne-prix-des-carburants-v2`
- Nom du jeu de données : `[Test][Interne] Prix des carburants v2`

**Attention** : La suppression d'un jeu de données public non restreint est une opération administrateur.

- Adresser la demande à l'équipe d'administration

### Gestion des sources

La plateforme data.economie.gouv.fr est la plateforme Open Data du Ministère des finances. A ce titre, elle ne doit contenir que des jeux de données produits par le Ministère des Finances.

**Attention** : La plateforme data.gouv.fr, qui reprend par moissonnage le contenu de la plateforme data.economie.gouv.fr ne peut pas être une source de données.

## Format et structure des fichiers de données

Le format et la manière avec laquelle un fichier est structuré ont une forte influence sur son accessibilité, sa lisibilité et sa réutilisation.

Principes généraux :

- **Encodage** : Les fichiers doivent être encodés au format `utf-8`
- **Formats standardisés** : Nous privilégierons les formats standardisés et ouverts tels que `CSV`, `JSON`, `XML`, `TXT`
- **Formats ouverts** : Nous chercherons à éviter :
    1) les formats propriétaires (`docx`, `xlsx`) ;
    2) le format PDF ;
    3) les formats compressés (`zip`, `tar.gz`)
- **Normalisation des valeurs** :
    - Les champs date doivent suivre le standard ISO 8601 : `AAAA-MM-JJ HH:MM:SS.CCC`
    - Les noms des champs doivent respecter des conventions de nommage cohérentes (pas de majuscules, séparateurs identiques)

### Ouverture des jeux de données

Tout jeu de données ouvert est ensuite moissonné par les plateformes data.gouv.fr et peut potentiellement entrer dans la chaîne de dépendance de systèmes d'information tiers.

Les jeux de données de test ne doivent être ouverts qu'à un public restreint en accordant aux personnes habilités les droits adaptés, en lecture et / ou en écriture.

N'hésitez pas à solliciter l'aide de l'équipe d'administration.
