#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    fluidPage(
      h1("SeaClone"),
      shiny.grid::gridPanel(
        tags$div(class="map"),
        areas = c(
          "a1 b1 c1 d1 e1 f1 g1 h1 i1 j1",
          "a2 b2 c2 d2 e2 f2 g2 h2 i2 j2",
          "a3 b3 c3 d3 e3 f3 g3 h3 i3 j3",
          "a4 b4 c4 d4 e4 f4 g4 h4 i4 j4",
          "a5 b5 c5 d5 e5 f5 g5 h5 i5 j5",
          "a6 b6 c6 d6 e6 f6 g6 h6 i6 j6",
          "a7 b7 c7 d7 e7 f7 g7 h7 i7 j7",
          "a8 b8 c8 d8 e8 f8 g8 h8 i8 j8",
          "a9 b9 c9 d9 e9 f9 g9 h9 i9 j9",
          "a10 b10 c10 d10 e10 f10 g10 h10 i10 j10"
        )
      )
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'SeaClone'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

