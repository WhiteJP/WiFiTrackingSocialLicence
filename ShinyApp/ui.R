shinyUI(
  
  #use shinytheme 'simplex' as basis for ShinyApp
  fluidPage(theme = shinytheme("simplex"),
    
    #import google font Alata                
    tags$head(
      tags$style(HTML("
        @import url('https://fonts.googleapis.com/css2?family=Alata&display=swap');
      "))
    ),
    
    #import MathJax
    withMathJax(),
    
    # Title 
    h1("Predicting the Social Licence of University Tracking-data Analytics", style = "font-family: 'Alata', sans-serif;"),
    
    ## put unimelb logo
    img(src = "unimelb_logo.png", height = 175, width = 175, align = 'right', style = "margin: 0px 20px 0px 20px"),
    
    # Introductory text
    p("This app allows decision-makers to estimate the community acceptance of new university projects which utilise tracking-data analytics",
    "(i.e., projects that collect and use location or other tracking data from individuals' devices). ",
    "All you need to do is rate the project on the 11 dimensions in the questions below on the scale from 0 to 5 as indicated .",
    "Our model will then predict the percentage of the community that would accept a project with those ratings. ",
    "For best results, obtain numerous independent ratings for these 11 dimensions and enter the average ratings. ",
    "We expect this model to be of use for administrators, ethics boards, researchers and others in Universities.",
    style = "font-size: 15px; text-align: justify"),
    
    p("At the bottom of this page, we show the formula used to obtain the estimate from the input ratings. ",
    "For more information on the derivation of this model, please see the full paper here <link paper>.", 
      style = "font-size: 15px"),
    p(HTML(paste0("Further, please find the data and code for this project and this Shiny app at", 
                  tags$a(href = 'https://osf.io/mx948/', ' https://osf.io/mx948/'), ".")), 
      style = "font-size: 15px"), 
    
    # Panel with slider inputs for each dimension ----
    fluidRow(

      column(width = 12, offset = 0.5,
      h2("Ratings", style = "font-family: 'Alata', sans-serif;")),

      
      column(width = 4,
             
             sliderInput("Decline Difficulty",
                         HTML("<b>How easy is it for people to decline participation in the proposed research?</b><br>0 = ‘Extremely easy’<br>5 = ‘Extremely difficult’"),
                         min = 0,
                         max = 5,
                         value = 2.5,
                         step = 0.1, 
                         width = "100%"),
             
             sliderInput("Private Benefit",
                         HTML("<b>How much would private entities benefit from the proposed research?</b><br>0 = ‘Not at all’<br>5 = ‘Extremely’"),
                         min = 0,
                         max = 5,
                         value = 2.5,
                         step = 0.1, 
                         width = "100%"),
             
             sliderInput("Participant Benefit",
                         HTML("<b>How much would participants (i.e., the people whose data is being collected) benefit from the proposed research?</b><br>0 = ‘Not at all'<br>5 = ‘Extremely’"),
                         min = 0,
                         max = 5,
                         value = 2.5,
                         step = 0.1, 
                         width = "100%"),
             
             sliderInput("Public Benefit",
                         HTML("<b>How much would the public benefit from the proposed research?</b><br>0 = ‘Not at all’<br>5 = ‘Extremely’"),
                         min = 0,
                         max = 5,
                         value = 2.5,
                         step = 0.1, 
                         width = "100%")
      ),
      
      column(width = 4,
             
             sliderInput("Disproportionality",
                         HTML("<b>To what extent are the researchers only collecting the data necessary to achieve the purposes of the proposed research?</b><br>0 = ‘Only necessary data collected’<br>5 = ‘Vast unnecessary data collected’"),
                         min = 0,
                         max = 5,
                         value = 2.5,
                         step = 0.1, 
                         width = "100%"),
             
             sliderInput("Sensitivity",
                         HTML("<b>How sensitive is the data to be collected by the proposed research?</b><br>0 = ‘Not at all’<br>5 = ‘Extremely’"),
                         min = 0,
                         max = 5,
                         value = 2.5,
                         step = 0.1, 
                         width = "100%"),
             
             sliderInput("Risk of Harm",
                         HTML("<b>How serious is the risk of harm that could arise from the proposed research?</b><br>0 = ‘Extremely low risk of harm’<br>5 = ‘Extremely high risk of harm’"),
                         min = 0,
                         max = 5,
                         value = 2.5,
                         step = 0.1, 
                         width = "100%"),
             
             sliderInput("Trust",
                         HTML("<b>How much do you trust the sponsor of the proposed research?</b><br>0 = ‘Not at all’<br>5 = ‘Extremely’"),
                         min = 0,
                         max = 5,
                         value = 2.5,
                         step = 0.1, 
                         width = "100%")
             
      ),
      
      column(width = 4,
             
             sliderInput("Data Security",
                         HTML("<b>How secure is the data that would be collected from the proposed research?</b><br>0 = ‘Not at all secure’<br>5 = ‘Extremely secure’"),
                         min = 0,
                         max = 5,
                         value = 2.5,
                         step = 0.1, 
                         width = "100%"),
             
             sliderInput("Ongoing Control",
                         HTML("<b>To what extent do participants have ongoing control of their data? This includes controlling how and when data is collected, and having access to view and delete data after it is collected.</b><br>0 = ‘No control at all’<br>5 = ‘Complete control’"),
                         min = 0,
                         max = 5,
                         value = 2.5,
                         step = 0.1, 
                         width = "100%"),
             
             sliderInput("Respect for Privacy",
                         HTML("<b>To what extent do you believe the proposed research respects participants' privacy? </b><br>0 = ‘Not at all’<br>5 = ‘Extremely’"),
                         min = 0,
                         max = 5,
                         value = 2.5,
                         step = 0.1, 
                         width = "100%"),
             
             column(width = 12, align = "center", actionButton("calc", "Get estimate"))
             
      )
      
    ),
    
    # Panel for displaying output ----
    fluidRow(
      column(width = 12, offset = 0.5,
             
             h2("Prediction", style = "font-family: 'Alata', sans-serif;"),
             
             h3(HTML(paste0("We estimate that approximately <strong>", span(textOutput("result", inline = TRUE)), "</strong> of the community would accept this project.")))
             
      )     
    ),

    fluidRow(
      column(width = 12,
            
        div(style = 'overflow-x: scroll',
            
           hr(),

           h4("Formulas", style = "font-family: 'Alata', sans-serif;"),
          
           p("First, we obtain the log odds, \\( \\eta \\), that the project is judged acceptable given the privacy dimension ratings:"), 
      
           p("$$ \\begin{align} 
             \\eta = & -1.36 - 0.15x_{decline \\ difficulty} - 0.12x_{private \\ benefit} + 0.27x_{participant \\ benefit} \\\\ 
             & + 0.11x_{public \\> benefit} - 0.06x_{disproportionality} - 0.32x_{sensitivity} - 0.31x_{risk \\, of \\, harm} \\\\
             & + 0.55x_{trust} + 0.32x_{security} + 0.18x_{ongoing \\> control} + 0.55x_{respect \\, for \\, privacy} 
             \\end{align} $$"),
           
           p("Then, to transform this to a probability that the project is judged acceptable, we apply the logistic function:"),
        
           p("$$ \\hat{P}_{Acceptable} = \\frac{1}{1 + e^{-\\eta}} $$")
         
        ) 
      )
    )
  )
)     
