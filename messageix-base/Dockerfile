FROM ubuntu:16.04

# get add-apt-repository
RUN apt-get update 
RUN apt-get install -y --force-yes software-properties-common python-software-properties
RUN add-apt-repository ppa:git-core/ppa
RUN apt-get update

# below from https://github.com/dockerfile/java/blob/master/oracle-java8/Dockerfile
# Install Java.
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer


# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN apt-get update

RUN apt-get install -y --force-yes python3-pip 

RUN pip3 install \
    cython \
    numpy \
    pytest \
    pandas \
    jupyter

RUN apt-get update

RUN apt-get install -y --force-yes python-pip

RUN pip install \
    cython \
    numpy \
    pytest \
    pandas \
    jupyter

RUN apt-get install -y git

RUN git clone https://github.com/originell/jpype.git
RUN cd jpype && python2 setup.py install
RUN cd jpype && python3 setup.py install

# install gams
RUN wget https://d37drm4t2jghv5.cloudfront.net/distributions/24.8.3/linux/linux_x64_64_sfx.exe
RUN chmod 755 linux_x64_64_sfx.exe
RUN ./linux_x64_64_sfx.exe
RUN rm ./linux_x64_64_sfx.exe
ENV PATH $PATH:/data/gams24.8_linux_x64_64_sfx

# install R

## Now install R and littler, and create a link for littler in /usr/local/bin
## Also set a default CRAN repo, and make sure littler knows about it too
RUN apt-get install -y --no-install-recommends \
    r-base \
    r-base-dev \
    r-cran-optparse \
    r-cran-rjava

# Define default command.
CMD ["bash"]    

RUN pip install matplotlib
RUN pip3 install matplotlib
