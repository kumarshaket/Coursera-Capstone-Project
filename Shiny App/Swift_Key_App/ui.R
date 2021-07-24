#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinysky)
library(ggplot2)
library(ggrepel)
library(stringr)

ui <- shinyUI(
        fluidPage(titlePanel("Shiny App Predictor"),
                  
                  sidebarLayout(
                          sidebarPanel(
                                  
                                  tags$b("Type Word for Predicting Next Words"),
                                  textInput("textInput01", label=NULL, 
                                            value = "", width=NULL,
                                            placeholder=''),
                                  shinyalert("shinyalert01"),
                                  actionButton("actionButton01", "Clear", class= "btn-warning")
                          ),
                          
                          mainPanel(
                                  tabsetPanel(type="tabs",
                                              tabPanel("Predicted Words",
                                                       tags$b("Possible Next Predicted Words:"),
                                                       verbatimTextOutput("verbatimTextOutput01", placeholder=TRUE)),
                                              tabPanel("Predicted Word Frequency",tableOutput('tableOutput01')),
                                              tabPanel("Prediction Dashboard",plotOutput("plot2")))
                                  
                                  )
                          )
                  ) # end of sidebarLayout()
        ) # end of fluidPage()
