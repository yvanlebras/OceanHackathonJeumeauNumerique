#' Run the Shiny Application
#'
#' @param ... A series of options to be used inside the app.
#'
#' @export
#' @importFrom shiny shinyApp
#' @importFrom golem with_golem_options
run_app <- function(
  dev = FALSE
) {
  require(shiny)
  require(shinyWidgets)
  require(shiny.grid)
  require(shinyTree)
  
  shinyAppDir(
    "R/", 
    options = list(
      launch.browser = TRUE
    )
  )
}
