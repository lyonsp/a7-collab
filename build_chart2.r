#Bar Graph 
build_chart2 <- function(data){


  chart2 <- ploy_ly(data,
                      x = What.operating.system.do.you.typically.use,
                      y = What.is.your.familiarity.with.Using.the.R.programming.language,
                      name = "Operating System vs Familiarity with R",
                      type = "bar",
                      color = What.is.your.familiarity.with.Using.the.R.programming.language
                      ) %>%
    layout(title = "Operating System vs Familiarity with R", margin = list(l = 100), margin = list(b = 0))

    return(chart1)
  
  
  
}