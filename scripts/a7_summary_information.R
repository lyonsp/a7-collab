library(dplyr)
library(plotly)

data <- read.csv("https://raw.githubusercontent.com/INFO-498F/a7-survey-data/master/intro_survey_data.csv")


simple_info <- function(dataset) {
  summary <- list()
  summary$Number_of_Participants <- nrow(dataset)
  summary$Categories <- length(dataset)
  summary$Avg_Countries_Visited <- mean(dataset$How.many.countries.have.you.visited.in.your.life.)
  summary$Interested_in_Informatics <- nrow(dataset %>% 
                                          filter(Are.you.interested.in.applying.to.the.Informatics.major. == "Yes")
                                       )
  summary$Uses_a_Mac <- nrow(dataset %>% 
                            filter(What.operating.system.do.you.typically.use. == "Mac")
                        )
  summary$No_R_Experience <- nrow(dataset %>% 
                              filter(What.is.your.familiarity.with..Using.the.R.programming.language == "Never used it")
                            )
  summary$Likes_Just_Dogs <- nrow(dataset %>% 
                                    filter(Do.you.consider.yourself. == "A dog person...")
                             )
  summary$Hardcore_Seahawks_Fans <- nrow(dataset %>% 
                                      filter(Are.you.a.Seahawks.fan. == "YES!")
                                    )
  return(summary)
}

#---Tested Function Using this Variable---
#summary_table <- simple_info(data)


# ---Ignore Code Below---
#simple_summary <- function(dataset) {
  #summ <- list()
  #summ$year <- table(data$What.is.your.current.class.standing)
  #summ$interested_in_informatics <- table(data$Are.you.interested.in.applying.to.the.Informatics.major)
  #summ$operating_system_used <- table(data$What.operating.system.do.you.typically.use)
  #summ$programming_experience <- table(data$What.is.your.programming.experience)
  #summ$cats_or_dogs <- table(data$Do.you.consider.yourself)
  
  #return(summ)
#}
#summ_table <- simple_summary(data)

