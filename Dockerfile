from ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
	&& apt install python3-pip -y \
	&& pip3 install --upgrade pip \
	&& apt-get install libmysqlclient-dev -y \
	&& pip3 install flask flask_restful flask_mysqldb \
	&& pip3 install pytest \
	&& pip3 install coverage \
	&& pip3 install pylint

WORKDIR /flaskapp
COPY . /flaskapp
ENV FLASK_APP=app.py
ENV FLASK_ENV=development
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
EXPOSE 5000

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]
