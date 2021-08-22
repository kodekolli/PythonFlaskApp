from ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update

COPY . /flaskapp
RUN apt install python3-pip -y
RUN pip3 install --upgrade pip
RUN apt-get install libmysqlclient-dev -y
RUN pip3 install flask flask_restful flask_mysqldb
RUN export FLASK_APP=app.py
RUN export FLASK_ENV=development
EXPOSE 5001

CMD ["flask run --host=0.0.0.0 --port=3000"]
