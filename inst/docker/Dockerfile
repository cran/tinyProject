# Final image
FROM rocker/tidyverse

RUN mkdir -p /usr/local/src/test
WORKDIR /usr/local/src/test
COPY . .

RUN Rscript --no-init-file -e "install.packages('tinyProject')"

ENTRYPOINT ["/usr/local/src/test/docker/run.R"]
