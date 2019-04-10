from flask_restful import Resource, reqparse
import pymysql
from JSON_PetInfo import get_json_pet_info_detail


class PetInfoDetail(Resource):
    def __init__(self):
        self.connector = pymysql.connect(
            host='localhost',
            user='root',
            password='Dhr123456!',
            db='petshop',
            charset='utf8'
        )

    def get(self, _pet_id):
        cur = self.connector.cursor()
        _pet_id = "\"" + _pet_id + "\""
        print(str(_pet_id))
        sql_1 = "SELECT * FROM pet_info WHERE pet_id = " + _pet_id
        cur.execute(sql_1)
        content = [get_json_pet_info_detail(i) for i in cur.fetchall()]
        return content, 200
