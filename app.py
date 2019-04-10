from flask import Flask
from flask_restful import Api, Resource, reqparse
from flask import render_template
import pymysql
from PetInfoMasonry import PetInfoMasonry
from PetInfoDetail import PetInfoDetail

app = Flask(__name__)
api = Api(app)

api.add_resource(PetInfoMasonry, "/PetInfoMasonry/")
api.add_resource(PetInfoDetail, "/PetInfoDetail/<string:_pet_id>")

app.run(debug=True)
