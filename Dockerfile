FROM python:2.7-alpine
COPY . /app
WORKDIR /app
EXPOSE 31337
RUN apt update -y &&\
    apt install net-tools -y &&\
    apt install vim -y 
CMD python ./weeman.py --profile profile

