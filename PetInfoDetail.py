from flask_restful import Resource, reqparse
import pymysql
from JSON_PetInfo import get_json_pet_info_detail, PET_INFO_DETAIL_MYSQL, PET_INFO_DETAIL_ATTRIBUTES
from JSON_Return_Format import get_json_format


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
        """
        Retrieve the data using pet_id from MySQL database
        :param _pet_id:
        :return:
        """
        cur = self.connector.cursor()
        # _pet_id = "\"" + _pet_id + "\""
        # sql_1 = "SELECT * FROM pet_info WHERE pet_id = " + _pet_id
        # cur.execute(sql_1)
        cur.callproc(procname='petshop.search_pet', args=[_pet_id])
        # self.connector.commit()
        content = [get_json_pet_info_detail(i) for i in cur.fetchall()]
        if not content:
            return get_json_format("Success", 200, "PetSearch", {})
        return get_json_format("Success", 200, "PetSearch", content[0])

    def post(self, _pet_id):
        cur = self.connector.cursor()
        _pet_id_ = "\'" + _pet_id + "\'"
        sql_1 = "SELECT * FROM pet_info WHERE pet_id = " + _pet_id_
        cur.execute(sql_1)
        if cur.fetchall():
            return get_json_format("Already Exists", 403, "PetSearch", {})

        parser = reqparse.RequestParser()
        for attribute in PET_INFO_DETAIL_MYSQL:
            parser.add_argument(attribute)
        args = parser.parse_args()

        insert_content = []
        for attribute in PET_INFO_DETAIL_MYSQL:
            insert_content.append(args[attribute])

        cur.callproc(procname='petshop.create_pet',
                     args=insert_content)
        self.connector.commit()

        sql_3 = "SELECT * FROM pet_info WHERE pet_id = " + _pet_id_
        cur.execute(sql_3)
        content = [get_json_pet_info_detail(i) for i in cur.fetchall()]
        if not content:
            return get_json_format("Failed", 404, "PetSearch", {})
        return get_json_format("Success", 200, "PetSearch", content[0])

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
            return get_json_format("Failed", 404, "PetSearch", {})

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
            return get_json_format("Failed", 404, "PetSearch", {})
        return get_json_format("Success", 200, "PetSearch", content[0])

    def delete(self, _pet_id):
        cur = self.connector.cursor()
        _pet_id_ = "\"" + _pet_id + "\""
        sql_1 = "SELECT * FROM pet_info WHERE pet_id = " + _pet_id_
        cur.execute(sql_1)
        content = [get_json_pet_info_detail(i) for i in cur.fetchall()]
        if not content:
            return get_json_format("Failed", 404, "PetSearch", {})

        sql_2 = "DELETE FROM pet_info WHERE pet_id = " + _pet_id_
        cur.execute(sql_2)
        self.connector.commit()
        return get_json_format("Success", 200, "PetSearch", {})
