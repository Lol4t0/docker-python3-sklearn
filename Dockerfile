FROM python:3

MAINTAINER Lol4to <sidorov.ij@gmail.com>


## Install
RUN apt-get update
RUN apt-get install -y liblapack-dev libblas-dev gfortran
RUN pip3 install NumPy
RUN pip3 install SciPy
RUN pip3 install sklearn

##Cleanup
RUN apt-get purge -y gfortran
RUN apt-get -y autoremove

ENTRYPOINT python3
