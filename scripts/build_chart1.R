build_chart1 <- function(data) {
  xAxis <- list(
    title = "Proficiency in R"
  )
  yAxis <- list(
    title = "Number of People"
  )
  chart1 <- plot_ly(data, 
          x = What.is.your.familiarity.with..Using.the.R.programming.language,
          y = What.is.your.programming.experience., 
          color=What.is.your.familiarity.with..Using.the.R.programming.language,
         type = "histogram"
  )  %>% 
    layout(title = "R Proficiency Before Class", margin = list(l = 100), margin = list(b = 0),
           xaxis = xAxis, yaxis = yAxis)
  

  return(chart1)
}

