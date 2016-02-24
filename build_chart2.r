#Compares Windows vs. Mac users and their familiarity with R
build_chart2 <- function(data){

  chart2 <- ploy_ly(data,
                      x = What.operating.system.do.you.typically.use,
                      y = What.is.your.familiarity.with..Using.the.R.programming.language,
                      name = "Windows",
                      mode = "markers",
                      marker = list(color = "black"))%>%
                      add_trace(x = What.operating.system.do.you.typically.use,
                                 name = "Mac",
                                 marker = list(color = "blue"))%>%
                      layout(
                        title = "Windows vs. Mac and R programming familiarity",
                        xaxis = list(title = "Windows vs. Mac")               
                      )

    return(chart1)
  
  
  
}