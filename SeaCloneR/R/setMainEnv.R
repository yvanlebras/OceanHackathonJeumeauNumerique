setMainEnv <- function() {
  main.env <- environment()
  
  # Set resources ----
  assign(
    "resources",
    reactiveValues(
      money = 40,
      quality = 40,
      administration = 40
    ),
    main.env
  )
  
  # Set bibliography -----
  doc <- navlistPanel(
    "Especes",
    tabPanel(
      "Scomber scombrus (maquereau)",
      tagList(
        h3("Apparence"),
        tags$p("Le maquereau commun est un poisson au corps fuselé. Son dos est 
        bleu-vert, zébré de raies noires, tandis que le ventre est d'un blanc
        argenté. Ses deux nageoires dorsales sont relativement espacées, il possède
        aussi des 5 ou 6 petites nageoires, appelées pinnules devant sa nageoire
        caudale. Sa queue est très échancrée. Ses écailles sont enfoncées dans 
        le derme ce qui assure à ce bon nageur un excellent hydrodynamisme. Les
        sujets adultes dépassent rarement les 50 cm, leur taille moyenne va de 
        30 à 40 cm pour un poids de 500 g à 1 kg."),
        h3("Comportement"),
        tags$p("Le maquereau peuple la plupart des mers, dont l'océan Pacifique,
        l'Atlantique et la mer Méditerranée. C'est un poisson migrateur qui vit 
        l'été dans des eaux froides avant de repartir vers des eaux plus chaudes
        en automne. Le réchauffement climatique a entraîné un déplacement de 
        l'aire de répartition de cette espèce, qui se trouve désormais dans les 
        eaux bordant le Groenland1.

        Il vit en bancs et se nourrit essentiellement de zooplancton. Cependant,
        pendant sa période de reproduction, de mars à juillet, il devient 
        prédateur et chasse les poissons de petite taille comme les sardines ou
        les anchois, ainsi que de mollusques et petits crustacés. Ses principaux
        prédateurs sont les dauphins, les thons, et bien sûr les hommes, qui en 
        pratiquent une pêche industrielle.")
      )
    ),
    tabPanel(
      "Pollachius virens (lieu noir)",
      tagList(
        h3("Apparence"),
        tags$p("Le lieu noir ou colin noir (France), ou goberge (Canada), 
        présente une mâchoire inférieure proéminente et un ventre argenté. 
        D'environ 50 cm à l'âge de 5 ans, il vit une trentaine d'années et peut 
        alors atteindre 1,3 m. C'est un prédateur endurant1,2 dont la nage est 
        relativement rapide"),
        h3("Comportement"),
        tags$p("C'est un poisson carnivore, qui effectue des migrations, autrefois
        abondant et jouant donc un rôle important dans l'écosystème marin. Son 
        cycle nycthéméral a fait l'objet d'études, qui ont par exemple montré que
        les bancs de juvéniles sont plus ou moins compacts selon l'heure du jour
        et de la nuit ou à l'aube et au crépuscule")
      )
    ),
    tabPanel(
      "Scophthalmus maximus (turbot)",
      tagList(
        h3("Apparence"),
        tags$p("Le turbot est un poisson plat gaucher, c'est-à-dire qu'il repose
        sur sa face droite. La face supérieure est recouverte de tubercules 
        osseux (des écailles transformées) épars, ce qui le distingue de la
        barbue. Il pèse en moyenne 6 kg (jusqu'à 25 kg) pour une taille allant 
        de 50 cm à 1 m."),
        h3("Comportement"),
        tags$p("Ce poisson peut vivre jusqu'à 25 ans. Il est carnivore et se 
        nourrit de petits poissons, de crustacés et de mollusques.")
      )
    ),
    "Acteurs",
    tabPanel(
      "IFREMER",
      tagList(
        h3("Domaines d'activité"),
        tags$p(
          "L'Ifremer concentre son action dans les domaines suivants :",
          tags$ul(
            tags$li("Surveillance, usage et mise en valeur des mers côtières"),
            tags$li("Surveillance et optimisation des productions aquacoles"),
            tags$li("Ressources halieutiques"),
            tags$li("Exploration et exploitation des fonds océaniques et de
                         leur biodiversité"),
            tags$li("Circulation et écosystèmes marins, mécanismes, 
                         évolution et prévision"),
            tags$li("Transfert de connaissances vers les entreprises et 
                         valorisation de ses activités"),
            tags$li("Grands équipements au service de l'océanographie")
          )
        ),
        h3("Missions"),
        tags$p("Les missions de l'IFREMER sont les suivantes :",
               tags$ul(
                 tags$li("Connaître, évaluer et mettre en valeur les ressources des 
                    océans et permettre leur exploitation durable."),
                 tags$li("Améliorer les méthodes de surveillance, de prévision, 
                    d'évolution, de protection et de mise en valeur du milieu marin
                    et côtier."),
                 tags$li("Favoriser le développement économique du monde maritime.")
               )
        )
      )
    ),
    tabPanel(
      "MNHN",
      tagList(
        h3("Domaines d'activité"),
        tags$p("Ces spécialités concernent les disciplines propres à l'histoire 
               naturelle, à savoir:",
               tags$ul(
                 tags$li("l'étude de l'organisation et du fonctionnement du monde 
                    vivant (systématique, anatomie comparée, biochimie, 
                    biophysique, physiologie...)"),
                 tags$li("l'étude du monde animal (zoologie et disciplines dérivées)"),
                 tags$li("l'étude du monde des mycètes et myxomycètes (mycologie et
                    disciplines dérivées)"),
                 tags$li("l'étude du monde végétal (botanique et disciplines dérivées)"),
                 tags$li("l'étude de la vie unicellulaire, eucaryote, archéenne et
                    bactérienne (microbiologie et disciplines dérivées)"),
                 tags$li("l'étude de la Terre et du monde minéral (géomorphologie,
                    écologie, minéralogie, pétrologie… et disciplines dérivées)"),
                 tags$li("l'étude de l'évolution de la vie, à travers ses traces 
                    minérales ou génétiques (paléontologie, génétique et 
                    disciplines dérivées)"),
                 tags$li("l'étude de l'évolution de la lignée humaine, de son insertion
                    dans l'environnement, de son impact sur les milieux, des 
                    rapports entre l'espèce humaine et les milieux, des rapports 
                    entre nature et culture (anthropologie et disciplines dérivées
                    telle l'ethnobotanique).")
               )
        ),
        h3("Missions"),
        tags$p("Les statuts fondateurs de l'actuel Muséum, en 1793, établissent
               ses cinq principales missions : ",
               tags$ul(
                 tags$li("la conservation de collections scientifiques comprenant 
                    environ 67 millions de spécimens ainsi que des espèces 
                    vivantes sur 12 sites à Paris et dans le reste de la France"),
                 tags$li("la diffusion de la culture scientifique dans les spécialités
                    propres à l'établissement"),
                 tags$li("la recherche scientifique"),
                 tags$li("l'enseignement et la formation à la recherche (master et 
                    doctorat)"),
                 tags$li("l'expertise scientifique")
               )
        )
      ) 
    ),
    "Autres ressources",
    tabPanel(
      "Sources",
      tagList(
        tags$ul(
          tags$li(
            tags$a(href="http://fishbase.org/search.php", "Fishbase")
          ),
          tags$li(
            tags$a(href="https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Accueil_principal",
                   "Wikipedia")
          )
        )
      )
    )
  )
  
  assign(
    "tree.bibliography",
    doc,
    main.env
  )
  
  # Set time ====
  assign(
    "time",
    reactiveValues(
      MONTHS = c(
        "jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec"
      ),
      month = "jan",
      tasks = reactiveValues(
        dive = FALSE,
        option = FALSE,
        event = FALSE
      )
    ),
    main.env
  )
  
  return(main.env)
}