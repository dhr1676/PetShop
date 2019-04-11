from flask_restful import Resource, reqparse
import pymysql
from JSON_PetInfo import get_json_pet_info_detail, PET_INFO_DETAIL_MYSQL, PET_INFO_DETAIL_ATTRIBUTES


class PetInfoCreate(Resource):
    def __init__(self):
        self.connector = pymysql.connect(
            host='localhost',
            user='root',
            password='Dhr123456!',
            db='petshop',
            charset='utf8'
        )

    def post(self, _pet_id):
        cur = self.connector.cursor()
        _pet_id_ = "\'" + _pet_id + "\'"
        sql_1 = "SELECT * FROM pet_info WHERE pet_id = " + _pet_id_
        cur.execute(sql_1)
        if cur.fetchall():
            return "PetID Exists! Create Failed!", 400

        parser = reqparse.RequestParser()
        for attribute in PET_INFO_DETAIL_MYSQL:
            parser.add_argument(attribute)
        args = parser.parse_args()

        insert_content = []
        for attribute in PET_INFO_DETAIL_MYSQL:
            insert_content.append(args[attribute])

        # insert_content[0] = "\'" + insert_content[0] + "\'"
        # insert_content[2] = "\'" + insert_content[2] + "\'"
        # insert_content[15] = "\'" + insert_content[15] + "\'"
        # insert_str = ", ".join(insert_content)
        # insert_str = "(" + insert_str + ")"

        # sql_2 = "INSERT INTO pet_info" + PET_INFO_DETAIL_ATTRIBUTES + " VALUES " + insert_str
        # cur.execute(sql_2)
        # self.connector.commit()

        cur.callproc(procname='petshop.create_pet',
                     args=insert_content)
        # Very Important!
        self.connector.commit()

        sql_3 = "SELECT * FROM pet_info WHERE pet_id = " + _pet_id_
        cur.execute(sql_3)
        content = [get_json_pet_info_detail(i) for i in cur.fetchall()]
        if not content:
            return "Unknown Error! Create Failed!", 400
        return content, 200
