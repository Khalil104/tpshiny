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

Lancer l'application

1. Ouvrez RStudio ou un autre IDE compatible avec R.

2. Téléchargez ou clonez ce projet.

3. Exécutez le fichier app.R dans RStudio ou R pour démarrer l'application Shiny.

shiny::runApp("chemin/vers/le/projet")

Fonctionnalités de l'application

1. Charger la base de données :
Téléversez un fichier CSV contenant les données. L'application affichera un aperçu des données et des statistiques descriptives.

2. Manipuler les données :
Vous pouvez sélectionner les colonnes que vous souhaitez afficher et manipuler.

3. Graphiques interactifs :
Choisissez parmi les trois types de graphiques :

Histogramme : Visualisez la distribution d'une variable.

Nuage de points : Explorez la relation entre deux variables.

Pairplot : Créez un graphique pairplot pour visualiser les relations entre toutes les paires de variables.

Exemple d'utilisation

1. Chargement du fichier :
Téléversez un fichier CSV contenant des données similaires à celles du dataset IRIS.

2. Manipulation des données :
Sélectionnez les colonnes que vous souhaitez analyser.

3. Visualisation :
Sélectionnez le type de graphique que vous souhaitez afficher et les colonnes correspondantes.

Déploiement

Pour déployer cette application sur un serveur, vous pouvez utiliser ShinyApps.io ou un serveur Shiny privé.

© Copyright 2024, Abdoul Rachid BISSARE 

Stratège en transformation numérique ; 

Khalipédia 's CEO 