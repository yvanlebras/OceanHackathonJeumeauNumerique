FROM rocker/shiny:3.6.1

RUN apt-get update && apt-get upgrade -y
RUN apt-get install apt-utils

# SeaClone proper setup
RUN apt-get install -y libcurl4-openssl-dev 
RUN apt-get install -y libraptor2-dev 
RUN apt-get install -y librasqal3-dev 
RUN apt-get install -y libxml2-dev 
RUN apt-get install -y libssl-dev 
RUN apt-get install -y libjq-dev 
RUN apt-get install -y libv8-dev 
RUN apt-get install -y librdf0-dev 
RUN apt-get install -y libpoppler-cpp-dev 
RUN apt-get install -y libjpeg-dev
RUN apt-get install -y xdg-utils

# Download and install library
RUN R -e 'install.packages("remotes")'
RUN R -e 'remotes::install_cran("shiny")'
RUN R -e 'remotes::install_cran("golem")'
RUN R -e 'remotes::install_cran("processx")'
RUN R -e 'remotes::install_cran("attempt")'
RUN R -e 'remotes::install_cran("DT")'
RUN R -e 'remotes::install_cran("glue")'
RUN R -e 'remotes::install_cran("htmltools")'
RUN R -e 'install.packages("lubridate")'
RUN R -e 'install.packages("readr")'
RUN R -e 'remotes::install_cran("shinyWidgets")'
RUN R -e 'remotes::install_github("pedrocoutinhosilva/shiny.grid")'
RUN R -e 'remotes::install_cran("shinyTree")'
RUN R -e 'install.packages("reader")'
RUN R -e 'remotes::install_cran("data.table")'
RUN R -e 'remotes::install_cran("dplyr")'
RUN R -e 'remotes::install_cran("shinyjs")'
RUN R -e 'remotes::install_cran("config")'

# Setup
RUN mkdir -p /srv/shiny-server/apps/seaclone
COPY SeaCloneR_*.tar.gz /srv/shiny-server/apps/seaclone.tar.gz
RUN R -e 'remotes::install_local("/srv/shiny-server/apps/seaclone.tar.gz", dependencies=TRUE)'
COPY Rprofile.site /usr/local/lib/R/etc

RUN chmod -R 755 /srv/shiny-server/
EXPOSE 3838

CMD ["R","-e SeaCloneR::run_app()"]
