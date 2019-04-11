from flask_restful import Resource, reqparse
import pymysql
from JSON_PetInfo import get_json_pet_info_detail, PET_INFO_DETAIL_MYSQL, PET_INFO_DETAIL_ATTRIBUTES


class PetInfoDelete(Resource):
    def __init__(self):
        self.connector = pymysql.connect(
            host='localhost',
            user='root',
            password='Dhr123456!',
            db='petshop',
            charset='utf8'
        )

    def delete(self, _pet_id):
        """
        Delete the data using pet_id
        :param _pet_id:
        :return:
        """
        cur = self.connector.cursor()
        _pet_id_ = "\"" + _pet_id + "\""
        sql_1 = "SELECT * FROM pet_info WHERE pet_id = " + _pet_id_
        cur.execute(sql_1)
        content = [get_json_pet_info_detail(i) for i in cur.fetchall()]
        if not content:
            return "PetID Not Found! Delete Failed!", 404

        sql_2 = "DELETE FROM pet_info WHERE pet_id = " + _pet_id_
        cur.execute(sql_2)
        self.connector.commit()
        return "Delete Success", 200
