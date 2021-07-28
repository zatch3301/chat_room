FROM rocker/shiny-verse

## update system libraries
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean

RUN mkdir /root/code
VOLUME /root/code
COPY . ./root/code/
WORKDIR /root/code
RUN R -e 'install.packages("remotes")'
RUN R -e 'remotes::install_github("r-lib/remotes", ref = "6c8fdaa")'
RUN R -e 'remotes::install_cran("shinyjs")'
RUN R -e 'remotes::install_cran("shinyalert")'
RUN R -e 'remotes::install_cran("shinythemes")'
# expose port
EXPOSE 3838

# run app on container start
CMD ["R", "-e", "shiny::runApp('/root/code', host = '0.0.0.0', port = 3838)"]