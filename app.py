from flask import Flask
from flask_restful import Api, Resource, reqparse
from flask import render_template
import pymysql

from PetInfoMasonry import PetInfoMasonry
from PetInfoDetail import PetInfoDetail
from PetInfoCreate import PetInfoCreate
from PetInfoDelete import PetInfoDelete
from PetInfoUpdate import PetInfoUpdate
from ShopDetail import ShopDetail

app = Flask(__name__)
api = Api(app)

api.add_resource(PetInfoMasonry, "/PetInfoMasonry/")
api.add_resource(PetInfoDetail, "/PetInfoDetail/<string:_pet_id>")
api.add_resource(PetInfoCreate, "/PetInfoCreate/<string:_pet_id>")
api.add_resource(PetInfoDelete, "/PetInfoDelete/<string:_pet_id>")
api.add_resource(PetInfoUpdate, "/PetInfoUpdate/<string:_pet_id>")

api.add_resource(ShopDetail, "/ShopDetail/<string:_shop_id>")

app.run(debug=True)
# file:///C:/Games/PycharmProjects/PetShop/data/image/