install.packages("devtools")
devtools::install_github("JaseZiv/worldfootballR")
library(worldfootballR)
install.packages("dplyr")
library(dplyr)

# Season_22_23 <- fb_match_results(country = "ENG",
#                                  gender = "M",
#                                  season_end_year = "2023",
#                                  tier = "1st",
#                                  non_dom_league_url = NA)
# 
# View(Season_22_23)

EPL_team_url <- tm_league_team_urls(country_name = "England", 
                                    start_year = 2023)

print(EPL_team_url)

EPL_transfers <- tm_team_transfers(EPL_team_url, 
                                   transfer_window = "all")

View(EPL_transfers)

write.csv(EPL_transfers, 
          "C:\\Users\\sraja\\Desktop\\WORK\\CAPSTONE\\DATA\\PL_transfers.csv", 
          row.names = FALSE)
