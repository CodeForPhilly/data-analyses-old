# data-analyses
For holding self-contained data analyses related to Code for Philly projects

## Adding API credentials

1. Modify `.Renviron.dev` with our slack API token (message machow if you don't now what that is.)
2. Move `.Renviron.dev` to `.Renviron`

## Adding last 1000 slack messages per channel to DB

```
docker-compose build

docker-compose up -d

docker-compose run tidyverse R -e 'rmarkdown::render("cfp-slack/create_db.Rmd")'
```

