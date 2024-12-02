library(shiny)
library(ggplot2)
library(GGally)
library(readr)

# Interface utilisateur
ui <- fluidPage(
  titlePanel("TP sur la base de données IRIS !"),
  
  tags$h4(tags$span(style = "color:blue;", "Créer par Abdoul Rachid BISSARE, 01 63 61 49 80")),
  
  sidebarLayout(
    sidebarPanel(
      h3("1. Charger la base de données"),
      fileInput("uploaded_file", "Téléversez le fichier iris.csv", accept = ".csv"),
      
      h3("2. Manipulez les données"),
      uiOutput("column_selector"),
      
      h3("3. Visualisez les données avec des graphes"),
      radioButtons("graph_type", "Choisissez un type de graphique",
                   choices = c("Histogramme", "Nuage de points", "Pairplot")),
      
      conditionalPanel(
        condition = "input.graph_type == 'Histogramme'",
        selectInput("hist_column", "Sélectionnez une colonne pour l'histogramme", choices = NULL)
      ),
      
      conditionalPanel(
        condition = "input.graph_type == 'Nuage de points'",
        selectInput("x_axis", "Axe X", choices = NULL),
        selectInput("y_axis", "Axe Y", choices = NULL),
        selectInput("species_col", "Coloration par espèce", choices = NULL)
      )
    ),
    
    mainPanel(
      h3("Aperçu des données"),
      tableOutput("data_preview"),
      
      h3("Statistiques descriptives"),
      tableOutput("data_summary"),
      
      h3("Graphiques interactifs"),
      plotOutput("data_plot"),
      
      tags$footer(h4("Copyright 2024"))
    )
  )
)

# Serveur
server <- function(input, output, session) {
  
  # Charger les données
  data <- reactive({
    req(input$uploaded_file)  # S'assurer qu'un fichier est téléversé
    read_csv(input$uploaded_file$datapath)
  })
  
  # Aperçu des données
  output$data_preview <- renderTable({
    req(data())
    head(data())
  })
  
  # Statistiques descriptives
  output$data_summary <- renderTable({
    req(data())
    summary(data())
  })
  
  # Mise à jour des colonnes disponibles
  observeEvent(data(), {
    updateSelectInput(session, "hist_column", choices = names(data()))
    updateSelectInput(session, "x_axis", choices = names(data()))
    updateSelectInput(session, "y_axis", choices = names(data()))
    updateSelectInput(session, "species_col", choices = names(data()))
  })
  
  # Sélection dynamique des colonnes
  output$column_selector <- renderUI({
    req(data())
    checkboxGroupInput("selected_columns", "Sélectionnez les colonnes à afficher",
                       choices = names(data()), selected = names(data()))
  })
  
  # Graphiques interactifs
  output$data_plot <- renderPlot({
    req(data(), input$graph_type)
    
    if (input$graph_type == "Histogramme") {
      req(input$hist_column)
      ggplot(data(), aes_string(input$hist_column)) +
        geom_histogram(bins = 20, fill = "blue", alpha = 0.7) +
        theme_minimal()
      
    } else if (input$graph_type == "Nuage de points") {
      req(input$x_axis, input$y_axis, input$species_col)
      ggplot(data(), aes_string(x = input$x_axis, y = input$y_axis, color = input$species_col)) +
        geom_point(size = 3) +
        theme_minimal()
      
    } else if (input$graph_type == "Pairplot") {
      req(input$species_col)
      ggpairs(data(), aes_string(color = input$species_col)) +
        theme_minimal()
    }
  })
}

# Lancer l'application
shinyApp(ui, server)



