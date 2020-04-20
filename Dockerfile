FROM python:3.7

MAINTAINER Thirupathi Peraboina

RUN apt-get update && apt-get install tk-dev && rm -r /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y python-tk python3-tk python-autopep8

#docker run -ti -e DISPLAY=$DISPLAY blah-image blah-command


COPY . /app
WORKDIR /app

RUN autopep8 -i *.py
RUN pip install -r requirements.txt

CMD ["python", "main.py"]
