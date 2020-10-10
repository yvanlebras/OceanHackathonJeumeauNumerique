#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # List the first level UI elements here 
    shiny.grid::gridPage(
      # main grid ----
      areas = c(
        "header header header",
        "time time time",
        "left gridmap right"
      ),
      rows = "75px 75px 1fr",
      
      # header ----
      div(
        class = "header",
        style = "background-color: #28a992; font-size: 40px; padding: 5px",
        "SeaClone"
      ),
      
      
      # time ----
      div(
        class = "time",
        
      ),
      
      # left ----
      div(
        class = "left"
      ),
      
      # grid ----
      # overlay 10x10
      shiny.grid::gridPanel(
        class = "gridmap",
        # Background image
        # shinyWidgets::setBackgroundImage(
        #   src = "/map.png" #, width="500px", height="500px"
        # ),
        areas = c( # avoid hX since it is a css class
          "a1 b1 c1 d1 e1 f1 g1 i1 j1 k1",
          "a2 b2 c2 d2 e2 f2 g2 i2 j2 k2",
          "a3 b3 c3 d3 e3 f3 g3 i3 j3 k3",
          "a4 b4 c4 d4 e4 f4 g4 i4 j4 k4",
          "a5 b5 c5 d5 e5 f5 g5 i5 j5 k5",
          "a6 b6 c6 d6 e6 f6 g6 i6 j6 k6",
          "a7 b7 c7 d7 e7 f7 g7 i7 j7 k7",
          "a8 b8 c8 d8 e8 f8 g8 i8 j8 k8",
          "a9 b9 c9 d9 e9 f9 g9 i9 j9 k9",
          "a10 b10 c10 d10 e10 f10 g10 i10 j10 k10"
        ),
        rows = "75px 75px 75px 75px 75px 75px 75px 75px 75px 75px",
        columns = "75px 75px 75px 75px 75px 75px 75px 75px 75px 75px",
        
        div(
          class = "a1",
          tags$img(src = "/map.png", width = "750px", height = "750px")
        ),
        div(
          class = "e1 town", 
          actionButton(
            "university",
            "Quimper"
          )
        ),
        div(
          class = "e5 town", 
          actionButton(
            "opportunist_data",
            "Benodet"
          )
        ),
        div(
          class = "g4 town", 
          actionButton(
            "private_actor",
            "Port-la-Foret"
          )
        ),
        div(
          class = "i5 town", 
          actionButton(
            "sbm",
            "Concarneau"
          )
        ),
        div(
          class = "g9 town", 
          actionButton(
            "dive",
            "Les Glenans"
          )
        )
      ),
      
      # right ----
      shiny.grid::gridPanel(
        class = "right",
        areas = c(
          "money",
          "quality",
          "administration",
          "blank",
          "bibliography"
        ),
        
        div(
          class = "money gauge",
          icon("euro-sign") # "Money"
        ),
        
        div(
          class = "quality gauge",
          icon("flask") # "Quality"
        ),
        
        div(
          class = "administration gauge",
          icon("landmark") # "Administration"
        ),
        
        div(
          class = "blank",
          tags$hr()
        ),
        
        div(
          class = "bibliography",
          actionButton(
            "biblio",
            "Bibliography"
          )
        )
      )
    ) # end of gridpage
  )
}
