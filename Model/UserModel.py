import pytz
from vvecon.rest_api.utils.Model import Model, cover
from vvecon.rest_api.utils.Types import CURSOR, CON, DICT, LIST, BOOL


# -- User Model -- #
class UserModel(Model):
    TIME_ZONE = pytz.timezone('America/New_York')

    @staticmethod
    def parse(dictionary: dict, key: str):
        return dictionary[key] if key in dictionary.keys() else ""

    @cover("failed to login")
    def login(self, cursor: CURSOR, email: str, password: str) -> DICT:
        self.execute(cursor, """
        SELECT *
        FROM students
        WHERE email='{email}' AND password='{password}' AND deleted_at IS NULL
        ORDER BY id DESC 
        LIMIT 1;
        """, {}, {"email": email, "password": password})
        return self.get_row_data(cursor)
