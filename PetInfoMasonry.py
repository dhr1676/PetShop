from flask_restful import Resource, reqparse
import pymysql
from JSON_PetInfo import get_json_pet_info_detail, PET_INFO_DETAIL_MYSQL


class PetInfoMasonry(Resource):
    def __init__(self):
        self.connector = pymysql.connect(
            host='localhost',
            user='root',
            password='Dhr123456!',
            db='petshop',
            charset='utf8'
        )

    def get(self):
        parser = reqparse.RequestParser()
        parser.add_argument("start_index")
        parser.add_argument("length")
        args = parser.parse_args()

        cur = self.connector.cursor()
        # limit param1, param2
        # param1 : 开始搜索的指针 .从0开始计。
        # param2 : 搜索的条数
        sql_1 = "SELECT * FROM pet_info " \
                "ORDER BY pet_id " \
                "LIMIT {}, {}".format(int(args["start_index"]), int(args["length"]))
        cur.execute(sql_1)
        content = [get_json_pet_info_detail(i) for i in cur.fetchall()]

        # 关闭游标
        cur.close()

        # 关闭连接
        self.connector.close()

        return content, 301
