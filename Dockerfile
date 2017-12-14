FROM python:3.6-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD ./app/requirements.txt /usr/src/app/requirements.txt

RUN pip install -r requirements.txt

ADD app/ /usr/src/app

EXPOSE 5000

CMD ["python3", "main.py"]