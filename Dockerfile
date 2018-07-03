FROM python:2.7

RUN mkdir /code
WORKDIR /code

ADD requirements.txt .

RUN pip install -r requirements.txt


ADD . .

VOLUME /data


ENTRYPOINT ["python", "init.py", "-port=8888"]