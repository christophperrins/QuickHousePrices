# R Application with Shiny
In this application a machine learning solution can be applied from inputs to give a solution.

The shiny package makes it very easy to create a user interface as well as server side logic.

To create a shiny application, you call the shinyApp function which requires a ui and server data.

## UI (User Interface)
The sidebarLayout is one of easiest template layouts to start with. It splits the screen in two, in a 1:2 ratio, into a sideBarPanel and a mainPanel. The sideBarPanel is where you usually take in the necessary inputs and a mainPanel is where will see the outputs from the server. For more other layouts check the [shiny documentation](https://shiny.rstudio.com/articles/layout-guide.html).

Each input and output should be given an identifier. This is so that each input field can be identified, and so that logic can determine which output needs to be updated.

## Server
This is where all the server logic goes. Each time an input is changed the server function is called and is passes through the all the input values as a list. 

To access a value inside the list, you can subset the list with the name of the input id. 

A similar thing happens with output, subset the output list, and overwrite that value with the information you want displayed.

