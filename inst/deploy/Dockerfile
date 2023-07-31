# Base image https://hub.docker.com/u/rocker/
FROM rocker/shiny:latest

RUN install2.r rsconnect bslib dplyr readxl pkgload shiny shinyBS tools tibble writexl devtools shinytest sprtt psych scales
RUN R -e "devtools::install_github('MeikeSteinhilber/otter')"

# system libraries of general use
## install debian packages
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libxml2-dev \
    libcairo2-dev \
    libsqlite3-dev \
    libmariadbd-dev \
    libpq-dev \
    libssh2-1-dev \
    unixodbc-dev \
    libcurl4-openssl-dev \
    libssl-dev
## update system libraries
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean

WORKDIR /home/shinyusr
#COPY app.R app.R
COPY /inst/tutorials/R_und_RStudio_Grundlagen ./inst/tutorials/R_und_RStudio_Grundlagen
COPY DESCRIPTION DESCRIPTION
COPY /inst/deploy/deploy.R /inst/deploy/deploy.R
COPY /R ./R
#COPY /www ./www
CMD Rscript /inst/deploy/deploy.R
