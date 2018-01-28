FROM gidden/python3-base

# get add-apt-repository
RUN apt-get -qq update && apt-get install -y --force-yes \
    python3-tk

# plotting
RUN pip3 install matplotlib

RUN pip3 install seaborn
