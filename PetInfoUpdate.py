from flask_restful import Resource, reqparse
import pymysql
from JSON_PetInfo import get_json_pet_info_detail, PET_INFO_DETAIL_MYSQL, PET_INFO_DETAIL_ATTRIBUTES


class PetInfoUpdate(Resource):
    def __init__(self):
        self.connector = pymysql.connect(
            host='localhost',
            user='root',
            password='Dhr123456!',
            db='petshop',
            charset='utf8'
        )

    def put(self, _pet_id):
        """
        Update the data using pet_id
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

        parser = reqparse.RequestParser()
        for attribute in PET_INFO_DETAIL_MYSQL:
            parser.add_argument(attribute)
        args = parser.parse_args()

        insert_content = []
        for attribute in PET_INFO_DETAIL_MYSQL:
            if args[attribute] == 'same':
                insert_content.append(content[0][attribute])
            else:
                insert_content.append(args[attribute])

        cur.callproc(procname='petshop.update_pet',
                     args=insert_content)
        self.connector.commit()

        sql_3 = "SELECT * FROM pet_info WHERE pet_id = " + _pet_id_
        cur.execute(sql_3)
        content = [get_json_pet_info_detail(i) for i in cur.fetchall()]
        if not content:
            return "Unknown Error! Create Failed!", 400
        return content, 200
