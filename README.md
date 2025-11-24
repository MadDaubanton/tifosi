
-----

## 📁 Projet Base de Données : TIFOSI Street-Food

Ce projet a pour objectif de concevoir et de mettre en œuvre une base de données relationnelle MySQL pour le restaurant de Street-Food italien, Le Tifosi, en s'appuyant sur un modèle conceptuel (UML Class Diagram) fourni.

Le livrable respecte toutes les consignes de création de base de données, d'administration d'utilisateur, d'insertion de données de test et de sauvegarde.

-----

## 🛠️ Prérequis et Configuration Locale

Pour importer et accéder à cette base de données localement, vous devez disposer d'un environnement serveur (type XAMPP, WAMP, MAMP, ou un serveur MySQL standalone) et d'un outil d'administration comme phpMyAdmin ou MySQL Workbench.

### 🔑 Accès à la Base de Données

Le script de schéma crée une base de données nommée `tifosi` et l'utilisateur administrateur requis par le cahier des charges.

| Rôle | Nom d'utilisateur | Mot de passe | Base de données |
| :--- | :--- | :--- | :--- |
| **Administrateur** | `tifosi` | **`SuperSecurePassword123`** (ou le mot de passe que vous avez utilisé) | `tifosi` |

-----

## 🚀 Étapes d'Importation (Reconstruction de la Base)

Vous trouverez trois scripts SQL dans ce répertoire. Ils peuvent être exécutés séquentiellement pour reconstruire entièrement la base de données.

### 1\. Création du Schéma et de l'Utilisateur (`create_tifosi_schema.sql`)

Ce script crée la base de données, l'utilisateur `tifosi`, et toutes les tables avec leurs contraintes (clés primaires et étrangères).

```bash
# Exécuter ce script en premier via phpMyAdmin (onglet SQL)
# ou via la ligne de commande MySQL:
mysql -u root -p < create_tifosi_schema.sql
```

### 2\. Insertion des Données de Test (`add_tifosi_data.sql`)

Ce script peuple toutes les tables (Client, Focaccia, Menu, etc.) avec les données de test requises, en respectant toutes les contraintes de clés étrangères.

```bash
# Assurez-vous d'être dans la base 'tifosi' avant d'exécuter:
mysql -u tifosi -p < add_tifosi_data.sql
```

### 3\. Fichier de Sauvegarde (`tifosi_backup.sql`)

Ce fichier est le *dump* complet de la base de données finale (structure + données), exporté après l'achèvement du projet. Il peut servir à restaurer l'état complet du projet en une seule commande.

```bash
# Pour restaurer la base de données complète en une seule étape:
mysql -u root -p < tifosi_backup.sql
```

-----

## 📋 Structure du Modèle

La base de données `tifosi` se compose de 9 tables, dont 4 tables de jonction (`achete`, `paye`, `comprend`, `contient`) gérant les relations Many-to-Many.

  * **Entités Principales:** `client`, `focaccia`, `ingredient`, `marque`, `boisson`, `menu`.
  * **Relations Clés:**
      * **One-to-Many (`appartient` / `est constitué`):** Géré par des clés étrangères dans les tables dépendantes (`boisson`, `menu`).
      * **Many-to-Many (`achete`, `paye`, `comprend`, `contient`):** Géré par des tables de jonction avec des clés primaires composites.
