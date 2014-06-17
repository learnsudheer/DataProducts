# Calculate Function
diabeteseRisk <- function(glucose) 
  { 
    glucose / 200 
  }
library(shiny)
shinyServer(
    function(input,output) {
      output$patientName <- renderPrint({input$name})
      output$foodHbts <- renderPrint({input$foodH})
      output$genderDet <- renderPrint({input$gender})
      output$inputValue <- renderPrint({input$glucose})
      output$prediction <- renderPrint({diabeteseRisk(input$glucose)})
      
    }
  )
