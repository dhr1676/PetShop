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
PET_INFO_MASONRY = ["pet_id", "name", "description", "image_url"]
PET_INFO_DETAIL_ATTRIBUTES = "(pet_id, pet_type, name, age, " \
                             "breed, gender, color, maturity_size, " \
                             "fur_length, vaccinated, sterilized, health, " \
                             "quantity, fee, shop, description)"


def get_json_pet_info_detail(content_tuple):
    result = {}
    for index, content in enumerate(content_tuple):
        result[PET_INFO_DETAIL_MYSQL[index]] = content
    result["image_url"] = "./data/image/" + str(result["pet_id"]) + "-1.jpg"
    return result


def get_json_pet_info_masonry(content_tuple):
    temp = {}
    for index, content in enumerate(content_tuple):
        temp[PET_INFO_DETAIL_MYSQL[index]] = content
    temp["image_url"] = "./data/image/" + str(temp["pet_id"]) + "-1.jpg"
    result = {}
    for attribute in PET_INFO_MASONRY:
        result[attribute] = temp[attribute]
    return result
