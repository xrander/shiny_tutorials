library("shiny")
library("tidyverse")

datasets <- c("economics", "faithfuld", "seals")


## User Interface
ui <- fluidPage(
  selectInput("dataset", "Dataset", choices = datasets),
  verbatimTextOutput("summary"),
  plotOutput("plot")
)


## Server
server <- function(input, output, session){
  dataset <- reactive({
    get(input$dataset, "package:ggplot2")
  })
  
  output$summary<- renderPrint( 
    summary(dataset())
    )

  output$plot <- renderPlot(
    plot(dataset())
  ,res = 96)
  }


## Shiny app construction
shinyApp(ui, server)
