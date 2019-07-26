#install.packages("shiny")
library(shiny)
options(scipen = 9999)
ui <- fluidPage(
    titlePanel("Hello Shiny!"),
  
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      # Input: Slider for the number of bins ----
      numericInput(inputId = "beds", label = "Number of Beds", value = 0, min = 0, step = 1),
      sliderInput(inputId = "toilets", label = "Number of Toilets", min = 0, value = 0, step = 1, max = 10),
      selectInput(inputId = "stories", label = "Number of Stories", choices = c(1:5))
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      
      textOutput(outputId = "Predicted"),
      plotOutput(outputId = "Ploty")
    )
  )
)

cleverCleverLogic <- function(input) {
  bedsValue <- input$beds*100000
  toiletsValue <- input$toilets*50000
  storiesValue <- (as.numeric(input$stories)-1)*50000
  value <- (bedsValue + toiletsValue + storiesValue)
  return(value)
}

server <- function(input, output) {
  
  
  output$Predicted <- renderText({
    paste("Predicted Value of £", cleverCleverLogic(input))
  })
  
  output$Ploty <- renderPlot({
    plot(c(1:20), c(1:20))
  }
  
  )
}

shinyApp(ui = ui, server = server)
