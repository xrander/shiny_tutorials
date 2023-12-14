library("shiny")
library("tidyverse")

## User Interface

ui <- fluidPage(
  sliderInput("x", label = "if x is", min = 1, max = 50, value = 30),
  "then x times 5 is",
  sliderInput("y", label ="and y is", min = 1, max = 50, value = 5),
  "then (x * y) is", textOutput("product"),
  "and (x * y) + 5 is", textOutput("product_plus5"),
  "and (x * y) + 10 is", textOutput("product_plus10")
)


## Server
server <- function(input, output, session){
  product <- reactive(input$x * input$y)
  
  output$product<- renderText( product() )

  output$product_plus5 <- renderText( product() + 5 )
  
  output$product_plus10 <- renderText( product() + 10 )
}


## Shiny app construction
shinyApp(ui, server)
