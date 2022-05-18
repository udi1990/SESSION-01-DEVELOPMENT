FROM ubuntu 
RUN apt update
RUN apt-get update 
RUN touch ivo
CMD ["echo", "Hello devops"]
