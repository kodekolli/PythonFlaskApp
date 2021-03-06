'''
Flask App
'''
from flask import Flask
from flask_restful import Api  # pragma: no cover
from Python_Flask_App.handlers.routes import configure_routes
from Python_Flask_App.handlers.api import sampleAPI  # pragma: no cover

app = Flask(__name__)
api = Api(app)

api.add_resource(sampleAPI,'/api/test')
configure_routes(app)

if __name__ == '__main__':    #pylint disable=trailing-whitespace
    app.run(debug=True)
    #app.run(host="0.0.0.0", port="3000")

# def create_app():
#     app = Flask(__name__)
#     api = Api(app)

#     api.add_resource(sampleAPI,'/api/test')
#     configure_routes(app)

#     #if __name__ == '__main__':    #pylint disable=trailing-whitespace
#         #app.run(debug=True)
#         #app.run(host="0.0.0.0", port="5000")

#     return app

# create_app()
#
#



