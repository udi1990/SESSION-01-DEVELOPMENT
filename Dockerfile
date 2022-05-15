FROM ubuntu
RUN update
RUN touch nelly

docker built -t nelly
