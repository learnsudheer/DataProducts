library(shiny)
shinyUI(
  pageWithSidebar(
    # Application Title
    headerPanel("Diabetes Prediction Algorithm"),
    sidebarPanel(
      h5('Read me: This form does nothing, it gathers patients information and prints.'),
      h5('1. Enter Patients Name'),
      h5('2. Enter Food Habits'),
      h5('3. Enter Gender'),
      h5('4. Enter Glucose level'),
      h5('5. Click on Submit'),
      h5('-----------------------------------------'),
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
      submitButton('Submit') 
    ),
    
    mainPanel(
      
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
