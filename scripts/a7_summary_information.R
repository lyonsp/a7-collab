# Creates a list with summary info
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

