SHOP_DETAIL = ["shop_id", "shop_name", "pet_id", "pet_name"]
SHOP_DETAIL_MYSQL = ["shop_id", "shop_name"]
SHOP_DETAIL_ATTRIBUTES = "(shop_id, shop_name)"


def get_json_shop_detail(content_tuple):
    result = {}
    for index, content in enumerate(content_tuple):
        result[SHOP_DETAIL[index]] = content
    if "pet_id" in result:
        result["image_url"] = "C:/Games/PycharmProjects/PetShop/data/image/" + str(result["pet_id"]) + "-1.jpg"
    return result
