FROM ubuntu:16.04

# get add-apt-repository
RUN apt-get -qq update && apt-get install -y --force-yes \
    wget \
    software-properties-common \
    python-software-properties \
    python-pip \
    python3-pip \
    git

# get better pip
RUN apt-get remove -y --force-yes python-pip python3-pip
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python2 get-pip.py
RUN python3 get-pip.py

# standard scientific packages
RUN pip2 install cython
RUN pip3 install cython

RUN pip2 install numpy
RUN pip3 install numpy

RUN pip2 install scipy
RUN pip3 install scipy

RUN pip2 install pandas>=0.21.0
RUN pip3 install pandas>=0.21.0

# utils
RUN pip2 install argparse
RUN pip3 install argparse

RUN pip2 install pyyaml
RUN pip3 install pyyaml

RUN pip2 install xlrd
RUN pip3 install xlrd

RUN pip2 install xlsxwriter
RUN pip3 install xlsxwriter

# testing
RUN pip2 install pytest
RUN pip3 install pytest

RUN pip2 install python-coveralls
RUN pip3 install python-coveralls

RUN pip2 install pytest-cov
RUN pip3 install pytest-cov
