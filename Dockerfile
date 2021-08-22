from ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update

WORKDIR /flaskapp
COPY . /flaskapp
RUN apt install python3-pip -y
RUN pip3 install --upgrade pip
RUN apt-get install libmysqlclient-dev -y
RUN pip3 install flask flask_restful flask_mysqldb
ENV FLASK_APP=app.py
ENV FLASK_ENV=development
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
EXPOSE 5000

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]
