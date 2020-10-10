#' Run the Shiny Application
#'
#' @param ... A series of options to be used inside the app.
#'
#' @export
#' @importFrom shiny shinyApp
#' @importFrom golem with_golem_options
run_app <- function(
  ...
) {
  require(shiny)
  require(shinyWidgets)
  require(shiny.grid)
  
  shinyAppDir("R/")
}
