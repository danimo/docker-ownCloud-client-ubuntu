FROM danimo/sphinx 

RUN echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list
RUN curl http://download.opensuse.org/repositories/isv:ownCloud:desktop/xUbuntu_14.04/Release.key | apt-key add -
RUN apt update
RUN apt-get build-dep -y owncloud-client
RUN apt install -y build-essential cmake
