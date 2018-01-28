FROM gidden/python-base

# solver depedencies
RUN apt-get -qq update && apt-get install -y --force-yes \
    gfortran \
    libblas-dev \
    liblapacke-dev

# get ipopt
RUN wget https://www.coin-or.org/download/binary/Ipopt/Ipopt-3.7.1-linux-x86_64-gcc4.3.2.tgz && \
    tar xvf Ipopt-3.7.1-linux-x86_64-gcc4.3.2.tgz && \
    cp Ipopt-3.7.1-linux-x86_64-gcc4.3.2/bin/ipopt /usr/local/bin/

RUN pip3 install pyomo

