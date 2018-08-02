FROM conda/miniconda3

# install ubuntu deps
RUN apt-get update
RUN apt-get install -y git-core wget

# install gams
RUN wget https://d37drm4t2jghv5.cloudfront.net/distributions/24.8.3/linux/linux_x64_64_sfx.exe
RUN chmod 755 linux_x64_64_sfx.exe
RUN ./linux_x64_64_sfx.exe
RUN rm ./linux_x64_64_sfx.exe
ENV PATH $PATH:$PWD/gams24.8_linux_x64_64_sfx

# install ixmp deps
RUN conda update --yes conda
RUN conda install --yes -c conda-forge ixmp xlsxwriter xlrd pytest
RUN conda remove --force --yes ixmp

RUN apt-get install -y build-essential
