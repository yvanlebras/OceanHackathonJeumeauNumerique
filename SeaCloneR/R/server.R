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
  browser()
  # Event
  
  # Months display
  sapply(main.env$time$MONTHS, function(mon) {
    output[[mon]] <- renderUI({
      mon.ind <- match(mon, isolate(main.env$time$MONTHS))
      cur.ind <- match(isolate(main.env$time$month), isolate(main.env$time$MONTHS))
      if(mon.ind < cur.ind)
        return(
          tagList(
            tags$img(src = "/stamp.png", width = "750px", height = "750px")
          )
        )
      else
        return(tagList())
    })
  })
  
  # Time pass
  observeEvent(input$`next`, {
    
  })
  
  # Interactions ====
  
  observeEvent(input$university, {
    
  })
  observeEvent(input$opportunist_data, {
    
  })
  observeEvent(input$private_actor, {
    
  })
  observeEvent(input$sbm, {
    
  })
  observeEvent(input$dive, {
    
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
