FROM cs50/cli

RUN sudo apt-get update && \
    sudo apt-get install -y \
        pandoc \
        pandoc-citeproc \
        r-base \
        texlive-xetex

RUN sudo R -e "install.packages(c('bookdown', 'tufte'))"
