# Start with some pseudocode

# install packages ----
devtools::install_github("openanalytics/redmineR")
devtools::install_github("r-lib/gh")

# References ----
# Documentation for github's v.3 REST API:
# https://developer.github.com/v3/issues/

# Plan A ----
# Get the issues in .json format from redmine. Save.
# Use https://github.com/openanalytics/redmineR to get them.

# set system environment
Sys.setenv("REDMINE_URL" = "https://vlab.ncep.noaa.gov/redmine/")
Sys.setenv("REDMINE_TOKEN" = "CHANGEME") # replace CHANGEME with your token


library(redmineR)
all_projects <- redmine_projects()
ss_project <- all_projects[all_projects$name == "Stock Synthesis", ]

saved_issue <- redmine_show_issue(issue_id = 83862, include = "all")

#TODO save json, use RJSONIO????

# Manipulate them as needed for github.
# some manually written code, following suggestions in 
# https://blogs.harvard.edu/rprasad/2014/07/10/moving-from-redmine-to-github-issues/

# From modified .json, create the new issues on github
# use https://github.com/r-lib/gh

# Plan B ----
# create bulk issues from a .csv file. Will loose more information
# https://medium.com/@scott.j.jackson/how-to-bulk-create-issues-in-github-a278d429b7bf