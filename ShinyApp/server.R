#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$result <- renderText({
        input$calc
        
        if (input$calc != 0) {
        
            isolate(
                propAccept(
                    c(input$`Decline Difficulty`, input$`Private Benefit`, input$`Participant Benefit`,
                         input$`Public Benefit`, input$Disproportionality, input$Sensitivity, input$`Risk of Harm`,
                         input$Trust, input$`Data Security`, input$`Ongoing Control`, input$`Respect for Privacy`
                      )
                    
                )
                
            )
            
        }
        
    })    
})

