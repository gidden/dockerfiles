FROM gidden/python-base

# get add-apt-repository
RUN apt-get -qq update && apt-get install -y --force-yes \
    python-tk \
    python3-tk

# plotting
RUN pip install matplotlib
RUN pip3 install matplotlib

RUN pip install seaborn
RUN pip3 install seaborn
