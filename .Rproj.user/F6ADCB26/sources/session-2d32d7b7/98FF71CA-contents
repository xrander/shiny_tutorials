library("shiny")
library("tidyverse")

## User Interface

ui <- fluidPage(
  textInput("name", "What's your name?"),
  textOutput("greeting")
)


## Server
server <- function(input, output, session){
  output$greeting<- renderText({
    paste0("Hello ", input$name)
  })
}

## Shiny app construction
shinyApp(ui, server)
