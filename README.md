# pagila

## Description 

Base de données pour l'application Pagila.

Fork *originalement privé* du [repository Pagila pour postgres](https://github.com/devrimgunduz/pagila). Voir le [README](./ORIGINAL_README.md) original pour plus d'informations.

## Utilisation avec docker

### Mise en marche

Copier le fichier ``.env.example`` et renommer copie ``.env``.

Définir ensuite le nom d'utilisateur et le mot de passe.

```sh
PAGILA_USER=nom d'utilisateur...
PAGILA_PASSWORD=mot de passe...
```

# Adaptabilité des scripts

Au démarrage, une substitution des "placeholders" dans ``pagila-schema.sql`` et ``pagila-data.sql`` est effectué pour utiliser les variables d'environnements.

Exemple:

```sql
-- original
ALTER SCHEMA public OWNER TO ${POSTGRES_USER};
-- devient apres subtitution
ALTER SCHEMA public OWNER TO pagila;
```
