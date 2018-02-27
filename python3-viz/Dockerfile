FROM gidden/python3-base

# get add-apt-repository
RUN apt-get -qq update && apt-get install -y --force-yes \
    python3-tk

# plotting
RUN pip3 install matplotlib

RUN pip3 install seaborn

# testing
RUN pip3 install pytest-mpl

# gis
RUN git clone https://github.com/OSGeo/proj.4.git
RUN apt-get -qq update && apt-get install -y --force-yes \
    cmake
RUN cd proj.4 && mkdir build && cd build && cmake .. && cmake --build .
RUN ls proj.4/build
RUN cd proj.4/build && make && make install
RUN apt-get -qq update && apt-get install -y --force-yes \
    libgeos-dev
RUN apt-get -qq update && apt-get install -y --force-yes \
    g++ \
    python3-dev
RUN pip3 install cartopy
RUN pip3 install geopandas