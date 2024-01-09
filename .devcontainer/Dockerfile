FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    xdvik-ja \ 
    evince \
    texlive-full \
    # texlive-lang-cjk \
    # texlive-latex-extra \
    # texlive-extra-utils \
    latexmk \
    language-pack-ja \
    wget \
    xzdec \
    git \
    cpanminus \
    make \
    perl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN tlmgr init-usertree
RUN kanji-config-updmap-sys ipaex

WORKDIR /workdir

VOLUME ["/workdir"]

CMD ["bash"]

# RUN cpanm Log::Log4perl Log::Dispatch::File YAML::Tiny File::HomeDir Unicode::GCString
# RUN cpan install Log::Log4perl File::HomeDir
