library(shiny)
require(markdown)
require(zoo)

shinyServer(function(input, output) {
    
    data <- reactive({simulateData(input$winrate, input$sd, input$trials)})
    
    simulateData <- function(winrate, sd, trials){
        all <- data.frame()
        allz <- zoo(all)
        for(i in 1:trials){
            n <- data.frame(X = cumsum(rnorm(1000, winrate/100, sd/100)))
            nz <- zoo(n)        
            allz <- cbind(allz, nz)
        }
        allz
    }
    plotData <- function(x, winrate, sd, trials){
        smean <- ifelse(trials > 1, rowMeans(x[nrow(x),]), (x[nrow(x),]))
        plot(x, type = "l", plot.type = "single", col = 1:ncol(x)
             , ylab ="Win buy-ins total"
             , xlab = "Total hands played / 100. (Ex: 1000 = 100.000 hands)"
             , main = paste(trials, "Simulations with", winrate, "bb/100 winrate and", sd, "SD"))
        abline(h = 0, lwd = 2)
        abline(h = smean, lty = 2, lwd = 2)
        text(x = 100, y = smean * 1.08, paste("sample mean: ", round(smean,0)), col = "black")
    }

    output$variancePlot <- renderPlot({ 
        plotData(data(), input$winrate, input$sd, input$trials)
    })
})


