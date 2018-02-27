FROM gidden/python2-base

# get add-apt-repository
RUN apt-get -qq update && apt-get install -y --force-yes \
    python-tk

# plotting
RUN pip2 install matplotlib

RUN pip2 install seaborn

# testing
RUN pip2 install pytest-mpl

# gis
RUN git clone https://github.com/OSGeo/proj.4.git
RUN apt-get -qq update && apt-get install -y --force-yes \
    cmake
RUN cd proj.4 && mkdir build && cd build && cmake .. && cmake --build .
RUN ls proj.4/build
RUN cd proj.4/build && make && make install
RUN apt-get -qq update && apt-get install -y --force-yes \
    libgeos-dev
RUN pip2 install cartopy
RUN pip2 install geopandas