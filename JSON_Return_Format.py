JSON_RETURN_FORMAT = ["message", "code", ]


def get_json_format(message, code, type, data):
    ans = {"message": message,
           "code": code,
           "type": type,
           "data": data}
    return ans
