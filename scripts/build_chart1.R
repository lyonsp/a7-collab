#Creates a chart that displays the number of people that were proficient with R before the class started
build_chart1 <- function(data) {
  #Labels Axis
  xAxis <- list(
    title = "Proficiency in R"
  )
  yAxis <- list(
    title = "Number of People"
  )
  #Plot histogram with familiarity on x and programming experience on y
  chart1 <- plot_ly(data, 
          x = What.is.your.familiarity.with..Using.the.R.programming.language,
          y = What.is.your.programming.experience., 
          color= What.is.your.familiarity.with..Using.the.R.programming.language,
          type = "histogram"
  )  %>% 
    #Helps the layout of the chart
    layout(title = "R Proficiency Before Class", margin = list(l = 100), margin = list(b = 0),
           xaxis = xAxis, yaxis = yAxis)
  return(chart1)
}

