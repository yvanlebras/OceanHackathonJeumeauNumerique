#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  observeEvent(input$dev, {
    browser()
  })
  
  # Set up ====
  main.env <- setMainEnv() 
  
  # Gauges =====
  
  # * money ----
  output$money_gauge <- renderUI({
    div(
      class = "filled_gauge",
      style = paste0("
        width:", (10+main.env$resources$money)/1.1,"%;
        background-color: gold;
      ")
    )
  })
  
  # * quality ----
  output$quality_gauge <- renderUI({
    div(
      class = "filled_gauge",
      style = paste0("
        width:", (10+main.env$resources$quality)/1.1,"%;
        background-color: steelblue;
      ")
    )
  })
  
  # * administration ----
  output$administration_gauge <- renderUI({
    div(
      class = "filled_gauge",
      style = paste0("
        width:", (10+main.env$resources$administration)/1.1,"%;
        background-color: blueviolet;
      ")
    )
  })
  
  # Run game ====
  
  # * Tuto ----
  showModal(
    ui = modalDialog(
      title = "Bienvenue dans SeaClone !",
      tagList(
        tags$p("Vous voici dans la peau d'un chercheur pour un an. Mois après 
               mois, vous devrez effectuer les choix nécessaires au bon déroulé
               des missions qui sont les vôtres: évaluer les évolutions de la 
               biodiversité d'une espèce de la faune marine et identifier les 
               potentielles causes de son altération."),
        tags$p("Vous êtes basé à la", tags$b("Station de Biologie Marine de 
               Concarneau"), icon("microscope"), ". Vous pouvez effectuer vos
               observations au large de ", tags$b("l'archipel des Glénans"), 
               icon("water"), ". En cas de besoin, vous pourrez engager un bureau
               d'études à ", tags$b("Port-la-Forêt"), icon("credit-card"), " ou
               même financer le stage d'un étudiant de ", tags$b("Quimper"),
               icon("graduate-user"), ". Une autre méthode consistera à faire 
               appel aux plaisanciers de passage à ", tags$b("Bénodet"), icon("anchor"),
               " afin de récolter des données dites 'opportunistes'. Enfin, il
               ne faut pas hésiter à faire appel à la ", tags$b("bibliographie"), 
               icon("book-open"), " accumulée sur le sujet qui vous intéresse: ",
               tags$b(tags$i("Scomber scombrus"), ", ou maquereau commun."))
      ),
      footer = modalButton("C'est parti !")
    )
  )
  
  # * Time ----
  # browser()
  # Event
  
  output$event <- renderText(
    "Météo favorable pour la saison."
  )
  # Months display
  # sapply(main.env$time$MONTHS, function(mon) {
  #   output[[mon]] <- renderUI({
  #     mon.ind <- match(mon, isolate(main.env$time$MONTHS))
  #     cur.ind <- match(isolate(main.env$time$month), isolate(main.env$time$MONTHS))
  #     if(mon.ind < cur.ind)
  #       return(
  #         tagList(
  #           tags$img(src = "/stamp.png", width = "750px", height = "750px")
  #         )
  #       )
  #     else
  #       return(tagList())
  #   })
  # })
  
  # Time pass
  observeEvent(input$`next`, {
    
  })
  
  # Interactions ====
  
  # * Stagiaire ----
  observeEvent(input$university, {
    showModal(
      modalDialog(
        title = "Stages",
        tagList(
          tags$p("Un stage étudiant est l'occasion parfaite pour mutualiser 
                 productivité et formation. Vous vous libérerez du temps et 
                 pourrez vous consacrer davantage à certaines tâches. En 
                 contrepartie, votre ligne budgétaire pourra être durablement
                 impactée."),
          actionButton("recruit_intern", "Stagiaire", icon("plus")),
          span(
            span(icon("euro-sign"), icon("minus"), style = "color: red"),
            span(icon("flask"), icon("plus"), style = "color:green")
          )
        ),
        footer = modalButton("Fermer")
      )
    )
  })
  # * Plaisanciers ----
  observeEvent(input$opportunist_data, {
    showModal(
      modalDialog(
        title = "Plaisanciers",
        tagList(
          tags$p("De nombreux plaisanciers prendront part à des activités 
                 scientifiques au milieu de leur temps libre. Vous 
                 pouvez également démarcher les pêcheurs en dehors des 
                 saisons touristiques. Cependant, l'assiduité et la rigueur
                 de chacun est variable."),
          actionButton("recruit_tourist", "Plaisancier", icon("plus")),
          span(
            span(icon("flask"), icon("question"), style = "color:blue")
          )
        ),
        footer = modalButton("Fermer")
      )
    )
  })
  # * Bureau étude ----
  observeEvent(input$private_actor, {
    showModal(
      modalDialog(
        title = "Bureau d'études",
        tagList(
          tags$p("Les bureaux d'étude de Fouesnant sauront vous apporter une forte
                 contribution dans vos travaux. Professionnels qualifiés, ils 
                 suivront à la lettre les protocoles que vous leur fournirez et 
                 réaliseront leurs tâches rapidement. Néanmoins, une telle aide 
                 a un coût et n'est pas du goût de tous ..."),
          actionButton("recruit_private", "Bureau d'étude", icon("plus")),
          span(
            span(icon("euro-sign"), icon("minus"), icon("minus"), style = "color: red"),
            span(icon("flask"), icon("plus"), icon("plus"), style = "color:green"),
            span(icon("landmark"), icon("minus"), icon("minus"), style = "color: red")
          )
        ),
        footer = modalButton("Fermer")
      )
    )
  })
  # * SBM ----
  observeEvent(input$sbm, {
    showModal(
      modalDialog(
        title = "Station de Biologie Marine",
        tagList(
          tags$p("Voici vos bureaux. Vous pourrez prendre du temps ici afin 
                 d'exploiter les données collectées lors de vos différentes 
                 plongées."),
          helpText("Pas d'option disponible tant que vous n'avez pas collecté
                    de donnée.")
        ),
        footer = modalButton("Fermer")
      )
    )
  })
  # * Glenans ----
  observeEvent(input$dive_1, {
    showModal(
      modalDialog(
        title = "Site de plongée G8",
        size = "l",
        tagList(
          HTML('<iframe width="560" height="315" 
          src="https://www.youtube.com/embed/QXFHTW2sxBc?autoplay=1&loop=1"
          frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope;
          picture-in-picture" allowfullscreen></iframe>')
        ),
        footer = modalButton("Fermer")
      )
    )
  })
  observeEvent(input$dive_2, {
    showModal(
      modalDialog(
        title = "Site de plongée I8",
        size = "l",
        tagList(
          HTML('<iframe width="560" height="315" 
          src="https://www.youtube.com/embed/WDdUWBVd-cE?autoplay=1&loop=1"
          frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope;
          picture-in-picture" allowfullscreen></iframe>')
        ),
        footer = modalButton("Fermer")
      )
    )
  })
  
  # * Bibliography ----
  observeEvent(input$bibliography, {
    showModal(
      ui = modalDialog(
        title = "Bibliographie",
        main.env$tree.bibliography,
        size = "l",
        footer = modalButton("Fermer", icon("book"))
      )
    )
  })
}
