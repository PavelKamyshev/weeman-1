FROM python:2.7-alpine
COPY . /app
WORKDIR /app
EXPOSE 31337
RUN apk update &&\
    apk add net-tools &&\
    apk add vim
RUN pip install beautifulsoup4  
CMD python ./weeman.py --profile profile

