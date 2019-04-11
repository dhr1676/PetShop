from flask_restful import Resource, reqparse
import pymysql
from JSON_Shop import get_json_shop_detail, SHOP_DETAIL, SHOP_DETAIL_MYSQL, SHOP_DETAIL_ATTRIBUTES


class ShopDetail(Resource):
    def __init__(self):
        self.connector = pymysql.connect(
            host='localhost',
            user='root',
            password='Dhr123456!',
            db='petshop',
            charset='utf8'
        )

    def get(self, _shop_id):
        """
        Retrieve the data using shop_id from MySQL database
        :param _shop_id:
        :return:
        """
        cur = self.connector.cursor()
        sql_1 = "SELECT t2.shop_id, t2.shop_name, t1.pet_id, t1.name" \
                " FROM pet_info AS t1 JOIN shop AS t2" \
                " ON t1.shop = t2.shop_id" \
                " WHERE t2.shop_id = " + _shop_id
        cur.execute(sql_1)
        # cur.callproc(procname='petshop.search_shop',
        #              args=[_shop_id])

        content = [get_json_shop_detail(i) for i in cur.fetchall()]
        # If we use cur.fetchall() one time, the all content will be removed
        if not content:
            return "ShopID Not Found! Get Failed!", 404
        return content, 200

    def post(self, _shop_id):
        cur = self.connector.cursor()
        sql_1 = "SELECT * FROM petshop.shop WHERE shop_id = " + _shop_id
        cur.execute(sql_1)
        if cur.fetchall():
            return "ShopID Exists! Create Failed!", 400

        parser = reqparse.RequestParser()
        for attribute in SHOP_DETAIL_MYSQL:
            parser.add_argument(attribute)
        args = parser.parse_args()

        insert_content = []
        for attribute in SHOP_DETAIL_MYSQL:
            insert_content.append(args[attribute])

        cur.callproc(procname='petshop.create_shop',
                     args=insert_content)
        self.connector.commit()

        sql_3 = "SELECT * FROM petshop.shop WHERE shop_id = " + _shop_id
        cur.execute(sql_3)
        content = [get_json_shop_detail(i) for i in cur.fetchall()]
        if not content:
            return "Unknown Error! Create Failed!", 400
        return content, 200

    # def put(self, _pet_id):
    #     """
    #     Update the data using pet_id
    #     :param _pet_id:
    #     :return:
    #     """
    #     cur = self.connector.cursor()
    #     _pet_id_ = "\"" + _pet_id + "\""
    #     sql_1 = "SELECT * FROM pet_info WHERE pet_id = " + _pet_id_
    #     cur.execute(sql_1)
    #     content = [get_json_pet_info_detail(i) for i in cur.fetchall()]
    #     if not content:
    #         return "PetID Not Found! Delete Failed!", 404
    #
    #     parser = reqparse.RequestParser()
    #     for attribute in PET_INFO_DETAIL_MYSQL:
    #         parser.add_argument(attribute)
    #     args = parser.parse_args()
    #
    #     insert_content = []
    #     for attribute in PET_INFO_DETAIL_MYSQL:
    #         if args[attribute] == 'same':
    #             insert_content.append(content[0][attribute])
    #         else:
    #             insert_content.append(args[attribute])
    #
    #     cur.callproc(procname='petshop.update_pet',
    #                  args=insert_content)
    #
    #     self.connector.commit()
    #
    #     sql_3 = "SELECT * FROM pet_info WHERE pet_id = " + _pet_id_
    #     cur.execute(sql_3)
    #     content = [get_json_pet_info_detail(i) for i in cur.fetchall()]
    #     if not content:
    #         return "Unknown Error! Create Failed!", 400
    #     return content, 200

    def delete(self, _shop_id):
        cur = self.connector.cursor()
        sql_1 = "SELECT * FROM shop WHERE shop_id = " + _shop_id
        cur.execute(sql_1)
        content = [get_json_shop_detail(i) for i in cur.fetchall()]
        if not content:
            return "ShopID Not Found! Delete Failed!", 404

        sql_2 = "DELETE FROM petshop.shop WHERE shop_id = " + _shop_id
        cur.execute(sql_2)
        self.connector.commit()
        return "Delete Success!", 200
