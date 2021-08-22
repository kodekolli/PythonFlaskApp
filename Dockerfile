from alpine:latest

RUN apt get update \
    && apt install python3-pip \
    && pip3 install --upgrade pip3 \
    && apt-get install libmysqlclient-dev \
    && pip3 install flask flask_restful flask_mysqldb

COPY . /flaskapp
RUN export FLASK_APP=app.py
RUN export FLASK_ENV=development
EXPOSE 5001

ENTRYPOINT ["flask"]
CMD ["run --host=0.0.0.0 --port=3000"]
