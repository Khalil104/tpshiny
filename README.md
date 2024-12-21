tpshiny

# TP sur la base de données IRIS avec Shiny

## Description

Cette application Shiny permet de charger la base de données IRIS sous format CSV, de manipuler les données, de visualiser les statistiques descriptives et de créer différents types de graphiques interactifs tels que des histogrammes, des nuages de points et des pairplots. Le projet est conçu pour aider à comprendre la manipulation et la visualisation des données avec R et Shiny.

**Créé par : Abdoul Rachid BISSARE**  
**Contact : 01 63 61 49 80**

## Fonctionnalités

1. **Chargement du fichier CSV** : Téléversez un fichier CSV contenant les données.
2. **Manipulation des données** : Sélectionnez les colonnes à afficher dans les données.
3. **Visualisation** : Choisissez parmi trois types de graphiques interactifs :
   - Histogramme
   - Nuage de points
   - Pairplot

## Prérequis

Avant d'exécuter l'application, assurez-vous d'avoir installé R ainsi que les packages nécessaires. Les packages suivants sont requis :
- `shiny` : pour l'interface utilisateur interactive.
- `ggplot2` : pour la création de graphiques.
- `GGally` : pour les graphiques pairplot.
- `readr` : pour lire les fichiers CSV.

## Installation des packages nécessaires

Si vous n'avez pas encore installé les packages requis, vous pouvez les installer avec les commandes suivantes dans R :

```r
install.packages("shiny")
install.packages("ggplot2")
install.packages("GGally")
install.packages("readr")