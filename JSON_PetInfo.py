PET_INFO_DETAIL_MYSQL = ["pet_id",
                         "pet_type",
                         "name",
                         "age",
                         "breed",
                         "gender",
                         "color",
                         "maturity_size",
                         "fur_length",
                         "vaccinated",
                         "sterilized",
                         "health",
                         "quantity",
                         "fee",
                         "shop",
                         "description"]


def get_json_pet_info_detail(content_tuple):
    result = {}
    for index, content in enumerate(content_tuple):
        result[PET_INFO_DETAIL_MYSQL[index]] = content
    result["image_url"] = "./data/image/" + str(result["pet_id"]) + "-1.jpg"
    return result
