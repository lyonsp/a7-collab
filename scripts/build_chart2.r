#Creates a chart that compares operating systems to experience with R
build_chart2 <- function(data){

  #Plot histogram with operating system on x and number of people on y, with color showing familiarity
  chart2 <- plot_ly(data,
                    x = What.operating.system.do.you.typically.use.,
                    y = What.is.your.familiarity.with..Using.the.R.programming.language,
                    color = What.is.your.familiarity.with..Using.the.R.programming.language,
                    name = "Operating System vs Familiarity with R",
                    type = "histogram"
  ) %>%
    
    # Sets the layout for the graph with a main title, and axis titles.
    layout(title = "Operating System vs Familiarity with R", 
           margin = list(l = 100), margin = list(b = 0),
           xaxis = list(title = "Operating System"), 
           yaxis = list(title = "Number of Students"))
  
  return(chart2)
}