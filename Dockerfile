FROM ubuntu

RUN apt update

RUN touch serge

CMD npm start

EXPOSE 3000
