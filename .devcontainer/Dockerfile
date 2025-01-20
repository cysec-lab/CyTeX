# ran350/cytex-texlive
# https://hub.docker.com/r/ran350/cytex-texlive/

FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y 

# install texlive
RUN apt-get install -y \
    evince \
    texlive-full \
    latexmk \
    language-pack-ja \
    xzdec
# xdvik-ja \ 
# texlive-lang-cjk \
# texlive-latex-extra \
# texlive-extra-utils

RUN apt-get install -y \
    cpanminus \
    make \
    perl

# install utilities
RUN apt-get install -y \
    git \
    wget

# clean up
RUN rm -rf /var/lib/apt/lists/* \
    && apt-get clean


RUN tlmgr init-usertree
# RUN kanji-config-updmap-sys ipaex

CMD ["bash"]

# RUN cpanm Log::Log4perl Log::Dispatch::File YAML::Tiny File::HomeDir Unicode::GCString
# RUN cpan install Log::Log4perl File::HomeDir