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
MYSQL_MAP = {
    "color": {1: 'Black', 2: "Brown", 3: "Golden", 4: "Yellow", 5: "Cream", 6: "Gray", 7: "White"},
    "maturity_size": {0: "Not Specified", 1: "Small", 2: "Medium", 3: "Large", 4: "Extra Large"},
    "fur_length": {0: "Not Specified", 1: "Short", 2: "Meduim", 3: "Long"},
    "health": {0: "Not Specified", 1: "Healthy", 2: "Minor Injury", 3: "Serious Injury"},
}


def get_json_pet_info_detail(content_tuple):
    result = {}
    for index, content in enumerate(content_tuple):
        result[PET_INFO_DETAIL_MYSQL[index]] = content
    result["image_url"] = "/image/" + str(result["pet_id"]) + "-1.jpg"
    for attribute in MYSQL_MAP:
        result[attribute] = MYSQL_MAP[attribute][result[attribute]]
    return result


def get_json_pet_info_masonry(content_tuple):
    temp = {}
    for index, content in enumerate(content_tuple):
        temp[PET_INFO_DETAIL_MYSQL[index]] = content
    temp["image_url"] = "/image/" + str(temp["pet_id"]) + "-1.jpg"
    result = {}
    for attribute in PET_INFO_MASONRY:
        result[attribute] = temp[attribute]
    return result
