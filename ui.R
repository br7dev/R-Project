library(shiny)
library(choroplethr)
data('df_state_demographics')

shinyUI(fluidPage(  #fluidpage() function to make the application stable
  
  #Application Title
  titlePanel("USA CEncus - By Burhan Reshi"),
  
  #Sidebar with a slider input for another number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("num_colors",
                  "number of colors:",
                  min=1,
                  max=9,
                  value=7),
      selectInput("select", label = "select Demographic:",
                  choices = colnames(df_state_demographics)[2:9],
                  selected = 1),
      downloadButton("downloadData", "download")
    ),
    
    #show a plot of the generated distribution
    mainPanel(
      plotOutput("map"),
      dataTableOutput("table")
    )
  )
))