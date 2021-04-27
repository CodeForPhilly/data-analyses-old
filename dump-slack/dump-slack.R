library(cfpr)
library(stringr)
library(dplyr)
library(readr)


snowflake_tables <- dbcooper:::dbc_list_tables(cfp_src()$con)
indx_slack <- str_detect(snowflake_tables, "\\.SLACK")

slack_tables <- snowflake_tables[indx_slack]

for (tbl_name in slack_tables) {
  clean_name <- str_replace(tbl_name, "CODEFORPHILLY\\.", "") %>% str_replace("\\.", "_") %>% tolower()
  cfp_tbl(tbl_name) %>% collect() %>% write_csv(paste0(clean_name, ".csv"))
}
