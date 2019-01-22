library(httr)
library(slackr)

slackr_fixed_users <- function (api_token = Sys.getenv("SLACK_API_TOKEN"), cursor = "") 
{
    loc <- Sys.getlocale("LC_CTYPE")
    Sys.setlocale("LC_CTYPE", "C")
    on.exit(Sys.setlocale("LC_CTYPE", loc))
    
    args <- list(token = api_token)
    if (cursor != "") args$cursor = cursor
    
    tmp <- httr::POST("https://slack.com/api/users.list", body = args)
    httr::stop_for_status(tmp)
    json <- jsonlite::fromJSON(httr::content(tmp, as = "text"))
    members <- json$members
    cols <- setdiff(colnames(members), c("profile", "real_name"))
    cols_prof <- grep("image_.*", names(members$profile), value = TRUE)
    
    users <- cbind.data.frame(members[, cols], members$profile[,cols_prof], stringsAsFactors = FALSE)
    
    cursor <- json$response_metadata$next_cursor
    if (cursor != "") {
      users <- rbind(users, slackr_fixed_users(cursor = cursor))
    }
    users
}
