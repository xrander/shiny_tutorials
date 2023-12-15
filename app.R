library("shiny")
library("tidyverse")

datasets <- c("economics", "faithfuld", "seals")


## User Interface
ui <- fluidPage(
  textInput("name", "", placeholder = "your name"),
  sliderInput("delivery", "When should we deliver",
              min = as.Date("2020-09-16"),
              max = as.Date("2020-09-23"),
              value = as.Date("2020-09-17")),
  sliderInput("values", "select values",
              value = 5,
              min = 0,
              max = 100,
              step =5,
              animate = T,
              animationOptions(
                interval = 100,
                loop = F,
                playButton = T,
                pauseButton = T)
              )
  )



## Server
server <- function(input, output, session){}


## Shiny app construction
shinyApp(ui, server)


