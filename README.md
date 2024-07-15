# pagila

## Description 

Base de données pour l'application Pagila.

Fork privé du [repository Pagila pour postgres](https://github.com/devrimgunduz/pagila). Voir l'ancien [README](./PUBLIC_README.md) pour plus d'informations.

## Utilisation avec docker

### Mise en marche

Définir dans un fichier ``.env`` l'utilisateur et le mot de passe pour la base des données.

```
PAGILA_USER=...
PAGILA_PASSWORD=...
```

Exécuter la commande suivante: ``docker compose up``

### Arrêt 

Exécuter la commande suivante: ``docker compose down``
