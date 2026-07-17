# https://github.com/Paperist/texlive-ja
FROM paperist/texlive-ja:2025-debian

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        make \
        wget \
        ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
