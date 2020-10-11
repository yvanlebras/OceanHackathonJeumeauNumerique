#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  # media
  addResourcePath(
    "media",
    system.file("app/media", package = "SeaCloneR")
  )
  
  tagList(
    # CSS
    htmltools::includeCSS(
      system.file("app/www/styles.css", package = "SeaCloneR")
    ),
    # enable JS
    shinyjs::useShinyjs(),
    # List the first level UI elements here 
    shiny.grid::gridPage(
      # main grid ----
      areas = c(
        "_title _title _title",
        "calendar gridmap insight",
        "footer footer footer"
      ),
      rows = "120px 1fr 30px",
      
      # header ----
      div(
        class = "_title",
        style = "padding: 5px",
        tags$img(
          src = "media/logo.png",
          height = "80px", 
          width = "80px"
        ),
        "SeaClone"
      ),
      
      # calendar ----
      shiny.grid::gridPanel(
        class = "calendar",
        areas = c(
          "task task task  ",
          "jan feb mar",
          "apr may jun",
          "jul aug sep",
          "oct nov dec"
        ),
        rows = "1fr 2fr 2fr 2fr 2fr",
        columns = "1fr 1fr 1fr",
        shiny.grid::gridPanel(
          id = "calendar_task",
          class = "task",
          areas = c("event next"),
          columns = c("1fr 100px"),
          div(class="event", textOutput("event")),
          div(class="next", shinyjs::disabled(
            actionButton("next", "Fini !", icon("chevron-right"))
          ))
        ),
        div(
          id = "calendar_jan",
          class="jan",
          "Janvier",
          uiOutput("jan")
        ),
        div(
          id = "calendar_feb",
          class="feb",
          "Fevrier",
          uiOutput("feb")
        ),
        div(
          id = "calendar_mar",
          class="mar",
          "Mars",
          uiOutput("mar")
        ),
        div(
          id = "calendar_apr",
          class="apr",
          "Avril",
          uiOutput("avr")
        ),
        div(
          id = "calendar_may",
          class="may",
          "Mai",
          uiOutput("mai")
        ),
        div(
          id = "calendar_jun",
          class="jun",
          "Juin",
          uiOutput("jun")
        ),
        div(
          id = "calendar_jul",
          class="jul",
          "Juillet",
          uiOutput("jul")
        ),
        div(
          id = "calendar_aug",
          class="aug",
          "Aout",
          uiOutput("aug")
        ),
        div(
          id = "calendar_sep",
          class="sep",
          "Septembre",
          uiOutput("sep")
        ),
        div(
          id = "calendar_oct",
          class="oct",
          "OCtobre",
          uiOutput("oct")
        ),
        div(
          id = "calendar_nov",
          class="nov",
          "Novembre",
          uiOutput("nov")
        ),
        div(
          id = "calendar_dec",
          class="dec",
          "Decembre",
          uiOutput("dec")
        )
      ),
      
      # map ----
      # * overlay 10x10 ====
      shiny.grid::gridPanel(
        class = "gridmap",
        # Background image
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
        
        # * background ====
        div(
          class = "a1",
          tags$img(
            src = "media/map.png",
            width = "750px", 
            height = "750px"
          )
        ),
        # * quimper ====
        div(
          class = "e1 town", 
          actionButton(
            "university",
            "",
            icon = icon("user-graduate")
          )
        ),
        # * benodet ====
        div(
          class = "e5 town", 
          actionButton(
            "opportunist_data",
            "",
            icon = icon("anchor")
          )
        ),
        # * port-la-foret ====
        div(
          class = "g4 town", 
          actionButton(
            "private_actor",
            "",
            icon = icon("credit-card")
          )
        ),
        # * concarneau ====
        div(
          class = "i5 town", 
          actionButton(
            "sbm",
            "",
            icon = icon("microscope")
          )
        ),
        # * les glenans ====
        div(
          class = "g8 town", 
          actionButton(
            "dive_1",
            "",
            icon = icon("water")
          )
        ),
        div(
          class = "i8 town", 
          actionButton(
            "dive_2",
            "",
            icon = icon("water")
          )
        )
      ),
      
      # insight ----
      shiny.grid::gridPanel(
        class = "insight",
        areas = c(
          "money",
          "quality",
          "administration",
          "bibliography"
        ),
        rows = "1fr 1fr 1fr 10px 1fr",
        
        # * money ====
        div(
          class = "money gauge",
          fluidRow(
            column(1, icon("euro-sign")),
            column(10, offset = 1, uiOutput("money_gauge"))
          )
        ),
        
        # * quality ====
        div(
          class = "quality gauge",
          fluidRow(
            column(1, icon("flask")),
            column(10, offset = 1, uiOutput("quality_gauge"))
          )
        ),
        
        # * administration ====
        div(
          class = "administration gauge",
          fluidRow(
            column(1, icon("landmark")),
            column(10, offset = 1, uiOutput("administration_gauge"))
          )
        ),
        
        # * bibliography ====
        div(
          class = "bibliography",
          actionButton(
            "bibliography",
            h3("Bibliographie"),
            icon = icon("book-open", class = "h3")
          )
        )
      )
    ) # end of gridpage
  )
}
