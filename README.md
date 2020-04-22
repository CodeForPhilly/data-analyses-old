# data-analyses
For holding self-contained data analyses related to Code for Philly projects

## Adding last 1000 slack messages per channel to DB

```
docker-compose build

docker-compose up -d

docker-compose run tidyverse R -e 'rmarkdown::render("cfp-slack/create_db.Rmd")'
```
