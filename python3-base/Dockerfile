FROM ubuntu:16.04

# get add-apt-repository
RUN apt-get -qq update && apt-get install -y --force-yes \
    wget \
    software-properties-common \
    python-software-properties \
    git

# get better pip
RUN apt-get remove -y --force-yes python-pip python3-pip
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py

# standard scientific packages
RUN pip3 install cython

RUN pip3 install numpy

RUN pip3 install scipy

RUN pip3 install pandas>=0.21.0

# utils
RUN pip3 install argparse

RUN pip3 install pyyaml

RUN pip3 install xlrd

RUN pip3 install xlsxwriter

# testing
RUN pip3 install pytest

RUN pip3 install python-coveralls

RUN pip3 install pytest-cov

RUN pip3 install jupyter

