library(shiny)
currentValue <- 1

shinyUI(pageWithSidebar(
  
  #title
  headerPanel("Fun with adding numbers to 12!!!"),
  
  #input panel
  sidebarPanel(
    numericInput("twelve", "Please enter the number 12:", value = NULL , min = 12,  max = 12),
    numericInput("otherNumber", "And now the number you'd like to add to 12:", value = NULL , min = -100000000,  max = 100000000)
  ),
  
  mainPanel(
    h3("Result:"),
    conditionalPanel(
      condition = "input.twelve == 12 && input.twelve != null && input.otherNumber != null",
      textOutput("resultText"),
      verbatimTextOutput("result")
                     
    ),
    conditionalPanel(
      condition = "input.twelve != 12 && input.twelve != null",
      h4("Please don't try to enter any number other than 12... ")
      
    )
    
   
  )
))