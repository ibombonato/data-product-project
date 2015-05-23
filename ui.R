library(shiny)

shinyUI(fluidPage(
    titlePanel("Poker variance"),
    
    sidebarLayout(
        sidebarPanel(
            
            helpText("Change the fields bellow to run new simulations."),

            helpText("Use \".\" separator for decimal numbers."),
            
            numericInput("winrate", label = "Winrate in bb/100", value = 6),
            
            numericInput("sd", label = "Standard Deviation", value = 84),
            
            sliderInput("trials", 
                        label = "Number of trials(Simulations):",
                        min = 1, max = 100, value = 50)
        ),
        
        mainPanel(
            tabsetPanel(
                tabPanel("App",
                     textOutput("text1"),
                     plotOutput("variancePlot")   
                 ),
                tabPanel("Documentation",
                     includeMarkdown("documentation.md")  
                 )
            )
        )
    )
))