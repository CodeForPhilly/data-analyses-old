FROM rocker/verse:3.6.3
ENV DEBIAN_FRONTEND noninteractive

RUN install2.r --error \
    magick 

ADD requirements.R .
RUN Rscript requirements.R

WORKDIR /workspace
