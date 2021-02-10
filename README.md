# data-analyses

For holding self-contained data analyses related to Code for Philly projects.

## How does it work?

Each folder holds a set of reports.
Reports can be created using Rmarkdown (.Rmd files), and "knitted" to markdown that's readable on github.
See this [cfp-slack report](https://github.com/CodeForPhilly/data-analyses/blob/master/cfp-slack/report.md) for an example.

## Getting started

### 1. Install cfpr

The data pipeline uses a library called `cfpr` to manage connecting to the data.
For setup, see instructions in the [cfpr repo](https://github.com/codeforphilly/cfpr).

### 2. Adding new analyses using RStudio

1. Clone this repo.
2. Open it as a project in RStudio.
3. Add your analysis as its own folder.
4. Knit it as a github_document, and push all knitted files (or open a PR).

See the [10 minute walkthrough](https://www.loom.com/share/2a8d3c6a64c0449eada2b64d3bcbb5bb) below.

[![video demo](./.video_demo.png)](https://www.loom.com/share/2a8d3c6a64c0449eada2b64d3bcbb5bb)
