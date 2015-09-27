library(shiny)
add <- function(num) 12 + num


shinyServer(
  function(input, output) {

    output$result <- renderText({add(input$otherNumber)})
    output$resultText <- renderText(paste("Great job! Adding 12 to the number ", input$otherNumber, " yields:", sep = ""))
  }
)