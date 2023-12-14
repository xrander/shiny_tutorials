library("shiny")
library("tidyverse")

## User Interface

ui <- fluidPage(
  sliderInput("x", label = "if x is", min = 1, max = 50, value = 30),
  "then x times 5 is",
  sliderInput("y", label ="and y is", min = 1, max = 50, value = 5),
  textOutput("product")
)


## Server
server <- function(input, output, session){
  output$product<- renderText({
    input$x * input$y
  })
}

## Shiny app construction
shinyApp(ui, server)
