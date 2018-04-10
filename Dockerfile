FROM rocker/shiny:latest

#adds server.R, ui.R, and source files to project directory
ADD . /srv/shiny-server/

#loads necessary packages
RUN sudo R -e "install.packages(c('ggplot2'))"

EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]