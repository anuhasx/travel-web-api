from vvecon.rest_api.socket import SocketParser
from vvecon.rest_api.utils import Parser, ReqParser
from vvecon.rest_api.utils.Types import str__, int__


class UserParser(Parser, SocketParser):
    """
    All User parsers is being stored here
    """
    boolean = [1, 2]  # 1 - false, 2 - true

    login = ReqParser()
    login.add_arg("email", str__)
    login.add_arg("password", str__)
