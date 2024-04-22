FROM ubuntu:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y apt-transport-https gnupg wget xdg-utils xauth && \
    echo "deb https://www.plasticscm.com/plasticrepo/stable/debian/ ./" | tee /etc/apt/sources.list.d/plasticscm-stable.list && \
    wget https://www.plasticscm.com/plasticrepo/stable/debian/Release.key -O - | apt-key add - && \
    apt-get update && \
    apt-get install -y plasticscm-client-complete && rm -rf /var/lib/apt/lists/*
