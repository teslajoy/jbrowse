FROM ubuntu:18.06

RUN apt-get update && \
    apt-get -y install alien zip wget build-essential zlib1g-dev libpng-dev libxml2 libxml2-dev lsb-release && \
    rm -rf /var/lib/apt/lists/*

ENV JBVERSION 1.16.6

WORKDIR /tmp/jbrowse

RUN mkdir -p /jbrowse && mkdir -p /data && \
    wget -O jbrowse.zip https://github.com/GMOD/jbrowse/releases/download/${JBVERSION}-release/JBrowse-${JBVERSION}.zip && \
    unzip jbrowse.zip && \
    mv JBrowse-${JBVERSION}/* /jbrowse && \
    rm -rf /tmp/jbrowse

WORKDIR /jbrowse

RUN chmod +x ./setup.sh && ./setup.sh

ENTRYPOINT ["perl"]
