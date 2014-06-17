library(shiny)
shinyUI(
  pageWithSidebar(
    # Application Title
    headerPanel("Diabetes Prediction Algorithm"),
    sidebarPanel(
      textInput('name', label = h5("Patient Name")),
      checkboxGroupInput("foodH",label = h5("Food Habits"),
                         c("Veggies" = "Veggies",
                           "Red Meat" = "Red Meat",
                           "White Meat" = "White Meat",
                           "Sea Food" = "Sea Food")
      ),
      radioButtons("gender", label = h5("Gender"),
                   choices = list("Male" = "Male", "Female" = "Female"), selected ='null'),
      numericInput('glucose',label = h5("Glucose mg/dl"), 0, min = 50, max = 200, step = 5),
      submitButton('Submit Prediction') 
    ),
    
    mainPanel(
        h5('Read me: This form gathers, patients Name, Food Habits, Gender and Glucose level. Please enter all the fields and hit submit'),
    
        h3('Patient Details'),      
        h4('Name: '),
        verbatimTextOutput("patientName"),
        h4('Food Habits'),
        verbatimTextOutput("foodHbts"),
        h4('Gender'),
        verbatimTextOutput("genderDet"),
        h4('Glucose: '),
        verbatimTextOutput("inputValue"),
        h4('Patients prediction '),
        verbatimTextOutput("prediction")
    )
  )
)
