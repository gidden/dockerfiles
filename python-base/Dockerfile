FROM ubuntu:16.04

# get add-apt-repository
RUN apt-get -qq update && apt-get install -y --force-yes \
    wget \
    software-properties-common \
    python-software-properties \
    python-pip \
    python3-pip \
    git

# standard scientific packages
RUN pip install cython
RUN pip3 install cython

RUN pip install numpy
RUN pip3 install numpy

RUN pip install scipy
RUN pip3 install scipy

RUN pip install pandas
RUN pip3 install pandas

# plotting
RUN pip install matplotlib
RUN pip3 install matplotlib

RUN pip install seaborn
RUN pip3 install seaborn

# utils
RUN pip install argparse
RUN pip3 install argparse

RUN pip install pyyaml
RUN pip3 install pyyaml

RUN pip install xlrd
RUN pip3 install xlrd

RUN pip install xlsxwriter
RUN pip3 install xlsxwriter

# testing
RUN pip install pytest
RUN pip3 install pytest

RUN pip install python-coveralls
RUN pip3 install python-coveralls

RUN pip install pytest-cov
RUN pip3 install pytest-cov
