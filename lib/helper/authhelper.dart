import 'package:adil/helper/shared_value_helper.dart';

class AuthHelper {
  setUserData(response, String uname, String password) {
    if (response['result'] == true) {
      is_logged_in.$ = true;
      username.$ = uname;
      pass.$ = password;
      user_id.$ = response['user']["engineer"]["id"];
      name.$ = response['user']['name'];
      loguser_id.$ = response['user']['id'];
      engimage.$ = response['user']["engineer"]["image"];
    }
  }

  clearUserData() {
    is_logged_in.$ = false;
    username.$ = "";
    pass.$ = "";
    user_id.$ = 0;
    name.$ = "";
    loguser_id.$ = 0;
    engimage.$ = "";
  }
}
