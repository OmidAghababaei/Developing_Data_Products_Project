options(warn = -1)
library(shiny)
library(plotly)
titlePanel("Airquality prediction Model")

# Sidebar with a slider input for number of bins 
sidebarLayout(
    sidebarPanel(),
    mainPanel(
        sliderInput("SliderSolar",
                    "Solar  Value:",
                    min = min(airquality[complete.cases(airquality),]$Solar.R) - 5,
                    max = max(airquality[complete.cases(airquality),]$Solar.R) + 5,
                    value = 40),
        textOutput("pred1"),
        checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
        plotlyOutput("plot1", height = "300px", width = "100%"),
        verbatimTextOutput("hover_info"),
        sliderInput("SliderSolar", "Solar Value:",
                    min = min(airquality[complete.cases(airquality),]$Solar.R) - 5,
                    max = max(airquality[complete.cases(airquality),]$Solar.R) + 5,
                    value = 50),
        textOutput("pred2"),
        checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE),
        plotlyOutput("plot2", height = "300px", width = "100%"),
        sliderInput("SliderTemp", "Temperature Value:",
                    min = min(airquality[complete.cases(airquality),]$Temp) - 5,
                    max = max(airquality[complete.cases(airquality),]$Temp) + 5,
                    value = 60),
        textOutput("pred3"),
        checkboxInput("showModel3", "Show/Hide Model 3", value = TRUE),
        plotlyOutput("plot3", height = "300px", width = "100%"),
                                 )
                            )