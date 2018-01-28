FROM gidden/python2-base

# get add-apt-repository
RUN apt-get -qq update && apt-get install -y --force-yes \
    python-tk

# plotting
RUN pip2 install matplotlib

RUN pip2 install seaborn
