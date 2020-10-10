# OceanHackathonJeumeauNumerique

- salle visio dédiée à notre projet : https://webconf.math.cnrs.fr/b/yva-yac-qry 

## Équipe et proposition de travail

### Ilias et Brian : 3D guys
Avec aide + ou - ponctuelle d'Élie notamment sur la création de modèle 3D via Blender par exemple

#### Tâches proposées
- Génération automatique (par code et non interaction avec GUI Unreal) du terrain via heightmap
  - voir le code source de cashgenue https://github.com/midgen/cashgenUE si possibilité de trouver si réutilisable
  - voir code source de Unreal https://github.com/EpicGames/Signup pour voir comment il procède à partir d'un PNG 16bits en dégradé de gris et si réutilisable
- Ajout auto de texture à partir fichier de données 'sédiments"
- Ajout auto de données "biologiques"

### Tristan & Tanguy : data guys
Avec aide + ou - ponctuelle d'Yvan et Élie
- Espace partagée d'échange de données : https://data-access.cesgo.org/index.php/s/mdRlZrUMwoM0Al6

#### Tâches proposées
- Regarder les données déjà présente dans l'espace de partage cesgo et voir comment elles sont organisées, si elles semblent à vue de nez intéressante, si possible les sous échantillonner pour conserver uniquement ce qui nous intéresse notamment info proche îles des Glénan.
- Pour les données bio, il faudra en plus trouver la manière de les représenter... Probabilité d'occurrence d'espèces selon endroit et période ? Si proba élevée, alors un objet blender 3d représentant cette donnée (un banc de poisson par exemple) sera affichée dans le jumeau numérique ?
- Pour données au format SIG (shapefile, geotiff and co) il faudra surement utiliser librairie GDAL sous R via rgdal par exemple.
- Ne pas hésiter à trouver de nouvelles données (bio et autres).
- Regarder si possible de trouver données AIS de la zone sur une période de temps, si possible une année ce qui permettrait de proposer une probabilité de passage de bateau à un temps donné/époque et à un endroit donné (genre Glénan début août complètement saturé de bateau, personne en hiver)
  - ce côté perturbation anthropique et différence été/hiver pourrait être potentiellement pertinente à investiguer dans le jeu....

### Élie : Game & Shiny guy
Avec aide + ou - ponctuelle d'Yvan et tous

#### Tâches proposées
- Déployer decision game basic fait sous Shiny https://community.rstudio.com/t/shiny-decisions-card-swiping-game-2020-shiny-contest-submission/58723
- Penser scénario réutilisant la base de ce jeu de décision (ou pas ;) ) à savoir card swipping game + carte de fond (mettre celle des Glénan et proposer d'y avoir des sites qu'on pourrait investiguer en 3D??) et barres de ressources..
- voir comment y inclure un jumeau numérique 3d, en HTML5 ?

## Données potentiellement intéressantes

<img src="https://github.com/yvanlebras/OceanHackathonJeumeauNumerique/raw/main/IMG_20201010_095723.jpg" width="800" />

Source des données :
- Indigeo: https://oceanhackathon.indigeo.fr/geocms/maps/oceanhackathon-wpjdbpbc#project

### Données Environnement physique
- SHOM litto3D Bathymetrie pour la 3D / dalle 0175-6760 du SHOM
- SHOM carte sédimentaire pour la texture / 

### Données Biologiques
- Sensibilité des ressources halieutiques aux activités d'extraction de granulats marins
SOURCE : IFREMER - GRANULATS MARINS

- Localisation des colonies de goelands en 2001
SOURCE : INDIGEO - IUEM

- Indice de richesse des peuplements benthiques (EUNIS) connus en Mer du Nord, Manche et Atlantique estimé en fonction de la biomasse, de l'abondance et de la richesse spécifique
SOURCE : IFREMER - GRANULATS MARINS

- Habitats benthiques du secteur de Concarneau
SOURCE : IFREMER - BIOLOGIE

- Cartes mensuelles moyennes de turbidité réalisées sur la période 2003-2010 - Décembre
SOURCE : IFREMER - OCÉANOGRAPHIE PHYSIQUE

- Carte d'habitats physiques des fonds marins Atlantique (échelle 1 / 1 000 000) - Version 2011
SOURCE : IFREMER - BIOLOGIE

- Carte des habitats intertidaux du site Natura 2000 FR5300023 - Archipel des Glénan (2005)
SOURCE : IFREMER - BIOLOGIE

- Carte de la végétation autour de l'Archipel des Glénan (1985) - polygones
SOURCE : IFREMER - BIOLOGIE

- Abondance de bar (Dicentrarchus labrax) observée lors de la campagne EVHOE
SOURCE : IFREMER - GRANULATS MARINS

- Ocean Hackathon 2020
SOURCE : OCEAN-HACKATHON

- Aires de jeu de l'Ocean Hackathon 2020
SOURCE : OCEAN-HACKATHON

- GEBCO_LATEST
SOURCE : GEBCO - UNESCO

- EMODnet 
  - Dataset information website: https://www.emodnet-biology.eu/thermal-affinities-european-marine-species
  - GitHub page for the dataset: https://github.com/EMODnet/EMODnet-Biology-thermal-traits

### Climat

### Météo

### impact humain
- AIS
  - AIS GLOBAL / SOURCE : UNIVERSITÉ LE HAVRE - AISHUB
  - IRENAV - Heterogeneous Integrated Dataset for Maritime Intelligence, Surveillance, and Reconnaissance / SOURCE : OCEAN-HACKATHON https://zenodo.org/record/1167595#.X4F5KtAzbcc

## Let's go for the "Jeu" !!!

<img src="https://github.com/yvanlebras/OceanHackathonJeumeauNumerique/raw/main/IMG_20201010_114951.jpg" width="800" />
