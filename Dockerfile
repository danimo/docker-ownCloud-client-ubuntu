FROM danimo/sphinx 

RUN echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list
RUN wget -O- http://download.opensuse.org/repositories/isv:ownCloud:desktop/xUbuntu_14.04/Release.key | apt-key add -
RUN apt update
RUN apt-get build-dep -y owncloud-client
RUN apt install -y build-essential cmake
RUN apt install -y libsqlite3-dev
RUN apt install -y libssl-dev
